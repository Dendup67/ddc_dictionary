import 'tab1_card.dart';
import 'tab2_card.dart';
import 'tab3_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dzongkha Dictionary',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.green[600],
          title: Text(
            'རྫོང་ཁའི་ཚིག་མརྫོད།',
            style: TextStyle(
              letterSpacing: 2,
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.white,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white,
            ),
            tabs: <Widget>[
              Tab(
                child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.cloud_circle,
                      size: 35,
                    )),
              ),
              Tab(
                child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.search,
                      size: 35,
                    )),
              ),
              Tab(
                child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.info,
                      size: 35,
                    )),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            (Tab1Card()),
            (Tab2Card()),
            (Tab3Card()),
          ],
        ),
      ),
    );
  }
}
