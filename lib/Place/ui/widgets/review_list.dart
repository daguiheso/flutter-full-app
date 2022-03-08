import 'package:button_animate/Place/ui/widgets/review.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget {
  final String pathImage = 'assets/img/user.jpeg';
  final String name = 'Valentina';
  final String details = '1 review 5 photos';
  final String comment = 'There is an amazing place in Siri Lanka';

  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(
          pathImage: 'assets/img/pazdera.png',
          name: name,
          details: details,
          comment: comment,
        ),
        const Review(
          pathImage: 'assets/img/profile.jpeg',
          name: 'Daniel',
          details: '13 review 2 photos',
          comment: 'Esto es Colombia',
        ),
        const Review(
          pathImage: 'assets/img/ana.jpg',
          name: 'Ana',
          details: '3 review 3 photos',
          comment: 'Esto es Mexico',
        ),
        Review(
          pathImage: pathImage,
          name: name,
          details: details,
          comment: comment,
        ),
        Review(
          pathImage: pathImage,
          name: name,
          details: details,
          comment: comment,
        ),
      ],
    );
  }
}
