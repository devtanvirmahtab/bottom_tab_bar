import 'package:bottom_tab_bar/custom_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab"),
            backgroundColor: Colors.green,
            actions: <Widget>[
            ],
          ),
          body: TabBarView(
            children: [
              Scaffold(
                body: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CustomTab()),
                      );
                    },
                    child: const Text("Custom Tab"),
                  ),
                ),
              ),
              const Icon(Icons.directions_car),
              const Icon(Icons.directions_transit),
              const Icon(Icons.directions_bike),
            ],
          ),
          bottomNavigationBar: menu(),
        ));
  }

  Widget menu() {
    return Container(
      color: const Color(0xFF3F5AA6),
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        indicator: const BoxDecoration(),
        tabAlignment: TabAlignment.fill,
        tabs: const[
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
