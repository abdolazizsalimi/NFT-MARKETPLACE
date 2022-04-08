import 'package:nft_app/models/bidder.dart';

class Art {
  String? imgUrl;
  String? name;
  num? price;
  String? description;
  List<Bidder>? birsds;
  List<Bidder>? history;

  Art({
    this.imgUrl,
    this.name,
    this.price,
    this.description,
    this.birsds,
    this.history,
  });
}
