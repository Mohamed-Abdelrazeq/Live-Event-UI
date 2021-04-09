import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width*.07),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height*.05,),
          Text(
            "Settings",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: height*.035,
                color: Colors.black
            ),
          ),
          SizedBox(height: height*.04,),
          Container(
            height: height*.25,
            width: width,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height*.13,
                  width: height*.13,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.96),
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: Icon(Icons.image,color: Colors.black12,size: height*.05,)),
                ),
                Column(
                  children: [
                    Text(
                      "Demo Clint Update",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: height*.025,
                          color: Colors.white
                      ),
                    ),
                    Text(
                      "clint@demo.com",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: height*.02,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height*.01,),
              ],
            ),
          ),
          SizedBox(height: height*.04,),
          Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/details');
                },
                child: Container(
                  height: height*.06,
                  width: width,
                  child: Row(
                    children: [
                      Icon(Icons.account_circle,color: Colors.black54,size: height*.04,),
                      SizedBox(width: width*.04,),
                      Text(
                        "Update Details",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: height*.022,
                            color: Colors.black
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,color: Colors.black54,size: height*.03,),

                    ],
                  ),
                ),
              ),
              SizedBox(height: height*.01,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/password');
                },
                child: Container(
                  height: height*.06,
                  width: width,
                  child: Row(
                    children: [
                      Icon(Icons.lock,color: Colors.black54,size: height*.04,),
                      SizedBox(width: width*.04,),
                      Text(
                        "Change Password",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: height*.022,
                            color: Colors.black
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,color: Colors.black54,size: height*.03,),

                    ],
                  ),
                ),
              ),
              SizedBox(height: height*.01,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/wallet');
                },
                child: Container(
                  height: height*.06,
                  width: width,
                  child: Row(
                    children: [
                      Icon(Icons.account_balance_wallet,color: Colors.black54,size: height*.04,),
                      SizedBox(width: width*.04,),
                      Text(
                        "Wallet",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: height*.022,
                            color: Colors.black
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios,color: Colors.black54,size: height*.03,),

                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
