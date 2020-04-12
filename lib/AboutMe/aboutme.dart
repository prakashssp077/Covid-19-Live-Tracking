import 'package:covid19/AboutMe/about.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'infoPanel.dart';
class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String shareText='Check out new app which tracks all the COVID-19 information ,App shows complete report of all affected countries and it shows complete report of India and TamilNadu as well as'
        '\n\n Download link:https://github.com/prakashssp077/Covid-19-APk.git \n\n Github link: https://github.com/prakashssp077/Covid-19-Live-Tracking.git';
    String shareSubject='COVID-19 Live Tracking';
    return Container(
      child: Column(
        children: <Widget>[
          InfoPanel(),
          GestureDetector(
            onTap: (){
              Share.share(shareText,subject: shareSubject);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Icon(Icons.share),
                  Text('SHARE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward,color: Colors.white,),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.0,
            child: Container(
              color: Colors.black54,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => About()
              ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('ABOUT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward,color: Colors.white,),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.0,
            child: Container(
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
