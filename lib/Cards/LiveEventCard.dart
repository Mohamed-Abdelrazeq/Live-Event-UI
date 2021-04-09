import 'package:flutter/material.dart';

class LiveEventCard extends StatelessWidget {
  const LiveEventCard({
    @required this.width,
    @required this.height,
    @required this.image,
    @required this.name,
    @required this.address,
    @required this.time,
    this.func,
  });

  final double width;
  final double height;
  final String image;
  final String name;
  final String address;
  final String time;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        width: width,
        height: height*.16,
        margin: EdgeInsets.only(bottom: height*.02),
        child: Row(
          children: [
            Container(
              width: width*.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width*.05),
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: width*.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: height*.028,
                              color: Colors.black
                          ),
                        ),
                        Icon(Icons.videocam)
                      ],
                    ),
                    Text(
                      address,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: height*.02,
                          color: Colors.black
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: height*.018,
                          color: Colors.black
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
