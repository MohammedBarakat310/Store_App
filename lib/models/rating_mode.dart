class rating_mode {
  final double rate;
  final int count;

  rating_mode({required this.rate, required this.count});

  factory rating_mode.fromjson(jsondata) {
    return rating_mode(rate: jsondata['rate'], count: jsondata['count']);
  }
}
