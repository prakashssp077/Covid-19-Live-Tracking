import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    _launchURL(String link) async {
      if (await canLaunch(link)) {
        await launch(link);
      } else {
        throw 'Could not launch $link';
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text('About'),),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              width: screenWidth,
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 100,
                      backgroundImage: ExactAssetImage('assets/prakash.jpg'),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                        left: 8.0,
                        right: 8.0,
                        bottom: 8.0,
                      ),
                      child: Text(
                        'Prakash S',
                        style: TextStyle(
                          color: Colors.red[100],
                          fontFamily: 'Ubuntu',
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        bottom: 10.0,
                        left: 25.0,
                        right: 25.0,
                      ),
                      child: SizedBox(
                        height: 1.0,
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        right: 25.0,
                        bottom: 10.0,
                        top: 10.0,
                      ),
                      child: Text(
                        'Follow me on',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.blue,
                          wordSpacing: 2,
                          fontFamily: 'Ubuntu',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        bottom: 10.0,
                        top: 5.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  'https://www.instagram.com/prakashssp_/');
                            },
                            child: SvgPicture.asset(
                              'assets/instagram.svg',
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                              height: screenWidth * 0.15,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL(
                                  'https://www.linkedin.com/in/prakash-s-a9a20a193/');
                            },
                            child: SvgPicture.asset(
                              'assets/linkedin.svg',
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                              height: screenWidth * 0.15,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _launchURL('https://www.facebook.com/profile.php?id=100011672341156');
                            },
                            child: SvgPicture.asset(
                              'assets/facebook.svg',
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                              height: screenWidth * 0.15,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
