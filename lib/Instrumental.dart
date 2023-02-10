import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Instrumental extends StatelessWidget {
  const Instrumental({Key? key}) : super(key: key);

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
                child: Image.asset('img/inst.jpg'),
              ),
              SizedBox(
                height: 2.5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Instrumental',
                    style: GoogleFonts.aladin(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Soulful instrumental songs',
                    style: GoogleFonts.aladin(
                        fontSize: 14, color: Colors.blueGrey),
                  )
                ],
              ),
              SizedBox(
                height: 2.3,
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
                      //we can change on tap to go instrumental songs
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPlayer()));
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
class SecondPlayer extends StatelessWidget {
  const SecondPlayer({Key? key}) : super(key: key);
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
              image: AssetImage('img/sufidance.jpg'), fit: BoxFit.fill)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body:
        Column(
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
                                  Text('Shahbaz Qalandar Laal',
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
                                      width: 5,
                                    ),
                                    Text('Rahat fateh Ali Khan',
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
                                  Text('Haye O Rabba',
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
                                    Text('Singer Rashma',
                                        style: GoogleFonts.amita(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 138,
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
                                  Text('Ban Gai Bat',
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
                                    Text('Sabri Brothers',
                                        style: GoogleFonts.amita(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 145,
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
                                  Text('Jaane Ya Ali ',
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
                                    Text('Rahat Fateh Ali khan',
                                        style: GoogleFonts.amita(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 97,
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
                                  Text('Yaar Da Makan',
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
                                    Text('Rahat Fateh Ali Khan',
                                        style: GoogleFonts.amita(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 95,
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
      ),

    );
  }
}
