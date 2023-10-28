import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stories/components/new_page.dart';
import 'package:stories/constants.dart';

class NewStoryScreen extends StatefulWidget {
  const NewStoryScreen({super.key});

  @override
  State<NewStoryScreen> createState() => _NewStoryScreenState();
}

class _NewStoryScreenState extends State<NewStoryScreen> {
  int pages = 1;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(systemNavigationBarColor: kPrimaryColor),
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          title: const Text('New story'),
          foregroundColor: Colors.white,
          backgroundColor: kPrimaryColor,
          scrolledUnderElevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: pages + 1,
                    itemBuilder: (context, index) {
                      if (index == pages) {
                        return Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kSecondaryColor,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  pages++;
                                });
                              },
                              child: const Text(
                                'Add page',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                      return NewPage(pageNo: index + 1);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: kSecondaryColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        onPressed: () {},
                        child: const Text(
                          'Post',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
