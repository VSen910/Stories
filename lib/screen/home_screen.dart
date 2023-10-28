import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stories/components/story_card.dart';
import 'package:stories/constants.dart';
import 'package:stories/screen/new_story_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isNewStory = false;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: kSecondaryColor,
      ),
      child: Scaffold(
        backgroundColor: kSecondaryColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: kPrimaryColor,
            title: Text(
              'Stories',
              style:
                  GoogleFonts.merriweather(fontSize: 32, color: Colors.white),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Fluttertoast.showToast(msg: 'avatar tapped');
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/img.jpg'),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const StoryCard();
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NewStoryScreen(),
              ),
            );
          },
          backgroundColor: const Color(0xff2ec4b6),
          child: const FaIcon(
            FontAwesomeIcons.plus,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
