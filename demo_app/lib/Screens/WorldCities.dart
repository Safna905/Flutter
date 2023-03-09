import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CitiesPage extends StatelessWidget {
  const CitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    List<Map<String,dynamic>> cities = [
      {
        'name' : 'Delhi',
        'country' : 'India',
        'population' : '19 million'
        // 'image' :
      },
      {
        'name' : 'London',
        'country' : 'Britain',
        'population' : '8 million'
      },
      {
        'name' : 'Vancouver',
        'country' : 'Canada',
        'population' : '2.4 million'
      },
      {
        'name' : 'New York',
        'country' : 'USA',
        'population' : '19 million'
      },
      {
        'name' : 'Paris',
        'country' : 'France',
        'population' : '2.2 million'
      },
      {
        'name' : 'Tokyo',
        'country' : 'Japan',
        'population' : '14 million'
      },
      {
        'name' : 'Bangkok',
        'country' : 'Thailand',
        'population' : '8.3 million'
      }
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        elevation: 10.0,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Cites Around World',
            style:
            GoogleFonts.roboto(
              fontWeight: FontWeight.w900,
              fontSize: 25,
            ),
          ),
        ),
      ),

      body: ListView.builder(

          itemCount:cities.length ,
          itemBuilder: (context, index){
            return ListTile(
              trailing: Image.asset('assets/images/3af9262b-3d8b-40c6-b61d-e37ae1aa90aa.jpg',
              height: 100,width: 100,),
              title:Text(cities[index]['name'],
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w800,
                fontSize: 20
              ),) ,
              subtitle:Column(
                children: [
                  Text(cities[index]['country']),
                  Text('Population : ${cities[index]['population']}'),
                ],
              ) ,
            );
      }),
      
    );
  }
}
