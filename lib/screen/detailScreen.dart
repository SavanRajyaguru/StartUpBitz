import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startupbits/model/DataModel.dart';
import 'package:startupbits/screen/ConpanyINFO.dart';
import 'package:url_launcher/link.dart';

class DetailScreen extends StatefulWidget {
  List? sectorData;

  DetailScreen({Key? key, required this.sectorData}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final controller = TextEditingController();
  dynamic newData = [];
  @override
  void initState() {
    // TODO: implement initState
    newData = widget.sectorData;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var len = newData?.length;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Companies",
          style: GoogleFonts.getFont(
            'Bubblegum Sans',
            fontSize: 28,
            // color: Color(0xffb575757),
            decoration: TextDecoration.none,
            color: Colors.white
          ),
        ),
        backgroundColor: Color(0xff262626),
      ),
      body: Container(
        color: Color(0xff131313),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: ListView.builder(
                  itemCount: len! + 1,
                  itemBuilder: (context, index) {
                    return index == 0
                        ? SearchBar(index)
                        : _listItem(index-1, size);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SearchBar(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff262626),
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: TextField(
          controller: controller,
          cursorColor: Colors.white,
          onChanged: (text){
            text = text.toLowerCase();
            setState(() {
              newData = widget.sectorData?.where((e) {
                var title = e.companyName.toLowerCase();
                return title.contains(text);
              }).toList();
            });
          },
          style: GoogleFonts.getFont("Baskervville",color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12.0),
            hintText: "Search for Companies",
            hintStyle: GoogleFonts.getFont("Baskervville",color: Colors.white54),
            prefixIcon: Icon(Icons.search, color: Colors.white,),
            suffixIcon: IconButton(
              icon: Icon(Icons.clear_outlined, color: Colors.white,),
              onPressed: (){
                setState(() {
                  if(controller.text.isNotEmpty){
                    FocusScope.of(context).unfocus();
                    controller.clear();
                    newData = widget.sectorData;
                  }
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  Route _createRoute(int index) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          CompanyInfo(
            comInfo: newData,
            index: index,
          ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  _listItem (int index, Size size){
    return Container(
      height: size.height / 4.5,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
        color: Color(0xff212121),
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: 10.0, vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.getFont("Baskervville",
                        fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                    text: "${newData![index].companyName}",
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Link(
                  uri: Uri.parse('${widget.sectorData![index].url}'),
                  builder: (context, link) => GestureDetector(
                    onTap: link,
                    child: Text(
                      "${newData![index].url}",
                      style: GoogleFonts.getFont("Baskervville",
                          fontSize: 14, color: Colors.blue),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: RichText(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    style: GoogleFonts.getFont("Baskervville",
                        fontSize: 15,
                        color: Colors.white60),
                    text: "${newData![index].description}",
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(_createRoute(index));
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => _createRoute(index),
                    //     )
                    // );
                  },
                  child: Text(
                    "show more",
                    style: GoogleFonts.getFont("Baskervville",
                        fontSize: 14, color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
