import 'package:bottom_tab_bar/widget/splash_content.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Slider 1",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
          "Slider 2",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Slider 3",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  pageSnapping: true,
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    // image: splashData[index]["image"],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => GestureDetector(
                            onTap: (){
                              currentPage = index;
                              setState(() {

                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 5),
                              height: 20,
                              width: currentPage == index ? 40 : 10,
                              decoration: BoxDecoration(
                                color: currentPage == index
                                    ? Colors.green
                                    : const Color(0xFFD8D8D8),
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 3),
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.pushNamed(context, SignInScreen.routeName);
                        },
                        child: const Text("Continue"),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
