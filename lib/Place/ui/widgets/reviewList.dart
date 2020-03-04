import 'package:flutter/material.dart';
import 'package:flutteraaaaa/Place/ui/widgets/user_review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/traveler.jpg", "Name", "1 photo 1 review", "Description. Sample description"),
        Review("assets/images/traveler.jpg", "Name2", "1 photo 2 reviews", "Description. Sample description"),
        Review("assets/images/traveler.jpg", "Name3", "1 photo 3 reviews", "Description. Sample description"),
        Review("assets/images/traveler.jpg", "Name4", "1 photo 5 reviews", "Description. Sample description"),
        Review("assets/images/traveler.jpg", "Name5", "1 photo 3 reviews", "Description. Sample description"),
        Review("assets/images/traveler.jpg", "Name6", "1 photo 13 reviews", "Description. Sample description"),
        Review("assets/images/traveler.jpg", "Name7", "3 photos 34 reviews", "Description. Sample description"),
      ],
    );
  }

}