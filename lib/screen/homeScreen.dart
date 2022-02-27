import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startupbits/model/DataModel.dart';
import 'package:startupbits/widget/GridView_Sector.dart';

class HomeScreen extends StatefulWidget {
  final StartupData data;

  HomeScreen({Key? key, required this.data}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void SortAllData() {
    widget.data.sector?.foodBeverages!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.mobile_Telecommunications!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.environmental_Services_Equipment!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.software!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.internet!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.consumer_Products_Services!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.financial!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.industrial!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.healthcare!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.automotive_Transportation!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.electronics!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.leisure!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.business_Products_Services!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.energy_Utilities!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.computer_Hardware_Services!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.agriculture!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.retail!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.risk_Security!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
    widget.data.sector?.media!
        .sort((a, b) => b.totalFunding.compareTo(a.totalFunding));
  }

  @override
  void initState() {
    // TODO: implement initState
    // TotalFundingSort funds = new TotalFundingSort(data: widget.data.sector);
    SortAllData();
  }

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffF5591F), Color(0xffF2861E)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xff262626),
        centerTitle: true,
        title: Text(
          "StartUpBitz",
          style: GoogleFonts.getFont(
            'Bubblegum Sans',
            letterSpacing: 1.5,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            // color: Color(0xffb575757),
            decoration: TextDecoration.none,
            foreground: Paint()..shader = linearGradient,
          ),
        ),
      ),
      body: Container(
        color: Color(0xff131313),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.topRight,
        //       colors: [
        //         Color(0xffF5591F),
        //         Color(0xffF2861E),
        //       ]),
        // ),
        child: Container(
          height: mq.size.height,
          padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          // width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SearchBar(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "Sector",
                  style: GoogleFonts.getFont("Baskervville",
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Flexible(child: SectorGridView(sector: widget.data.sector)),
            ],
          ),
        ),
      ),
    );
  }
  // void search(String query){
  //   final sec = widget.data.sector?.internet?.where((e) {
  //     final title = e.companyName;
  //     final low = query.toLowerCase();
  //
  //     return title!.contains(low);
  //   }).toList();
  //
  //   setState(() {
  //     this.query = query;
  //   });
  // }
}