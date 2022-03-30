import 'package:nft_app/models/art.dart';

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
      imageUrl: 'avatar.png',
      name: 'Abdolaziz Salimi',
      email: 'aziz.s6882@gmail.com',
      twitter: '@abdolazizsalimi',
      description: 'the best artist ever',
      creations: [
        Art(
          imgUrl: 'create1.jpeg',
          name: 'Art name',
          price: 100.0,
          description: '',
        ),
        Art(
          imgUrl: 'create2.jepg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
        Art(
          imgUrl: 'create3.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
        Art(
          imgUrl: 'create4.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
      ],
      collections: [
        Art(
          imgUrl: 'collection1.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
        Art(
          imgUrl: 'collection2.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
        Art(
          imgUrl: 'collection3.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
        Art(
          imgUrl: 'collection4.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
      ],
    );
  }
}
