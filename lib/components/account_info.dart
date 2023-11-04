import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key, required this.name, required this.userid, this.profilePictureURI});

  final name;
  final userid;
  final profilePictureURI;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProfilePicture(
            name: name,
            radius: 80,
            fontsize: 40,
            img: profilePictureURI,
          ),
        ),
        Text(
          name,
          style: TextStyle(fontSize: 32),
        ),
        Text(
          userid,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
