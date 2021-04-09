import 'package:flutter/material.dart';
import 'package:live_events_app/Cards/LiveEventCard.dart';

import 'TicketPage.dart';

class TicketsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*.07),
        child: ListView(
          children: [
            SizedBox(height: height*.06,),
            Text(
              "My Tickets",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: height*.035,
                  color: Colors.black
              ),
            ),
            SizedBox(height: height*.06,),
            Column(
              children: [
                LiveEventCard(width: width, height: height,func: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ticket(name: "Live Event 1",image: "LiveEventsImages/FestivalImages/Asset 1.png",)),
                  );
                },time: '10:00 AM - 12:00 PM' ,address:'56 Jiuily Street,\nLondon UK',name: "Live Event 1",image: "LiveEventsImages/FestivalImages/Asset 1.png",),
                LiveEventCard(width: width, height: height,func: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ticket(name: "Live Event 2",image: "LiveEventsImages/FestivalImages/Asset 2.png",)),
                  );
                },time: '5:00 AM - 1:00 PM' ,address:'57 Jiuily Street,\nLondon UK',name: "Live Event 2",image: "LiveEventsImages/FestivalImages/Asset 2.png",),
                LiveEventCard(width: width, height: height,func: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Ticket(name: "Live Event 3",image: "LiveEventsImages/FestivalImages/Asset 3.png")),
                  );
                },time: '12:00 AM - 2:00 PM' ,address:'58 Jiuily Street,\nLondon UK',name: "Live Event 3",image: "LiveEventsImages/FestivalImages/Asset 3.png",),
              ],
            )
          ],
        ),
      ),
    );
  }
}

