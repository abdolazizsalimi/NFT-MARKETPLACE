import 'package:flutter/material.dart';
import 'package:nft_app/models/bidder.dart';
import 'package:nft_app/screens/detail/widgets/BidderCard.dart';

class BidderList extends StatelessWidget {
  final String scrollkey;
  final List<Bidder> bidderList;
  const BidderList(this.scrollkey, this.bidderList, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          key: PageStorageKey(scrollkey),
          padding: const EdgeInsets.all(20),
          itemBuilder: (_, index) => BidderCard(bidderList[index]),
          separatorBuilder: (_, index) => const SizedBox(
                height: 15,
              ),
          itemCount: bidderList.length),
    );
  }
}
