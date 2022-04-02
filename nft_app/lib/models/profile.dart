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
      imageUrl: 'assets/images/avatar.png',
      name: 'Abdolaziz Salimi',
      email: 'aziz.s6882@gmail.com',
      twitter: '@abdolazizsalimi',
      description: 'the best artist ever',
      creations: [
        Art(
          imgUrl: 'assets/images/create1.jpeg',
          name: 'Art name',
          price: 100.0,
          description: '',
        ),
        Art(
          imgUrl: 'assets/images/create2.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
        Art(
          imgUrl: 'assets/images/create3.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
        Art(
          imgUrl: 'assets/images/create4.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
      ],
      collections: [
        Art(
          imgUrl: 'assets/images/collection1.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
        Art(
          imgUrl: 'assets/images/collection2.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
        Art(
          imgUrl: 'assets/images/collection3.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
        Art(
          imgUrl: 'assets/images/collection4.jpeg',
          name: 'Art name',
          price: 100,
          description: '',
        ),
      ],
    );
  }
}
