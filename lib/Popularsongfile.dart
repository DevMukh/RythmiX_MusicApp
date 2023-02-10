import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class FirstPlayer extends StatelessWidget {
  const FirstPlayer({Key? key}) : super(key: key);
 // final String image;
  //this will use at any where in navigation for a list of a songs
  Container containerfunction(){
    return  Container(
      width: 400,
      height: 350,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black38, Colors.deepOrangeAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
          color: Colors.white10,
          image: DecorationImage(
              image: AssetImage('img/kafi.webp'), fit: BoxFit.fill)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Padding(
          //this one is only for textfield and its colourS
          padding: const EdgeInsets.only(right: 60),
          child: TextField(
            keyboardType: TextInputType.text,
            style: GoogleFonts.arsenal(color: Colors.grey),
            decoration: InputDecoration(
              hintText: 'Pic and Play ',
              hintStyle: GoogleFonts.arsenal(color: Colors.white),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.volumeControlPhone,
                  size: 15,
                )),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         containerfunction(),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesomeIcons.spotify,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'RythmiX',
                            style: GoogleFonts.amita(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )
                        ],
                      ),
                      Row(
                        //This row is use for shufflle revert and fav in one line
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.more_vert_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.transparent),
                                  child: Icon(
                                    Icons.shuffle,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.transparent),
                                  child: Icon(
                                    Icons.play_circle,
                                    color: Colors.orangeAccent,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            // color: Colors.amber,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(24)),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.white54,
                                      Colors.black38,
                                      Colors.orangeAccent
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.bottomRight)),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Kahani Suno 2.0',
                                    style: GoogleFonts.amita(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                                Row(children: [
                                  Icon(
                                    Icons.lyrics,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('Kaifi Khalil top trending',
                                      style: GoogleFonts.amita(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 75,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.more_vert_outlined,
                                        color: Colors.orangeAccent,
                                      ),
                                    ],
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            // color: Colors.amber,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(24)),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.white54,
                                      Colors.black38,
                                      Colors.orangeAccent
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.bottomRight)),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Tere bin 4.0',
                                    style: GoogleFonts.amita(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                                Row(children: [
                                  Icon(
                                    Icons.lyrics,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('Tere bin by kaifi',
                                      style: GoogleFonts.amita(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 140,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.more_vert_outlined,
                                        color: Colors.orangeAccent,
                                      ),
                                    ],
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            // color: Colors.amber,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(24)),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.white54,
                                      Colors.black38,
                                      Colors.orangeAccent
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.bottomRight)),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Tauseep X Mashup',
                                    style: GoogleFonts.amita(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                                Row(children: [
                                  Icon(
                                    Icons.lyrics,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('Kaifi urdu mashup',
                                      style: GoogleFonts.amita(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.more_vert_outlined,
                                        color: Colors.orangeAccent,
                                      ),
                                    ],
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            // color: Colors.amber,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(24)),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.white54,
                                      Colors.black38,
                                      Colors.orangeAccent
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.bottomRight)),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Afsos',
                                    style: GoogleFonts.amita(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                                Row(children: [
                                  Icon(
                                    Icons.lyrics,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('Afsos by kafifi',
                                      style: GoogleFonts.amita(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 155,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.more_vert_outlined,
                                        color: Colors.orangeAccent,
                                      ),
                                    ],
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            // color: Colors.amber,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(24)),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.white54,
                                      Colors.black38,
                                      Colors.orangeAccent
                                    ],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.bottomRight)),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Zolfe Noda\'n ',
                                    style: GoogleFonts.amita(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold)),
                                Row(children: [
                                  Icon(
                                    Icons.lyrics,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('Listen by RytemiX',
                                      style: GoogleFonts.amita(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 125,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.more_vert_outlined,
                                        color: Colors.orangeAccent,
                                      ),
                                    ],
                                  ),
                                ]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
