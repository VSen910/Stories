import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:stories/components/account_info.dart';
import 'package:stories/constants.dart';

import '../components/story_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final numStories = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        foregroundColor: Colors.white,
        title: Text('View profile'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: AccountInfo(
                      name: 'Vineet Sen',
                      userid: '@imvsen02',
                      profilePictureURI:
                          'https://avatars.githubusercontent.com/u/104011412?v=4',
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      '$numStories stories posted',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: numStories,
                    itemBuilder: (context, index) {
                      return const StoryCard();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
