import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstProfile extends StatefulWidget {
  const FirstProfile({Key? key}) : super(key: key);

  @override
  State<FirstProfile> createState() => _FirstProfileState();
}

class _FirstProfileState extends State<FirstProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            //color: Colors.pink,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Image.network(
                    'https://burst.shopifycdn.com/photos/city-lights-through-rain-window.jpg?width=1200&format=pjpg&exif=1&iptc=1',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'About Me',

                          style: GoogleFonts.robotoMono(
                              fontWeight: FontWeight.w800,
                              letterSpacing: 2,
                              fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "I have developed a passion for not only being the voice of those that cannot communicate for themselves,"
                          " but also teaching people to communicate effectively. In recruiting I am able to do this, by helping people"
                          " acknowledge the potential within themselves and be able to communicate that effectively to hiring managers. "
                          "I am able to communicate with people from all walks life that all have one thing in common, they NEED A JOB. ",
                          style: GoogleFonts.robotoMono(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                ClipOval(
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Image.network(
                      'https://media.istockphoto.com/id/490483300/photo/portrait-of-beautiful-blonde-woman-with-curly-hairstyle.jpg?s=612x612&w=0&k=20&c=Va_kGiVu8GGOZWhREhqD9j8O5TqNn9zGzWZUKQz1_vs=',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Anjali Dezoza',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Native Android & Flutter Developer',
                  style: TextStyle(letterSpacing: 2),
                ),
                ElevatedButton(
                    onPressed: (){},
                    child: Icon(Icons.message),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
