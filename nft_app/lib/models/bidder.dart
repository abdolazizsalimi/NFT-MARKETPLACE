class Bidder {
  String? name;
  DateTime? date;
  num? price;
  Bidder({
    this.name,
    this.date,
    this.price,
  });

  static List<Bidder> generateBidder() {
    return [
      Bidder(name: 'Abdolaziz', date: DateTime.now(), price: 1.3),
      Bidder(name: 'ali', date: DateTime.now(), price: 2),
      Bidder(name: 'reza', date: DateTime.now(), price: 0.3),
      Bidder(name: 'amir', date: DateTime.now(), price: 0.34),
      Bidder(name: 'alireza', date: DateTime.now(), price: 41.3),
      Bidder(name: 'jamshid', date: DateTime.now(), price: 15.3),
      Bidder(name: 'kazem', date: DateTime.now(), price: 1.388),
    ];
  }

  static List<Bidder> generateHistory() {
    return [
      Bidder(name: 'Abdolaziz', date: DateTime.now(), price: 1.3),
      Bidder(name: 'ali', date: DateTime.now(), price: 2),
      Bidder(name: 'reza', date: DateTime.now(), price: 0.3),
      Bidder(name: 'amir', date: DateTime.now(), price: 0.34),
      Bidder(name: 'alireza', date: DateTime.now(), price: 41.3),
      Bidder(name: 'jamshid', date: DateTime.now(), price: 15.3),
      Bidder(name: 'kazem', date: DateTime.now(), price: 1.388),
    ];
  }

  static List<Bidder> generateInfo() {
    return [
      Bidder(name: 'Abdolaziz', date: DateTime.now(), price: 1.3),
      Bidder(name: 'ali', date: DateTime.now(), price: 2),
      Bidder(name: 'reza', date: DateTime.now(), price: 0.3),
      Bidder(name: 'amir', date: DateTime.now(), price: 0.34),
      Bidder(name: 'alireza', date: DateTime.now(), price: 41.3),
      Bidder(name: 'jamshid', date: DateTime.now(), price: 15.3),
      Bidder(name: 'kazem', date: DateTime.now(), price: 1.388),
    ];
  }
}
