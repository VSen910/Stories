import 'package:flutter/material.dart';

import '../constants.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key, required this.pageNo});

  final int pageNo;

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Page ${widget.pageNo}',
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: TextFormField(
            maxLines: 10,
            autofocus: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: kSecondaryColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
