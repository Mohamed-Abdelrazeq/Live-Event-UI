import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_events_app/Cards/NearYouEventCard.dart';
import 'package:live_events_app/Cards/PopularEventCard.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool seeAllNearYou = false;
  bool seeAllPopular = false;
  var _myHome ;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    Widget mainHome = ListView(
      children: [
        Container(
          height: height * .1,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.menu,
                color: Colors.black,
                size: height * .03,
              ),
              Text(
                "Events",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: height * .03,
                    color: Colors.black),
              ),
              Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: height * .03,
              ),
            ],
          ),
        ),
        Text(
          "Join with",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: height * .03,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: height * .01,
        ),
        Text(
          "upcoming events.",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: height * .03,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: height * .03,
        ),
        Container(
          height: height * .07,
          padding: EdgeInsets.symmetric(horizontal: width * .01),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0),
                        ),
                      ),
                      focusColor: Colors.black,
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: width * .04,
                          fontWeight: FontWeight.w300)),
                ),
              ),
              Container(
                height: height * .06,
                width: height * .06,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.settings_input_component_sharp,
                  color: Colors.white,
                  size: height * .025,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: height * .03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Popular",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: height * .03,
                  color: Colors.black),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  seeAllPopular = true;

                });
              },
              child: Text(
                "see all",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height * .02,
                    color: Colors.black.withOpacity(.7)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * .02,
        ),
        Container(
          height: height * .32,
          width: width,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              PopularCard(
                width: width,
                height: height,
                time: "9:00 PM",
                date: "24th July, 2020",
                name: "Holi Festival, Event",
                image: 'LiveEventsImages/FestivalImages/Asset 1.png',
                location: "Saint Clod, NY",
              ),
              PopularCard(
                width: width,
                height: height,
                time: "7:00 PM",
                date: "22th July, 2020",
                name: "New Year, Event",
                image: 'LiveEventsImages/FestivalImages/Asset 2.png',
                location: "New York",
              ),
              PopularCard(
                width: width,
                height: height,
                time: "12:00 PM",
                date: "2nd July, 2020",
                name: "Colors Festival, Event",
                image: 'LiveEventsImages/FestivalImages/Asset 3.png',
                location: "London",
              ),
              PopularCard(
                width: width,
                height: height,
                time: "5:00 PM",
                date: "1st July, 2020",
                name: "Birth Day, Event",
                image: 'LiveEventsImages/FestivalImages/Asset 4.png',
                location: "Central Park",
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Near you",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: height * .03,
                  color: Colors.black),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  seeAllNearYou = true;
                });
              },
              child: Text(
                "see all",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height * .02,
                    color: Colors.black.withOpacity(.7)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: height * .02,
        ),
        Column(
          children: [
            NearYouEventCard(
                width: width,
                height: height,
                func: () {
                  //   Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Live()),
                  // );
                },
                image: 'LiveEventsImages/FestivalImages/Asset 4.png',
                name: "World Children\'s Day",
                address: 'Saint Cloud, NY',
                time: "5:00 PM"),
            NearYouEventCard(
                width: width,
                height: height,
                func: () {
                  //   Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Live()),
                  // );
                },
                image: 'LiveEventsImages/FestivalImages/Asset 3.png',
                name: "Holi Festival",
                address: 'Las Vegas',
                time: "7:00 PM"),
            NearYouEventCard(
                width: width,
                height: height,
                func: () {
                  //   Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Live()),
                  // );
                },
                image: 'LiveEventsImages/FestivalImages/Asset 5.png',
                name: "New Year",
                address: 'Paris',
                time: "2:00 PM"),
            NearYouEventCard(
                width: width,
                height: height,
                func: () {
                  //   Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Live()),
                  // );
                },
                image: 'LiveEventsImages/FestivalImages/Asset 1.png',
                name: "Birthday Party",
                address: 'Miami',
                time: "9:00 PM"),
          ],
        )
      ],
    );
    Widget secondaryHome = ListView(
      children: [
        Container(
          height: height * .1,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    seeAllNearYou = false;
                    seeAllPopular = false;
                  });
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: height * .03,
                ),
              ),
              Text(
                "Events",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: height * .03,
                    color: Colors.black),
              ),
              Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: height * .03,
              ),
            ],
          ),
        ),
        Text(
          "Join with",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: height * .03,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: height * .01,
        ),
        Text(
          "upcoming events.",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: height * .03,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: height * .03,
        ),
        Container(
          height: height*.1,
          width: width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              DayCard(height: height, width: width,day: 'Sat',num: '1',),
              DayCard(height: height, width: width,day: 'Mon',num: '2',),
              Container(
                height: height*.08,
                width: width*.15,
                margin: EdgeInsets.symmetric(horizontal: width*.015),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.white)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Tue',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: height*.02,
                      ),
                    ),
                    Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: height*.03,
                      ),
                    ),
                  ],
                ),
              ),
              DayCard(height: height, width: width,day: 'Wen',num: '4',),
              DayCard(height: height, width: width,day: 'Tha',num: '5',),
              DayCard(height: height, width: width,day: 'Fri',num: '6',),
              DayCard(height: height, width: width,day: 'Sun',num: '7',),
            ],
          ),
        ),
        SizedBox(
          height: height * .03,
        ),
        Text(
          "Near you",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: height * .03,
              color: Colors.black),
        ),
        SizedBox(
          height: height * .02,
        ),
        Column(
          children: [
            NearYouEventCard(
                width: width,
                height: height,
                func: () {
                  //   Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Live()),
                  // );
                },
                image: 'LiveEventsImages/FestivalImages/Asset 4.png',
                name: "World Children\'s Day",
                address: 'Saint Cloud, NY',
                time: "5:00 PM"),
            NearYouEventCard(
                width: width,
                height: height,
                func: () {
                  //   Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Live()),
                  // );
                },
                image: 'LiveEventsImages/FestivalImages/Asset 3.png',
                name: "Holi Festival",
                address: 'Las Vegas',
                time: "7:00 PM"),
            NearYouEventCard(
                width: width,
                height: height,
                func: () {
                  //   Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Live()),
                  // );
                },
                image: 'LiveEventsImages/FestivalImages/Asset 5.png',
                name: "New Year",
                address: 'Paris',
                time: "2:00 PM"),
            NearYouEventCard(
                width: width,
                height: height,
                func: () {
                  //   Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Live()),
                  // );
                },
                image: 'LiveEventsImages/FestivalImages/Asset 1.png',
                name: "Birthday Party",
                address: 'Miami',
                time: "9:00 PM"),
          ],
        )
      ],
    );

    if(seeAllPopular || seeAllNearYou){
      setState(() {
        _myHome = secondaryHome;

      });
    }else{
      setState(() {
        _myHome = mainHome;
      });
    }

    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: width * .07,),
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            child: _myHome,
          ),
        ),
      ),
    );
  }

}

class DayCard extends StatelessWidget {
  const DayCard({
    @required this.height,
    @required this.width,
    @required this.day,
    @required this.num,
  });

  final double height;
  final double width;
  final String day;
  final String num;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height*.08,
      width: width*.15,
      margin: EdgeInsets.symmetric(horizontal: width*.015),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.black)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            day,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: height*.02,
            ),
          ),
          Text(
            num,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: height*.03,
            ),
          ),
        ],
      ),
    );
  }
}

