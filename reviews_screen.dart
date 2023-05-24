import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const ReviewsScreen(reviews),
    );
  }
}



final List<Review> reviews = [
  Review('First review', 'This app is awesome'),
  Review('Second review', 'This app is awesome'),
  Review('Third review', 'This app is awesome'),
  Review('Fourth review', 'This app is awesome'),
  Review('Fifth review', 'This app is awesome'),
  Review('Sixth review', 'This app is awesome'),
];

class Review {
  final String title;
  final String content;
  Review(this.title, this.content);
}

class ReviewsScreen extends StatelessWidget {
  final List<Review> reviews;

  const ReviewsScreen(this.reviews, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reviews')),
      body: Column(
        children: <Widget>[
          const Text(
            'Product Reviews',
            style: TextStyle(fontSize: 24),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(reviews[index].title),
                  subtitle: Text(reviews[index].content),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
