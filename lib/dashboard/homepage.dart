import 'dart:convert';
import 'package:covid19/India/indiaPage.dart';
import 'package:covid19/AboutMe/aboutme.dart';
import 'package:covid19/worldwide/mostaffectedcountries.dart';
import 'package:covid19/worldwide/worldwidepanel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  //page control
  PageController _pageController = PageController();
  int _selectedIndex;

  //Api Calling from the website
  Map<String,dynamic> worldData;
  fetchWorldWideData()async{
    http.Response response =await http.get('https://corona.lmao.ninja/all');
    setState(() {
      worldData =json.decode(response.body);
    });
  }
  List countryData;
  fetchCountryData()async{
    http.Response response =await http.get('https://corona.lmao.ninja/countries');
    setState(() {
      countryData =json.decode(response.body);
    });
  }
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    fetchWorldWideData();
    fetchCountryData();
    super.initState();
    _selectedIndex=0;


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Image.asset('assets/covid19.png',height: 25,),
      ),
      body: SizedBox.expand(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
//              decoration: BoxDecoration(
//                color: Colors.white
//              ),
                    height: 40,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    // color: Colors.white,
                   // child: Text('Covid -19 Tracker',style: TextStyle(color: Colors.red), ),
                  ),
                  worldData==null?Center(child: CircularProgressIndicator()): WorldWidePanel(worldData: worldData,),
                  countryData==null?Center(child: CircularProgressIndicator()):MostAffectedCountry(countryData:countryData),
                  Center(
                    child:Text('WE ARE TOGETHER IN THE FIGHT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red[300] ),) ,),
                 ],
              ),
            ),
            IndiaPage(),
            AboutMe(),
          ],
        )
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
        child: BottomAppBar(
          elevation: 20.0,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    setState(() {
                      _pageController.jumpToPage(0);
                      _selectedIndex=0;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.whatshot,
                        size: _selectedIndex ==0? 30.0:25.0,
                        color: _selectedIndex==0?Colors.blue:Colors.black,
                      ),
                      Text('Dashboard',style: TextStyle(fontSize: 13.5,fontWeight: FontWeight.w400,color: _selectedIndex==0?Colors.blue:Colors.black),),
                    ],
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    setState(() {
                      _pageController.jumpToPage(1);
                      _selectedIndex=1;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.map,
                        size: _selectedIndex ==1? 30.0:25.0,
                        color: _selectedIndex==1?Colors.blue:Colors.black,
                      ),
                      Text('My Country',style: TextStyle(fontSize: 13.5,fontWeight: FontWeight.w400,color: _selectedIndex==1?Colors.blue:Colors.black),),
                    ],
                  ),
                ),

                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    setState(() {
                      _pageController.jumpToPage(2);
                      _selectedIndex=2;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        size: _selectedIndex ==2? 30.0:25.0,
                        color: _selectedIndex==2?Colors.blue:Colors.black,
                      ),
                      Text('Profile',style: TextStyle(fontSize: 13.5,fontWeight: FontWeight.w400,color: _selectedIndex==2?Colors.blue:Colors.black),),
                    ],
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );

  }
}
