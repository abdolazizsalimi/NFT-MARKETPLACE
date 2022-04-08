import 'dart:math';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:nft_app/constants/colors.dart';

import '../../../models/bidder.dart';

class BidderCard extends StatelessWidget {
  final Bidder bidder;
  const BidderCard(this.bidder, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: randomBlueList[random.nextInt(9) + 1],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bid place by ${bidder.name}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '${DateFormat.yMMMd().format(bidder.date!)} at ${bidder.date!.hour}:${bidder.date!.minute}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[400]!,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          '${bidder.price} ETH',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
