import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class PostActions extends StatelessWidget {
  const PostActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(
          Icons.comment,
          color: Colors.blue,
        ),
        LikeButton(
          likeBuilder: (bool isLiked) {
            return Icon(
              Icons.favorite,
              color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
            );
          },
        ),
        const Icon(
          Icons.add_comment,
          color: Colors.blue,
        ),
      ],
    );
  }
}
