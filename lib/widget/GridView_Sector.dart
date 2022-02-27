import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startupbits/model/DataModel.dart';
import 'package:startupbits/screen/detailScreen.dart';

class SectorGridView extends StatefulWidget {
  Sector? sector;

  SectorGridView({Key? key, required this.sector}) : super(key: key);

  @override
  _SectorGridViewState createState() => _SectorGridViewState();
}

class _SectorGridViewState extends State<SectorGridView> {
  final List<String> sectorList = [
    "Food & Beverages",
    "Mobile & Telecommunications",
    "Environmental Services & Equipment",
    "Software",
    "Internet",
    "Consumer Products & Services",
    "Financial",
    "Industrial",
    "Healthcare",
    "Automotive & Transportation",
    "Electronics",
    "Leisure",
    "Business Products & Services",
    "Energy & Utilities",
    "Computer Hardware & Services",
    "Agriculture",
    "Retail",
    "Risk & Security",
    "Media"
  ];

  Route _createRoute(int index) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        switch (index) {
          case 0:
            return DetailScreen(
              sectorData: widget.sector?.foodBeverages,
            );
          case 1:
            return DetailScreen(
              sectorData: widget.sector?.mobile_Telecommunications,
            );
          case 2:
            return DetailScreen(
              sectorData:
              widget.sector?.environmental_Services_Equipment,
            );
          case 3:
            return DetailScreen(
              sectorData: widget.sector?.software,
            );
          case 4:
            return DetailScreen(
              sectorData: widget.sector?.internet,
            );
          case 5:
            return DetailScreen(
              sectorData: widget.sector?.consumer_Products_Services,
            );
          case 6:
            return DetailScreen(
              sectorData: widget.sector?.financial,
            );
          case 7:
            return DetailScreen(
              sectorData: widget.sector?.industrial,
            );
          case 8:
            return DetailScreen(
              sectorData: widget.sector?.healthcare,
            );
          case 9:
            return DetailScreen(
              sectorData: widget.sector?.automotive_Transportation,
            );
          case 10:
            return DetailScreen(
              sectorData: widget.sector?.electronics,
            );
          case 11:
            return DetailScreen(
              sectorData: widget.sector?.leisure,
            );
          case 12:
            return DetailScreen(
              sectorData: widget.sector?.business_Products_Services,
            );
          case 13:
            return DetailScreen(
              sectorData: widget.sector?.energy_Utilities,
            );
          case 14:
            return DetailScreen(
              sectorData: widget.sector?.computer_Hardware_Services,
            );
          case 15:
            return DetailScreen(
              sectorData: widget.sector?.agriculture,
            );
          case 16:
            return DetailScreen(
              sectorData: widget.sector?.retail,
            );
          case 17:
            return DetailScreen(
              sectorData: widget.sector?.risk_Security,
            );
          case 18:
            return DetailScreen(
              sectorData: widget.sector?.media,
            );
        }
        return DetailScreen(
          sectorData: widget.sector?.media,
        );
      },

      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: sectorList.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              Navigator.of(context).push(_createRoute(index));
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //
              //   return DetailScreen(
              //     sectorData: widget.sector?.software,
              //   );
              // }));
            });
          },
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            color: Color(0xff212121),
            // color: Color(0xff262626),
            // color: Color(0xff344955),
            child: Center(
              child: Text(
                "${sectorList[index]}",
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  "Baskervville",
                  fontSize: 14,
                  color: Colors.white
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
