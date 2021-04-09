import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _switchState = true;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(left: width*.07,right: width*.07,top:height*.05),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                      print('Pop');
                    },
                    child: Container(
                      height: height * .07,
                      width: height * .07,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(height)),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black54,
                        size: height * .025,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      print('Trouble logging in');
                    },
                    child: Text(
                      'Trouble logging in',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: height * .02,
                          color: Colors.black54),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*.08,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: height * .04,
                        color: Colors.black),
                  ),
                  SizedBox(height: height*.01,),
                  Text(
                    'Enter your credentials to continue',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: height * .02,
                        color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(height: height*.08,),
              /////////////////////////
              Text(
                'First Name',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height * .02,
                    color: Colors.black54),
              ),
              TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    icon: Icon(Icons.account_circle,color: Colors.black54,size: height*.03,),
                    hintText: 'Adam',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                          Colors.black54
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                          Colors.black54
                      ),
                    ),
                    focusColor: Colors.black,
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: width * .04,
                        fontWeight: FontWeight.bold
                    )),
              ),
              SizedBox(height: height*.02,),

              Text(
                'Last Name',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height * .02,
                    color: Colors.black54),
              ),
              TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    icon: Icon(Icons.account_circle,color: Colors.black54,size: height*.03,),
                    hintText: 'Mark',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                          Colors.black54
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                          Colors.black54
                      ),
                    ),
                    focusColor: Colors.black,
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: width * .04,
                        fontWeight: FontWeight.bold
                    )),
              ),
              SizedBox(height: height*.02,),

              Text(
                'User Name',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height * .02,
                    color: Colors.black54),
              ),
              TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    icon: Icon(Icons.account_circle,color: Colors.black54,size: height*.03,),
                    hintText: 'Username',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                          Colors.black54
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                          Colors.black54
                      ),
                    ),
                    focusColor: Colors.black,
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: width * .04,
                        fontWeight: FontWeight.bold
                    )),
              ),
              SizedBox(height: height*.02,),

              Text(
                'Email',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height * .02,
                    color: Colors.black54),
              ),
              TextField(
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    icon: Icon(Icons.email_outlined,color: Colors.black54,size: height*.03,),
                    hintText: 'Adam@gmail.com',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                          Colors.black54
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                          Colors.black54
                      ),
                    ),
                    focusColor: Colors.black,
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: width * .04,
                        fontWeight: FontWeight.bold
                    )),
              ),
              SizedBox(height: height*.02,),

              Text(
                'Password',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height * .02,
                    color: Colors.black54),
              ),
              TextField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock_outline_rounded,color: Colors.black54,size: height*.03,),
                    hintText: '123456',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                          Colors.black54
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                          Colors.black54
                      ),
                    ),
                    focusColor: Colors.black,
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: width * .04,
                        fontWeight: FontWeight.bold
                    )),
              ),
              SizedBox(height: height*.02,),

              Text(
                'Repeat Password',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: height * .02,
                    color: Colors.black54),
              ),
              TextField(
                obscureText: true,
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock_outline_rounded,color: Colors.black54,size: height*.03,),
                    hintText: '123456',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                          Colors.black54
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color:
                          Colors.black54
                      ),
                    ),
                    focusColor: Colors.black,
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: width * .04,
                        fontWeight: FontWeight.bold
                    )),
              ),
              SizedBox(height: height*.02,),

              /////////////////////////
              SizedBox(height: height*.06,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Remember me next time',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: height * .025,
                        color: Colors.black),
                  ),
                  Switch(
                    activeColor: Colors.green,
                    value: _switchState,
                    onChanged: (v){
                      print(v);
                      setState(() {
                        _switchState = v;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: height*.06,),
              Container(
                height: height*.08,
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
                    print('go to home');
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: height*.025,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*.04,),
              InkWell(
                onTap: (){
                  print('go to register');
                  Navigator.pushNamed(context, '/login');
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Already have an account',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: height * .02,
                        color: Colors.black54),
                  ),
                ),
              ),
              SizedBox(height: height*.04,),
            ],
          ),
        ),
      ),
    );
  }
}
