import 'package:flutter/material.dart';
import 'package:live_events_app/Pages/EventPage.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    @required this.width,
    @required this.height,
    @required this.image,
    @required this.name,
    @required this.location,
    @required this.time,
    @required this.date,
  }) ;

  final double width;
  final double height;
  final String image;
  final String name;
  final String location;
  final String time;
  final String date;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EventPage(image: image, name: name, location: location, time: time, date: date)),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: width*.04,bottom: height*.01,top: height*.01,left: width*.02),
        height: height * .3,
        width: width*.5,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            Stack(
              children:[
                Image(
                  height: height*.18,
                  width: width,
                  fit: BoxFit.contain,
                  image: AssetImage(image),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: width*.01,vertical: height*.002),
                    color: Colors.grey.withOpacity(.5),
                    child: Text(
                        date
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: .12*height,
              width: width*.6,
              padding: EdgeInsets.symmetric(horizontal: width*.04,vertical: height*.01),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * .02,
                            color: Colors.black),
                      ),
                      SizedBox(height: height*.002,),
                      Text(
                        location,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: height * .016,
                            color: Colors.black.withOpacity(.8)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: height*.03,
                            width: height*.03,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('LiveEventsImages/FestivalImages/Asset 1.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            height: height*.03,
                            width: height*.03,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('LiveEventsImages/FestivalImages/Asset 1.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            height: height*.03,
                            width: height*.03,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('LiveEventsImages/FestivalImages/Asset 1.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            height: height*.03,
                            width: height*.03,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('LiveEventsImages/FestivalImages/Asset 1.png'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),

                        ],
                      ),
                      Text(
                        time,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: height * .018,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
