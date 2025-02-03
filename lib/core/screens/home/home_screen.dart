import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/core/screens/details/details_screen.dart';
import 'package:shopping/core/screens/details/display_all.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  String _btnClicked = 'popu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                SizedBox(
                    width: double.infinity,
                    height: 80.0,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                            color: Colors.black,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Text(
                                //   "Welcome ",
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontSize: 20.0,
                                //       fontWeight: FontWeight.bold),
                                // ),
                                Text(
                                  "Movies App ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            child: Center(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.notifications_active,
                                      size: 30.0,
                                      color: Colors.white,
                                    ))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: SizedBox(
                            child: Center(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.account_circle,
                                      size: 40.0,
                                      color: Colors.white,
                                    ))),
                          ),
                        )
                      ],
                    )),
                // Buttons Scroll
                Container(
                  height: 70,
                  width: double.infinity,
                  // color: Colors.white,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: SizedBox(
                            height: 60.0,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _btnClicked = "popu";
                                });
                                // print(_btnClicked);
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(_btnClicked == "popu" ? Colors.red : Colors.black),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side:const BorderSide(
                                            color: Color.fromARGB(
                                                255, 68, 58, 58),
                                            width: 1.0,
                                            style: BorderStyle.solid))),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 5, right: 5),
                                    child: const Icon(
                                      Icons.star_rate_rounded,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Popular",
                                    style: GoogleFonts.roboto(
                                      // Replace 'roboto' with your desired font
                                      textStyle: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: SizedBox(
                            height: 60.0,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _btnClicked = "new";
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(_btnClicked == "new" ? Colors.red : Colors.black),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side:const BorderSide(
                                            color: Color.fromARGB(
                                                255, 68, 58, 58),
                                            width: 1.0,
                                            style: BorderStyle.solid))),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 5, right: 5),
                                    child: const Icon(
                                      Icons.newspaper,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "New ",
                                    style: GoogleFonts.roboto(
                                      // Replace 'roboto' with your desired font
                                      textStyle: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: SizedBox(
                            height: 60.0,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _btnClicked = "trending";
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(_btnClicked == "trending" ? Colors.red : Colors.black),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side:const BorderSide(
                                            color: Color.fromARGB(
                                                255, 68, 58, 58),
                                            width: 1.0,
                                            style: BorderStyle.solid))),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 5, right: 5),
                                    child: const Icon(
                                      Icons.trending_up,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Trending",
                                    style: GoogleFonts.roboto(
                                      // Replace 'roboto' with your desired font
                                      textStyle: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: SizedBox(
                            height: 60.0,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _btnClicked = "best";
                                });
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(_btnClicked == "best" ? Colors.red : Colors.black),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: const BorderSide(
                                            color: Color.fromARGB(
                                                255, 68, 58, 58),
                                            width: 1.0,
                                            style: BorderStyle.solid))),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 5, right: 5),
                                    child: const Icon(
                                      Icons.favorite,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Best",
                                    style: GoogleFonts.roboto(
                                      // Replace 'roboto' with your desired font
                                      textStyle: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                //// Display Contains when btn clicked 
                
                Padding(
                  padding:const EdgeInsets.only(top: 20),
                  child: Container(
                  height: 350,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        /// FIRST MOVIE
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const DetailsPage(movieName: "Moana 2",
                            url: "https://lumiere-a.akamaihd.net/v1/images/p_moana2_v3_94b2f083.jpeg",)) );
                          },
                          child: Container(
                          width: 220,
                          height: 350,
                          padding:const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          decoration:const BoxDecoration(
                            // border: Border.all(width: 2, color: Colors.red)
                          ),
                          child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                              child: Image.network(
                              'https://lumiere-a.akamaihd.net/v1/images/p_moana2_v3_94b2f083.jpeg',
                              fit: BoxFit.fill,
                              height: 250,
                              width: double.infinity,
                              
                            ),
                            ),
                            Container(
                              width: double.infinity,
                              // alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: const Color.fromARGB(255, 45, 33, 33)),
                                color: Color.fromARGB(255, 48, 45, 45)
                              ),
                              child: Column(
                                children: [
                                  Text("Moana 2", style: GoogleFonts.italiana(
                                    textStyle: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                  ),),
                                  Text("Animation", style: GoogleFonts.italiana(
                                    textStyle: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold
                                      ),
                                  ),),
                                  Text("Price : \$52.00", style: GoogleFonts.italiana(
                                    textStyle: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold
                                      ),
                                  ),),
                                ],
                              ),
                            )
                          ],
                        ),
                        ),
                        ),
                        // second movie

                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const DetailsPage(movieName: 'CHANG-CHI',
                            url: "https://berkleyspectator.com/wp-content/uploads/2022/01/vgPj2F128qtShMaT9DNa8ODtWUFhqqrFPEUWfTRo-e1642785179405-683x900.jpeg",)));
                          },
                          child: Container(
                          width: 220,
                          height: 350,
                          padding:const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          decoration:const BoxDecoration(
                            // border: Border.all(width: 2, color: Colors.red)
                          ),
                          child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                              child: Image.network(
                              'https://berkleyspectator.com/wp-content/uploads/2022/01/vgPj2F128qtShMaT9DNa8ODtWUFhqqrFPEUWfTRo-e1642785179405-683x900.jpeg',
                              fit: BoxFit.fill,
                              height: 250,
                              width: double.infinity,
                              
                            ),
                            ),
                            Container(
                              width: double.infinity,
                              // alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: const Color.fromARGB(255, 45, 33, 33)),
                                color: Color.fromARGB(255, 48, 45, 45)
                              ),
                              child: Column(
                                children: [
                                  Text("CHANG-CHI", style: GoogleFonts.italiana(
                                    textStyle: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                  ),),
                                  Text("Action", style: GoogleFonts.italiana(
                                    textStyle: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold
                                      ),
                                  ),),
                                  Text("Price : \$33.00", style: GoogleFonts.italiana(
                                    textStyle: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold
                                      ),
                                  ),),
                                ],
                              ),
                            )
                          ],
                        ),
                        ),
                        ),

                        // THIRD MOVIE
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>const DetailsPage(movieName: 'VENOM V2', 
                            url: "https://m.media-amazon.com/images/M/MV5BZDMyYWU4NzItZDY0MC00ODE2LTkyYTMtMzNkNDdmYmFhZDg0XkEyXkFqcGc@._V1_.jpg",)));
                          },
                          child: Container(
                          width: 220,
                          height: 350,
                          padding:const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          decoration:const BoxDecoration(
                            // border: Border.all(width: 2, color: Colors.red)
                          ),
                          child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                              child: Image.network(
                              'https://m.media-amazon.com/images/M/MV5BZDMyYWU4NzItZDY0MC00ODE2LTkyYTMtMzNkNDdmYmFhZDg0XkEyXkFqcGc@._V1_.jpg',
                              fit: BoxFit.fill,
                              height: 250,
                              width: double.infinity,
                              
                            ),
                            ),
                            Container(
                              width: double.infinity,
                              // alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: const Color.fromARGB(255, 45, 33, 33)),
                                color:const Color.fromARGB(255, 48, 45, 45)
                              ),
                              child: Column(
                                children: [
                                  Text("VENOM V2", style: GoogleFonts.italiana(
                                    textStyle: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                  ),),
                                  Text("Action", style: GoogleFonts.italiana(
                                    textStyle: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold
                                      ),
                                  ),),
                                  Text("Price : \$40.00", style: GoogleFonts.italiana(
                                    textStyle: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold
                                      ),
                                  ),),
                                ],
                              ),
                            )
                          ],
                        ),
                        ),
                        )
                        // END THIRD MOVIE
                      ],
                    ),
                  ),
                ),
                ),

                // NEXT SECTION ++++++++++++

                SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding:const EdgeInsets.only(left: 10),
                            child: Text(
                              "Recent",
                              style: GoogleFonts.inter(
                                textStyle : const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                )
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding:const EdgeInsets.only(right: 10),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const DisplayAll()));
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                shadowColor: MaterialStateProperty.all(Colors.white)
                              ),
                              child: Text(
                              "View all",
                              style: GoogleFonts.inter(
                                textStyle : const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                )
                              )
                            ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // END SECTION ++++++++++++

                // RECENT MOVIES

                Container(
                  height: 170,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        // / FIRST RECENT MOVIE
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 140,
                                width: 180,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.network(
                                    'https://hips.hearstapps.com/hmg-prod/images/kids-movies-2020-doolittke-1576597612.jpg?crop=0.8293075684380031xw:1xh;center,top&resize=980:*',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                    opacity: AlwaysStoppedAnimation(0.5),
                                  ),
                                ),
                              ),
                              const Positioned.fill(
                                child: Center(
                                  child: Text(
                                    "dolittle",
                                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // / FIRST RECENT MOVIE
                        // / SECOND RECENT MOVIE
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 140,
                                width: 180,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.network(
                                    'https://lumiere-a.akamaihd.net/v1/images/au_movies_disney_snowwhite_payoff_poster_clean_71dbc047.jpeg',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                    opacity: AlwaysStoppedAnimation(0.5),
                                  ),
                                ),
                              ),
                              const Positioned.fill(
                                child: Center(
                                  child: Text(
                                    "SnowWhite",
                                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // / SECOND RECENT MOVIE
                        // / THIRD RECENT MOVIE
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 140,
                                width: 180,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.network(
                                    'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00384012-rvquewkwzk-portrait.jpg',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                    opacity: AlwaysStoppedAnimation(0.5),
                                  ),
                                ),
                              ),
                              const Positioned.fill(
                                child: Center(
                                  child: Text(
                                    "THANDEL",
                                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // / THIRD RECENT MOVIE
                        // / FORTH RECENT MOVIE
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 140,
                                width: 180,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  child: Image.network(
                                    'https://cdn.marvel.com/content/1x/captainamericabravenewworld_lob_crd_05.jpg',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                    opacity: AlwaysStoppedAnimation(0.5),
                                  ),
                                ),
                              ),
                              const Positioned.fill(
                                
                                child: Center(
                                  child: Text(
                                    "Captain \nAmerica",
                                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // / FORTH RECENT MOVIE
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}