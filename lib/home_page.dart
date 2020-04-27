import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  
  Map eventData = {
    'eventName': 'Flutter Kerala',
    'eventDetails': 'Flutter',
    'eventStarting':  DateTime.utc(2019, 7, 20, 20, 18, 04).toUtc(),
    'eventEnding': DateTime.utc(2020, 7, 20, 20, 18, 04).toUtc(),
  };

 _launchURL() async {
   print(eventData['eventStartingDate']);
  String url = 'https://www.google.com/calendar/render?action=TEMPLATE&text=${eventData['eventName']}&dates=${eventData['eventStartingDate']}/${eventData['eventName']}Z&details=${eventData['eventEnding']}&sf=true&output=xml';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Calender Demo'),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: screenWidth * 0.4,
              child: Image.asset('assets/images/calender.png'),
            ),
            RaisedButton(
              onPressed: _launchURL,
              color: Colors.blueAccent,
              textColor: Colors.white,
              child: Text('Add Event to Calender'),
            )
          ],
        ),
      ),
    );
  }

// the top bar modal sheet

}
