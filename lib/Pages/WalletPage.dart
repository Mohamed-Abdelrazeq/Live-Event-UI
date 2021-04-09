import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*.07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height*.05,),
              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios,color: Colors.black,size: height*.03,)),
              SizedBox(height: height*.04,),
              Text(
                "Wallet",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: height*.04,
                    color: Colors.black
                ),
              ),
              SizedBox(height: height*.04,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width*.05,vertical: height*.02),
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current Balance",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: height*.022,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(height: height*.01,),
                    Text(
                      "\$ 0.00",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: height*.03,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(height: height*.02,),
                    Text(
                      "Last Update At",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: height*.022,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(height: height*.01,),
                    Text(
                      "1 Week ago",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: height*.03,
                          color: Colors.black
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*.02,),
              InkWell(
                onTap: (){
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: height*.3,
                        padding: EdgeInsets.symmetric(horizontal: width*.07),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Top-Up Wallet",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: height*.03,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              "Please enter your amount to top",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: height*.02,
                                  color: Colors.black
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.1),

                                  borderRadius: BorderRadius.circular(500)
                              ),
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    hintText: '  Amount',
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
                                    focusColor: Colors.black,
                                    hintStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: width * .04,
                                        fontWeight: FontWeight.w300
                                    )),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: width*.2,
                                  height: height *.05 ,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(color: Colors.black)

                                  ),
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: height*.02,
                                          color: Colors.black
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: width*.02,),
                                Container(
                                  width: width*.2,
                                  height: height *.05 ,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(25)
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Proceed",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: height*.02,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      );},);
                },
                child: Container(
                  width: width*.88,
                  height: height *.07 ,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Center(
                    child: Text(
                      "Update",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: height*.025,
                          color: Colors.white
                      ),
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

