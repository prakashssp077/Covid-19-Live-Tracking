import 'package:covid19/AboutMe/datsource.dart';
import 'package:covid19/AboutMe/faqs.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) =>FAQPage()
              ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('FAQS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
              launch('https://covid19responsefund.org/');
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('DONATE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
              launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters');
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('MYTH BUSTERS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
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
