import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("appbar title"),),
      body: Container(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Column(
                children: <Widget> [
                  SizedBox(
                    child: YellowBox(),
                    height: 200,
                    width: 150,
                  ),
                  SizedBox( // SizedBox 는 child 없이 쓰면 지정한 사이즈 만큼만 띄우게 한다.
                    height: 30,
                  ),
                  Flexible(
                    child:YellowBox(),
                    fit: FlexFit.loose,
//            flex: 2,
                  ),
                  Spacer( // Spacer 는 지정한 비율 만큼 띄우게 한다.
                    flex: 1,
                  ),
                  Flexible(
                    child:TallerYellowBox(),
                    fit: FlexFit.tight,
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Expanded(
                      child: YellowBox()
                  ),

                ]
            ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text("Code", style: TextStyle(color: Colors.yellow, fontSize: 26),),
                  Text("Hey", style: TextStyle(color: Colors.red, fontSize: 46),),
                  Text("Code", style: TextStyle(color: Colors.green, fontSize: 26),
                  ),
                  Icon(
                    Icons.ac_unit, size: 60, color: Colors.lightBlue,
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.network("https://picsum.photos/536/354")                    ,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class YellowBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.yellowAccent,
          border: Border.all()
      ),
    );
  }
}

class TallerYellowBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.yellowAccent,
          border: Border.all()
      ),
    );
  }
}
