import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Popularsongfile.dart';

class Listcodereuse extends StatelessWidget {
  const Listcodereuse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: 200,
          decoration: BoxDecoration(
             gradient: LinearGradient(colors: [Colors.black87,Colors.orangeAccent],begin: Alignment.bottomLeft,end: Alignment.bottomRight),

          borderRadius:
                  BorderRadius.circular(20), //this radius for full card
              color: Colors.black45 //color for a card
              ),
          //cliprrect class in a flutter that clips its child using a rectangle extra r is for rounded
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(10), //this radius is for pic rounding
                child: Image.asset(
                  'img/musicback.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Popular',
                    style: GoogleFonts.aladin(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'List of all popular songs',
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>FirstPlayer()));
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
