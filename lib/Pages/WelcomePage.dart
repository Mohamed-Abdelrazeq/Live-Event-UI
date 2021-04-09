import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: width,
              height: height *.1 ,
              padding: EdgeInsets.only(left: width*.07,right: width*.07,top: height*.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: AssetImage('LiveEventsImages/Logo.png'),
                    width: width*.12,
                  ),
                  InkWell(
                    onTap: (){
                      print('Login');
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: height*.025,
                        color: Colors.black
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height*.02,),
            Container(
              width: width,
              height: height *.46 ,
              padding: EdgeInsets.symmetric(horizontal: width*.07),
              child: Image(
                image: AssetImage('LiveEventsImages/FestivalImages/Asset 5.png'),
              ),
            ),
            Container(
              width: width,
              height: height*.25,
              padding: EdgeInsets.symmetric(horizontal: width*.07),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Let's Get\nStarted",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: height*.08,

                    ),
                  ),
                  Text(
                    "Everything work better together",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: height*.02,
                      color: Colors.black45
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height*.02,),
            Container(
              width: width,
              height: height *.15 ,
              padding: EdgeInsets.symmetric(horizontal: width*.07,vertical: height*.035),
              child: TextButton(
                style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(height*.1),

                      ),
                 ),
                ),
                onPressed: (){
                  print('button pressed');
                  Navigator.pushNamed(context, '/register');
                },
                child: Text(
                  'Sign up',
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
    );
  }
}
