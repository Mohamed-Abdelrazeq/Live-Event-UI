import 'package:flutter/material.dart';

class Live extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image(
              image: AssetImage('LiveEventsImages/cookingLive.jpg'),
              fit: BoxFit.cover,
              height: height,
              width: width,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:Container(
                width: width,
                height: height*.12,
                child: Row(
                  children: [
                    SizedBox(width: width*.07,),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                            hintText: '    Comment ...',
                            border: OutlineInputBorder(
                              borderRadius:  BorderRadius.all(
                                Radius.circular(500),
                              ),
                              borderSide: BorderSide(
                                  color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:  BorderRadius.all(
                                 Radius.circular(500),
                              ),
                              borderSide: BorderSide(
                                  color:
                                  Colors.white
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(500),
                              ),
                              borderSide: BorderSide(
                                  color:
                                  Colors.white
                              ),
                            ),
                            focusColor: Colors.white,
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: width * .04,
                                fontWeight: FontWeight.w300
                            )),
                      ),
                    ),
                    SizedBox(width: width*.02,),
                    Stack(
                      children:[
                        Icon(Icons.favorite,color: Colors.white,size: height*.06,),
                        Positioned(
                          top: height*.016,
                          left: width*.045,
                          child: Text(
                            '\$',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: height*.02,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                    ],
                    ),
                    SizedBox(width: width*.07,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*.07,vertical: height*.03),
              child: Align(
                alignment: Alignment.topRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: width*.03),
                      height: height*.04,
                      decoration: BoxDecoration(
                          color: Color(0xFFB1AFAF),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.remove_red_eye, color: Colors.white,),
                          SizedBox(width: width*.02,),
                          Text(
                            '150',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: height*.025
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: width*.04,),
                    Container(
                      width: width*.22,
                      height: height*.04,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Text(
                          'Live',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: height*.03
                          ),
                        ),
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
