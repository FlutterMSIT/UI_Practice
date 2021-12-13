import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../themes.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/dp.jpeg'),
                radius: 22,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Janice Smith',
                      textAlign: TextAlign.center,
                      style: TwitterTheme.TEXTSTYLE_FOR_POST_HEADING),
                  Text(
                    'This is a beautiful scenery.',
                    style: TwitterTheme.TEXTSTYLE_FOR_POST_CONTENT,
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: FaIcon(
                  FontAwesomeIcons.ellipsisH,
                  color: Colors.grey.shade600,
                  size: 20,
                ),
              ),
            ],
          ),
          Image.asset('assets/images/bg.jpeg', fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FaIcon(
                  FontAwesomeIcons.comment,
                ),
                FaIcon(
                  FontAwesomeIcons.retweet,
                ),
                FaIcon(
                  FontAwesomeIcons.heart,
                ),
                FaIcon(
                  FontAwesomeIcons.upload,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
