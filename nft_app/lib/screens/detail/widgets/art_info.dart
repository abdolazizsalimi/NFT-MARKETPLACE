import 'package:flutter/material.dart';
import 'package:nft_app/models/art.dart';
import 'package:nft_app/models/profile.dart';

class ArtInfo extends StatelessWidget {
  final Art art;
  ArtInfo(this.art, {Key? key}) : super(key: key);
  final Profile profile = Profile.generateProfile();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            art.name!,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              _buildIconText(
                profile.imageUrl!,
                0,
                'creator',
                profile.twitter!.substring(1),
              ),
              const SizedBox(width: 40),
              _buildIconText(
                'assets/images/eth.png',
                8,
                'Current Bid',
                '${art.price} ETH',
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            art.description!,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  _buildIconText(String imgUrl, double padding, String title, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Image.asset(imgUrl),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black45,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
