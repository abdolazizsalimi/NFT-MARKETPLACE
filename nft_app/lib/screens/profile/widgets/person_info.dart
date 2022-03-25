import 'package:flutter/material.dart';
import 'package:nft_app/models/profile.dart';

class PersonInfo extends StatelessWidget {
  final Profile profile;
  const PersonInfo(
    this.profile, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(profile.imageUrl!),
            radius: 50,
          ),
          const SizedBox(height: 30),
          Text(
            profile.name!,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
