import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';

class CompanyInfo extends StatelessWidget {
  final List? comInfo;
  final int index;

  CompanyInfo({Key? key, required this.comInfo, required this.index})
      : super(key: key);

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffF5591F), Color(0xffF2861E)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff131313),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.getFont("Baskervville",
                                fontSize: 58,
                                // color: Colors.white,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()..shader = linearGradient,
                            ),
                            text: "${comInfo![index].companyName}",
                          ),
                        ),
                      ),
                      // Text(
                      //   "${comInfo![index].totalFunding}M",
                      //   style: GoogleFonts.getFont("Lora",
                      //       fontSize: 20,
                      //       color: Colors.purpleAccent,
                      //       fontWeight: FontWeight.bold),
                      // ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    height: 2.0,
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.link_outlined,
                        color: Colors.blue,
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),                      Flexible(
                        child: Link(
                          uri: Uri.parse('${comInfo![index].url}'),
                          builder: (context, link) => GestureDetector(
                            onTap: link,
                            child: Text(
                              "${comInfo![index].url}",
                              style: GoogleFonts.getFont("Baskervville",
                                  fontSize: 16, color: Colors.blue),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: Card(
                      color: Color(0xff282828),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("About",
                                style: GoogleFonts.getFont("Baskervville",
                                    fontSize: 22,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold)),
                            Container(height: 2.0, color: Colors.grey,),
                            Container(
                              height: 8.0,
                            ),
                            RichText(
                              text: TextSpan(
                                style: GoogleFonts.getFont("Baskervville",
                                    fontSize: 16,
                                    color: Colors.white,
                                ),
                                text: "${comInfo![index].description}",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: Card(
                      color: Color(0xff282828),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Investor",
                                style: GoogleFonts.getFont("Baskervville",
                                    fontSize: 22,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold)),
                            Container(height: 2.0, color: Colors.grey,),
                            Container(
                              height: 8.0,
                            ),
                            RichText(
                              text: TextSpan(
                                style: GoogleFonts.getFont("Baskervville",
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                text: "${comInfo![index].allInvestor}",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    child: Card(
                      color: Color(0xff282828),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Details",
                                style: GoogleFonts.getFont("Baskervville",
                                    fontSize: 22,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold)),
                            Container(height: 2.0, color: Colors.grey,),
                            SizedBox(height: 8.0),
                            RowData("Company ID: ", "${comInfo![index].companyId}"),
                            RowData("Total Funding: ", "\$${comInfo![index].totalFunding}M"),
                            RowData("Latest Funding Round: ", "${comInfo![index].latestFundingRound}"),
                            RowData("Industry: ", "${comInfo![index].industry}"),
                            RowData("Sub Industry: ", "${comInfo![index].subIndustry}"),
                            RowData("City: ", "${comInfo![index].city}"),
                            RowData("Country: ", "${comInfo![index].country}"),
                            RowData("Founded Year: ", "${comInfo![index].foundedYear}"),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget RowData(String attribute, String value){
 return Row(
    children: [
      RichText(
        text: TextSpan(
          style: GoogleFonts.getFont("Baskervville",
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold),
          text: attribute,
        ),
      ),
      SizedBox(
        width: 8.0,
      ),
      Flexible(
        child: RichText(
          text: TextSpan(
            style: GoogleFonts.getFont("Lora",
              fontSize: 18,
              color: Colors.white,
            ),
            text: value,
          ),
        ),
      ),
    ],
  );
}