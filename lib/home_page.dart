import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 4, child: Scaffold(
      body: const TabBarView(
        children: [
          Icon(Icons.home),
          Icon(Icons.directions_car),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ],
      ),
      bottomNavigationBar: menu(),
    ));
  }

  Widget menu() {
    return Container(
      color: const Color(0xFF3F5AA6),
      child:  const TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        indicator: BoxDecoration(),
        tabAlignment: TabAlignment.fill,
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.assignment),
          ),
          Tab(
            icon: Icon(Icons.account_balance_wallet),
          ),
          Tab(
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }

}
