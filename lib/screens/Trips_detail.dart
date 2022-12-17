import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/app_data.dart';
import 'package:saudi_toursim_guide/constants.dart';
import 'package:saudi_toursim_guide/screens/CommentsScreen.dart';
import 'package:like_button/like_button.dart';
import 'package:url_launcher/url_launcher.dart';

class TripsDetail extends StatelessWidget {
  static const id = './trip_detail';

  const TripsDetail({Key? key}) : super(key: key);


  Widget buildSectionTitle(BuildContext context, String titleText) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topLeft,
      child: Text(
        titleText,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }

  Widget buildListViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedTrip = trips.firstWhere((trip) => trip.id == tripId);
    bool isLiked = false;
    final Uri urlPlace = Uri.parse(selectedTrip.placeLocation!);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedTrip.title,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                selectedTrip.placeImage,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(

              child: Text(
                selectedTrip.description,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, CommentScreen.id),
                  icon: const Icon(Icons.insert_comment_outlined),
                  color: Colors.grey,
                ),
                LikeButton(
                  isLiked: isLiked,
                  likeCount: 0,
                ),
                IconButton(
                  onPressed: () async {
                    if (!await launchUrl(
                        urlPlace,
                        mode: LaunchMode.externalApplication)) {
                      throw "can not launch url";
                    }
                  },
                  icon: const Icon(
                    Icons.location_on_outlined,
                  ),
                  color: kMyGreen,
                ),
              ],
            ),
           
          ],
        ),
      ),

    );
  }
}
