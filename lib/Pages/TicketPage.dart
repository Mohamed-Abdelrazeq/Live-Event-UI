import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {

  Ticket({
    @required this.image,
    @required this.name,
  });

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*.07,vertical: height*.04),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,size: height*.03,color: Colors.black,),
                  ),
                  Text(
                    'My Ticket',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: height*.03,
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.notifications_none,size: height*.03,color: Colors.black,),
                ],
              ),
              SizedBox(height: height*.05,),
              Container(
                width: width,
                height: height*.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Container(
                      height: height*.25,
                      width: width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                        )
                      ),
                    ),
                    Container(
                      height: height*.35,
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: width*.07,vertical: height*.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: height*.028
                                ),
                              ),
                              Icon(Icons.videocam,color: Colors.black,size: height*.03,)
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Date',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: height*.018
                                      ),
                                    ),
                                    SizedBox(height: height*.005,),
                                    Text(
                                      'Fri, Jan 12, 2020',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: height*.02
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Time',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.w500,
                                          fontSize: height*.018
                                      ),
                                    ),
                                    SizedBox(height: height*.005,),
                                    Text(
                                      '9:30 PM',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: height*.02
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Place',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontSize: height*.018
                                ),
                              ),
                              SizedBox(height: height*.005,),
                              Text(
                                'Padma Complex\n36 Guid Streetm London, UK',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: height*.02
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Organizer',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontSize: height*.02
                                ),
                              ),
                              Text(
                                'NYSW LIVE',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: height*.02
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*.005,),
              Container(
                width: width,
                height: height*.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('LiveEventsImages/barcode.png'),
                      fit: BoxFit.cover,
                      width: width,
                      height: height*.08,
                    ),
                    SizedBox(height: height*.01,),
                    Text(
                      '93565115789892565994',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: height*.018
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
