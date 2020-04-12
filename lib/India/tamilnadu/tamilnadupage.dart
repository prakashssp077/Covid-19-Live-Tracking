import 'package:covid19/India/allState.dart';
import 'package:covid19/India/mostAffectedStates.dart';
import 'package:covid19/India/tamilnadu/allcities.dart';
import 'package:covid19/India/tamilnadu/tamilnadu.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class TamilNaduPage extends StatefulWidget {
  @override
  _TamilNaduPageState createState() => _TamilNaduPageState();
}
class _TamilNaduPageState extends State<TamilNaduPage>{
  List stateData;
  fetchStateData() async{
    http.Response response =await http.get('https://api.covid19india.org/data.json');
    var temp =json.decode(response.body);
    setState(() {
      stateData=temp['statewise'];
    });
  }
  Map cityData;
  fetchCityData()async{
    http.Response response =await http.get('https://api.covid19india.org/state_district_wise.json');
    var temp =json.decode(response.body);
    setState(() {
      cityData =temp['Tamil Nadu'];
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    fetchStateData();
    fetchCityData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('TamilNadu',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,),),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)
                  )
              ),
              child: Column(
                children: <Widget>[
                  stateData==null?Center(child: CircularProgressIndicator()):TamilNadu(stateData: stateData,),
                 cityData==null?Center(child: CircularProgressIndicator(),):AllCities(cityData: cityData,),
                 // AllCities()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
