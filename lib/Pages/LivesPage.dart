import 'package:flutter/material.dart';
import 'package:live_events_app/Cards/LiveEventCard.dart';

import 'LivePage.dart';

class LivesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*.07),
        child: ListView(
          children: [
            SizedBox(height: height*.05,),
            Text(
              "Scheduled\nLive Streams",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: height*.035,
                color: Colors.black
              ),
            ),
            SizedBox(height: height*.04,),
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                       Radius.circular(500),
                    ),
                    borderSide: BorderSide(
                        color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(500),
                    ),
                    borderSide: BorderSide(
                        color:
                        Colors.black54
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(500),
                    ),
                    borderSide: BorderSide(
                        color:
                        Colors.black54
                    ),
                  ),
                  focusColor: Colors.black,
                  hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: width * .04,
                      fontWeight: FontWeight.w300
                  )),
            ),
            SizedBox(height: height*.04,),
            Column(
              children: [
                LiveEventCard(width: width, height: height,time: '10:00 AM - 12:00 PM' ,address:'56 Jiuily Street,\nLondon UK',name: "Live Event 1",image: "LiveEventsImages/RealImages/1.jpeg",func: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Live()),
                  );
    },),
                LiveEventCard(width: width, height: height,time: '5:00 AM - 1:00 PM' ,address:'57 Jiuily Street,\nLondon UK',name: "Live Event 2",image: "LiveEventsImages/RealImages/2.jpeg",  func: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Live()),
                  );
    },),
                LiveEventCard(width: width, height: height,time: '12:00 AM - 2:00 PM' ,address:'58 Jiuily Street,\nLondon UK',name: "Live Event 3",image: "LiveEventsImages/RealImages/3.jpeg", func: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Live()),
                  );
    },),
                LiveEventCard(width: width, height: height,time: '7:00 AM - 7:00 PM' ,address:'59 Jiuily Street,\nLondon UK',name: "Live Event 4",image: "LiveEventsImages/RealImages/4.jpeg",  func: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Live()),
                  );
    },),
                LiveEventCard(width: width, height: height,time: '2:00 AM - 4:00 PM' ,address:'60 Jiuily Street,\nLondon UK',name: "Live Event 5",image: "LiveEventsImages/RealImages/5.jpeg",  func: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Live()),
                  );
                },),
              ],
            )
          ],
        ),
      ),
    );
  }
}


