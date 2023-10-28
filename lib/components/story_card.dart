import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StoryCard extends StatefulWidget {
  const StoryCard({Key? key}) : super(key: key);

  @override
  State<StoryCard> createState() => _StoryCardState();
}

class _StoryCardState extends State<StoryCard> {
  bool _isLiked = false;
  IconData like = FontAwesomeIcons.heart;
  Color likeColor = Colors.black;

  int _pageIdx = 0;
  int _pageCount = 3;

  int _likeCount = 0;
  int _commentCount = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/img.jpg'),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8.0,
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Toto Wolff',
                          style: GoogleFonts.libreFranklin(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            '@totowolff • 4h',
                            style: GoogleFonts.libreFranklin(fontSize: 15),
                          ),
                        ),
                        ExpandablePageView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: PageController(viewportFraction: 1),
                          onPageChanged: (idx) {
                            setState(() {
                              _pageIdx = idx;
                            });
                          },
                          itemCount: _pageCount,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Text(
                                'Penatibus cursus neglegentur petentium dolores nulla inciderint mediocritatem sodales an potenti hinc lectus affert tation maiestatis ea ancillae',
                                style: GoogleFonts.libreFranklin(),
                              ),
                            );
                          },
                        ),
                        // Text(
                        //   'Penatibus cursus neglegentur petentium dolores nulla inciderint mediocritatem sodales an potenti hinc lectus affert tation maiestatis ea ancillae',
                        //   style: GoogleFonts.libreFranklin(),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    _isLiked = !_isLiked;
                    setState(() {
                      like = _isLiked
                          ? FontAwesomeIcons.solidHeart
                          : FontAwesomeIcons.heart;
                      likeColor = _isLiked ? Colors.red : Colors.black;
                      if (_isLiked) {
                        _likeCount++;
                      } else {
                        _likeCount--;
                      }
                    });
                  },
                  icon: FaIcon(
                    like,
                    color: likeColor,
                  ),
                ),
                Text(
                  _likeCount.toString(),
                  style: GoogleFonts.libreFranklin(),
                ),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.comment),
                ),
                Text(
                  _commentCount.toString(),
                  style: GoogleFonts.libreFranklin(),
                ),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.shareNodes),
                ),
                Expanded(child: Container()),
                Text('${_pageIdx + 1}/$_pageCount'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
