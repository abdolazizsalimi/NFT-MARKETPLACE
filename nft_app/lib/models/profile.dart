import 'package:nft_app/models/art.dart';
import 'package:nft_app/models/bidder.dart';

class Profile {
  String? imageUrl;
  String? name;
  String? email;
  String? twitter;
  String? description;
  List<Art>? creations;
  List<Art>? collections;
  Profile(
      {this.imageUrl,
      this.name,
      this.email,
      this.twitter,
      this.description,
      this.creations,
      this.collections});

  static Profile generateProfile() {
    return Profile(
      imageUrl: 'assets/images/avatar.png',
      name: 'Abdolaziz Salimi',
      email: 'aziz.s6882@gmail.com',
      twitter: '@abdolazizsalimi',
      description: 'the best artist ever',
      creations: [
        Art(
          imgUrl: 'assets/images/create1.jpeg',
          name: 'Art name',
          price: 1.0,
          description: 'the best art ever',
          birsds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/create2.jpeg',
          name: 'Art name',
          price: 1.3,
          description: '',
          birsds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/create3.jpeg',
          name: 'Art name',
          price: 4,
          description: '',
          birsds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/create4.jpeg',
          name: 'Art name',
          price: 99,
          description: '',
          birsds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
      ],
      collections: [
        Art(
          imgUrl: 'assets/images/collection1.jpeg',
          name: 'Art name',
          price: 10,
          description: '',
          birsds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/collection2.jpeg',
          name: 'Art name',
          price: 1,
          description: '',
          birsds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/collection3.jpeg',
          name: 'Art name',
          price: 3,
          description: '',
          birsds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
        Art(
          imgUrl: 'assets/images/collection4.jpeg',
          name: 'Art name',
          price: 1.54,
          description: '',
          birsds: Bidder.generateBidder(),
          history: Bidder.generateHistory(),
        ),
      ],
    );
  }
}
