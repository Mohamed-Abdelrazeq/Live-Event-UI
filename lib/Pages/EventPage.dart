import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
   EventPage({
    @required this.image,
    @required this.name,
    @required this.location,
    @required this.time,
    @required this.date,
  }) ;


  final String image;
  final String name;
  final String location;
  final String time;
  final String date;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*.07,),
          child: Stack(
            children: [
              ListView(
              children: [
                Container(
                  height: height * .1,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: height * .03,
                        ),
                      ),
                      Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                        size: height * .03,
                      ),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage(image),
                  height: height*.4,
                  width: width,
                ),
                SizedBox(height: height*.02,),
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: height*.03,
                    color: Colors.black
                  ),
                ),
                SizedBox(height: height*.01,),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.black,size: height*.03,),
                    SizedBox(width: width*.02,),
                    Text(
                      location,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: height*.02,
                          color: Colors.black.withOpacity(.5)
                      ),
                    )
                  ],
                ),
                SizedBox(height: height*.04,),
                Text(
                  "Participants",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: height*.025,
                      color: Colors.black
                  ),
                ),
                SizedBox(height: height*.02,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: height*.07,
                      width: height*.07,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('LiveEventsImages/FestivalImages/Asset 1.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Container(
                      height: height*.07,
                      width: height*.07,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('LiveEventsImages/FestivalImages/Asset 1.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Container(
                      height: height*.07,
                      width: height*.07,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('LiveEventsImages/FestivalImages/Asset 1.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Container(
                      height: height*.07,
                      width: height*.07,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('LiveEventsImages/FestivalImages/Asset 1.png'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Container(
                      height: height*.07,
                      width: height*.07,
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
                SizedBox(height: height*.04,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.timer_outlined,color: Colors.black,size: height*.023,),
                        SizedBox(width: width*.02,),
                        Text(
                          time,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: height*.018
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today,color: Colors.black,size: height*.023,),
                        SizedBox(width: width*.02,),
                        Text(
                          date,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: height*.018
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height*.04,),
                Text(
                  'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes',
                  style: TextStyle(
                    fontSize: height*.02,
                    color: Colors.black.withOpacity(.5),
                    fontWeight: FontWeight.w400,
                    height: 2
                  ),
                ),
                SizedBox(height: height*.12,),
              ],
            ),
              Positioned(
                bottom: height*.02,
                child: Container(
                  height: height*.08,
                  width: width*.86,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(height*.02),

                        ),
                      ),
                    ),
                    onPressed: (){
                      print('go to home');
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Buy Ticket',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: height*.025,
                              color: Colors.white
                          ),
                        ),
                        Text(
                          '\$125',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: height*.025,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
