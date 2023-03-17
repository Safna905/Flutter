import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'WorldCities.dart';
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = PageController();

  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding:  const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
           buildPage(
             color: Colors.green.shade100,
             urlImage: 'assets/onbimages/screen1.png',
             title: 'PLAN A TRIP',
             subtitle: 'Plan trips to more than 90 coubtries with few taps on your mobile screen'
           ),
            buildPage(
                color: Colors.blue.shade100,
                urlImage: 'assets/onbimages/screen2.jpg',
                title: 'START JOURNEY',
                subtitle: 'Hassle-free and quick flight booking to any one of the 90 countries '
            ),
            buildPage(
                color: Colors.orange.shade100,
                urlImage: 'assets/onbimages/screen3.jpg',
                title: 'TRIP SCHEDULE',
                subtitle: 'Real-time flight status to help you stay on top of your trip plan'
            ),
          ],
        ),
      ),

      bottomSheet: isLastPage
          ? TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.0),
          ),
          backgroundColor: Colors.teal.shade700,
          minimumSize: const Size.fromHeight(90.0)
        ),
          child: const Text(
            'Get Started',
            style: TextStyle(fontSize: 24,
            color: Colors.white),
          ),
          onPressed: () async {

          //navigate directly to homepage
            final prefs = await SharedPreferences.getInstance();
            prefs.setBool('showHome', true);

          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => CitiesPage()),
          );
          }
      )
          : Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: ()=> controller.jumpToPage(2),
                child: const Text('SKIP'),
            ),
            Center(
              child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                effect: WormEffect(
                  spacing: 16,
                  dotColor: Colors.black26,
                  activeDotColor: Colors.teal.shade700,
                ),
                onDotClicked: (index) => controller.animateToPage(
                index,
                    duration:const Duration(milliseconds: 500) ,
                    curve: Curves.easeIn),
              ),
            ),
            TextButton(onPressed: ()=> controller.nextPage(
                duration: const Duration(milliseconds: 500) ,
                curve: Curves.easeInOut),
              child: const Text('NEXT'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPage( {
    required Color color,
  required String urlImage,
  required String title,
  required String subtitle,
}) => Container(
    color: color,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          urlImage,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        const SizedBox(height: 64,),
        Text(
          title,
          style: TextStyle(
            color: Colors.teal.shade700,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal:40.0, vertical: 20.0),
          child: Text(
            subtitle,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        )
      ],
    ),
  );
}
