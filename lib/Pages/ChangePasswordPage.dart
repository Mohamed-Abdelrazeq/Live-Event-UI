import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {
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
                "Change Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: height*.035,
                    color: Colors.black
                ),
              ),
              SizedBox(height: height*.04,),
              Column(
                children: [
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
                          hintText: '  Old Password',
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
                  SizedBox(height: height*.02,),
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
                          hintText: '  New Password',
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
                  SizedBox(height: height*.02,),
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
                          hintText: '  Confirm New Password',
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

                ],
              ),
              SizedBox(height: height*.02,),
              Container(
                width: width*.88,
                height: height *.08 ,
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
            ],
          ),
        ),
      ),
    );
  }
}
