import 'package:flutter/material.dart';
class AllCities extends StatelessWidget {
  final Map cityData;

  const AllCities({Key key, this.cityData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> districts=['Kancheepuram','Chennai','Erode','Coimbatore','Tirunelveli','Tiruppur','Madurai','Salem','Vellore','Tiruchirappalli','Chengalpattu','Thanjavur',
    'Virudhunagar','Karur','Tiruvannamalai','Viluppuram','Namakkal','Kanniyakumari','Thoothukkudi',
    'Theni','Dindigul','Sivaganga','Tirupathur','Thiruvarur',];
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ClipRRect(
          borderRadius:BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: ListView.builder(
            itemCount: districts.length,
              itemBuilder:(BuildContext context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Text(districts[index],style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 20),),
                        Text('Confirmed:',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red[300]),),
                        Text(cityData['districtData'][districts[index]]['confirmed'].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.red),),

                      ],
                    ),
                  ),
                ),
              );
              }
          ),
        ),
      ),
    );
  }
}
