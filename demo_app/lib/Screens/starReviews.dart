import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarRatingPage extends StatefulWidget {
  const StarRatingPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<StarRatingPage> createState() => _StarRatingPageState();
}

class _StarRatingPageState extends State<StarRatingPage> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rating : $rating',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            buildRating(),
            const SizedBox(
              height: 32,
            ),
            TextButton(
              onPressed: () => showRating(),
              child: Text(
                'Show Dialog',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRating() => RatingBar.builder(
        initialRating: rating,
        minRating: 1,
        itemSize: 50,
        itemPadding: EdgeInsets.symmetric(horizontal: 4),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        updateOnDrag: true,
        onRatingUpdate: (rating) => setState(() {
          this.rating = rating;
        }),
      );

  void showRating() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Rate this App'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Please leave a star rating.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              buildRating(),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'OK',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      );
}
