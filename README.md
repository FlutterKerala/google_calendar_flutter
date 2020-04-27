# Google Calender Event adder from Flutter
This is simple program to add google calender event from flutter
![alt text](https://firebasestorage.googleapis.com/v0/b/dservers-5def7.appspot.com/o/calender.jpg?alt=media&token=54a701e4-1d13-4d4e-a6f4-2c58b8761a12)


## Needed Dependencies
* url_launcher:

## How to use

eventData hold the Data

```dart
 Map eventData = {
    'eventName': 'Flutter Kerala',
    'eventDetails': 'Flutter',
    'eventStarting':  DateTime.utc(2019, 7, 20, 20, 18, 04).toUtc(),//! need to convert to Utc
    'eventEnding': DateTime.utc(2020, 7, 20, 20, 18, 04).toUtc(),//! need to convert to Utc
  };
```
[To know more about Dart utc format](https://api.dart.dev/stable/2.8.0/dart-core/DateTime/DateTime.utc.html)



Then by using url_launcher we will launch the url
```dart
String url =  https://www.google.com/calendar/render?action=TEMPLATE&text=${eventData['eventName']}&dates=${eventData['eventStartingDate']}/${eventData['eventName']}Z&details=${eventData['eventEnding']}&sf=true&output=xml;

await launch(url);
```
launch function will launch the url

