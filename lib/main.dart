import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class StudentCard extends StatelessWidget {
  final String name;
  final String id;
  final String major;
  final String photo;
  final double rating;

  StudentCard({
    required this.name,
    required this.id,
    required this.major,
    required this.photo,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Image.network(photo), // Use NetworkImage for online images
          ListTile(
            title: Text('Name: $name'),
            subtitle: Text('ID: $id\nMajor: $major'),
          ),
          RatingBar .builder(
            initialRating: rating,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 30.0,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              // Handle rating update here
            },
          ),
        ],
      ),
    );
  }
}

class RatingBar  {
  static builder({required double initialRating, required Axis direction, required bool allowHalfRating, required int itemCount, required double itemSize, required Icon Function(dynamic context, dynamic _) itemBuilder, required Null Function(dynamic rating) onRatingUpdate}) {}
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student Card'),
        ),
        body: Center(
          child: StudentCard(
            name: 'mays atawna',
            id: '201059',
            major: 'IT',
            photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6caw6g67tHuJwbLWTSlPtGBtsiMWAyL1DWQ&usqp=CAU',
            rating: 4.5,
          ),
        ),
      ),
    );
  }
}
