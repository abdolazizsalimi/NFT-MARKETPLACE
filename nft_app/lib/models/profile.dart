class Profile {
  String? imageUrl;
  String? name;
  String? email;
  String? twitter;
  String? description;
  Profile(
      {this.imageUrl, this.name, this.email, this.twitter, this.description});

  static Profile generateProfile() {
    return Profile(
      imageUrl: 'imageUrl',
      name: 'Abdolaziz Salimi',
      email: 'aziz.s6882@gmail.com',
      twitter: '@abdolazizsalimi',
      description:
          'A non-fungible token (NFT) is a non-interchangeable[clarification needed] unit of data stored on a blockchain, a form of digital ledger, that can be sold and traded. Types of NFT data units may be associated with digital files such as photos, videos, and audio. Because each token is uniquely identifiable, NFTs differ from blockchain cryptocurrencies, such as Bitcoin.',
    );
  }
}
