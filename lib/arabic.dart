import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ArabicMusic extends StatelessWidget {
  const ArabicMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.black87,Colors.orangeAccent],begin: Alignment.bottomLeft,end: Alignment.bottomRight),

              borderRadius: BorderRadius.circular(
                  20), //this radius for full card
              color: Colors.black45 //color for a card
          ),
          //cliprrect class in a flutter that clips its child using a rectangle extra r is for rounded
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                    10), //this radius is for pic rounding
                child: Image.asset('img/cokestudio1.jpg'),
              ),
              // SizedBox(
              //   height: 5,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Coke Studio',
                    style: GoogleFonts.aladin(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'New released coke studio songs',
                    style: GoogleFonts.aladin(
                        fontSize: 14, color: Colors.blueGrey),
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'watched',
                    style: GoogleFonts.macondo(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Container(
                        color: Colors.orange,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FifthPlayer()));
                    },

                    style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                            size: 28,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                            size: 28,
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
class FifthPlayer extends StatelessWidget {
  const  FifthPlayer({Key? key}) : super(key: key);
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
              image: AssetImage('img/coke.jpg'), fit: BoxFit.fill)),
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
                                Text('Tajdar-E-Haram',
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
                                  Text('Atif Aslam',
                                      style: GoogleFonts.amita(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 160,
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
                                Text('Afreen Afreen',
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
                                  Text('Rahat and Momina',
                                      style: GoogleFonts.amita(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 90,
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
                                Text('Tera Woh Pyar',
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
                                  Text('Shuja Haider',
                                      style: GoogleFonts.amita(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 137,
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
                                Text('Aaj Jaane Ki Zid Na Karo',
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
                                  Text('Sohail Rana',
                                      style: GoogleFonts.amita(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 143,
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
                                Text('Par Chanaa De',
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
                                  Text('Shilpa Rao, Noori.',
                                      style: GoogleFonts.amita(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    width: 103,
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
