import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.movieName, required this.url});

  final String movieName;
  final String url;

  @override
  State<DetailsPage> createState() => _DetailsPage();
}

class _DetailsPage extends State<DetailsPage> {
  String? description;

  @override
  void initState() {
    super.initState();
    if (widget.movieName == "Moana 2") {
      description =
          "“Moana 2” reunites Moana and Maui three years later for an expansive new voyage alongside a crew of unlikely seafarers. After receiving an unexpected call from her wayfinding ancestors, Moana must journey to the far seas of Oceania and into dangerous, long-lost waters for an adventure unlike anything she's ever faced.";
    } else if (widget.movieName == "CHANG-CHI") {
      description = "On July 6, 2023, Simu Liu revealed that the film was being continually delayed and that it was now expected to release after an Avengers film, as Cretton's priority was to direct Avengers: The Kang Dynasty.[2] Cretton then dropped out of directing The Kang Dynasty in November 2023,[3] before its cancellation in July 2024.[4]";
    } else {
      description = 'venom, the poisonous secretion of an animal, produced by specialized glands that are often associated with spines, teeth, stings, or other piercing devices. The venom apparatus may be primarily for killing or paralyzing prey or may be a purely defensive adaptation.';
    }
  }

  Future<void> _launchURL(String url) async {
    try {
      final Uri uri = Uri.parse(url); // Parse the URL
      if (await canLaunchUrl(uri)) {
        await launchUrl(
          uri,
          mode: LaunchMode.platformDefault, // Opens in YouTube app or browser
        );
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      // Print the error to the console
      print('Error launching URL $url: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text(widget.movieName),
      // ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: ClipRRect(
                child: Image.network(
                  widget.url,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [Colors.black, Colors.transparent])),
              // child: Text(widget.movieName, style: TextStyle(color: Colors.white),),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              height: 300,
              bottom: 0,
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 200,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            String? url;
                            if (widget.movieName == "Moana 2") {
                              url =
                                  'https://www.youtube.com/watch?v=hDZ7y8RP5HE';
                            } else if (widget.movieName == "CHANG-CHI") {
                              url =
                                  'https://www.youtube.com/watch?v=8YjFbMbfXaQ';
                            } else {
                              url =
                                  'https://www.youtube.com/watch?v=-FmWuCgJmxo';
                            }
                            _launchURL(url);
                            // print(url);
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.orange)),
                          child: Text(
                            "See The Trailer",
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                          ),
                        ),
                      ),
                      Container(
                        height: 400,
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          description!,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              height: 60,
              top: 100,
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4), // Shadow color
                        blurRadius: 10, // Spread of the shadow
                        spreadRadius: 4, // How much the shadow spreads
                        offset: Offset(4, 4), // X and Y position of the shadow
                      ),
                    ],
                  ),
                  child: Text(
                    widget.movieName,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
