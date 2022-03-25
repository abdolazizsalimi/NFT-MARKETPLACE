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
      name: 'Abdolaziz',
      email: 'email',
      twitter: 'twitter',
      description: 'description',
    );
  }
}
