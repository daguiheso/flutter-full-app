import 'package:button_animate/Place/ui/widgets/description_place.dart';
import 'package:button_animate/Place/ui/screens/header_appbar.dart';
import 'package:button_animate/Place/ui/widgets/review_list.dart';
import 'package:flutter/material.dart';

class HomeTrips extends StatelessWidget {
  final String descriptionDummy =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ";

  const HomeTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace(
                namePlace: 'Bahamas e',
                descriptionPlace: descriptionDummy,
                stars: 4),
            const ReviewList()
          ],
        ),
        const HeaderAppBar(),
      ],
    );
  }
}
