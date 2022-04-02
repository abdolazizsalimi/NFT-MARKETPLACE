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
            foregroundImage: AssetImage(profile.imageUrl!),
            radius: 50,
          ),
          const SizedBox(height: 20),
          Text(
            profile.name!,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            profile.twitter!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            profile.description!,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            profile.email!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              height: 1.5,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
