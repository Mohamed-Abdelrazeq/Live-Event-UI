import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'LivesPage.dart';
import 'SettingsPage.dart';
import 'TicketsPage.dart';

class AppPage extends StatefulWidget {

  static const IconData settings = IconData(0xe9c6, fontFamily: 'MaterialIcons');

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {

  PageController myController = PageController(
    initialPage: 0,
  );
  int _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    myController.addListener(() {
      setState(() {
        _currentPage = myController.page.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: height*.9,
                width: width,
                child: PageView(
                  controller: myController,
                  children: [
                    HomePage(),
                    LivesPage(),
                    TicketsPage(),
                    SettingPage()
                  ],
                ),
              ),
            ),
            Positioned(
              top: height*.9,
              child: Container(
                width: width,
                height: height*.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        myController.animateToPage(0, duration: Duration(milliseconds: 100), curve: Curves.easeIn);
                      },
                      child: Icon(Icons.home, color:_currentPage == 0 ? Colors.black : Colors.black45,size: height*.04,),
                    ),
                    InkWell(
                      onTap: (){
                        myController.animateToPage(1, duration: Duration(milliseconds: 100), curve: Curves.easeIn);
                      },
                      child: Icon(Icons.calendar_today,color:_currentPage == 1 ? Colors.black : Colors.black45,size: height*.04,),
                    ),
                    InkWell(
                      onTap: (){
                        myController.animateToPage(2, duration: Duration(milliseconds: 100), curve: Curves.easeIn);
                      },
                      child: Icon(Icons.sticky_note_2_outlined,color:_currentPage == 2 ? Colors.black : Colors.black45,size: height*.04,),
                    ),
                    InkWell(
                      onTap: (){
                        myController.animateToPage(3, duration: Duration(milliseconds: 100), curve: Curves.easeIn);
                      },
                      child: Icon(Icons.settings,color:_currentPage == 3 ? Colors.black : Colors.black45,size: height*.04,),
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


