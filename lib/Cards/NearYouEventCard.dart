import 'package:flutter/material.dart';
import 'package:live_events_app/Pages/EventPage.dart';

class NearYouEventCard extends StatelessWidget {
  const NearYouEventCard({
    @required this.width,
    @required this.height,
    @required this.image,
    @required this.name,
    @required this.address,
    @required this.time,
    this.func,
  });

  final double width;
  final double height;
  final String image;
  final String name;
  final String address;
  final String time;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EventPage(image: image, name: name, location: address, time: time, date: "5th July, 2020")),
        );
      },
      child: Container(
        height: height*.12,
        margin: EdgeInsets.only(bottom: height*.02),
        child: Row(
          children: [
            Container(
              width: width*.24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*.05),
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: width*.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: height*.022,
                              color: Colors.black
                          ),
                        ),
                        Text(
                          address,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: height*.02,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Text(
                      time,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: height*.02,
                          color: Colors.black
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
