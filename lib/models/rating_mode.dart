class rating_model {
  final double rate;
  final int count;

  rating_model({required this.rate, required this.count});

  factory rating_model.fromjson(jsondata) {
    return rating_model(rate: jsondata['rate'], count: jsondata['count']);
  }
}
