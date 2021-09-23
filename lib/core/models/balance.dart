class Balance {
  final String title;
  final String value;
  final String subtitle;
  final String image;

  Balance(
      {required this.title,
      required this.value,
      required this.subtitle,
      required this.image});

  static Balance fromJson(json) => Balance(
      title: json['title'],
      value: json['value'],
      subtitle: json['subtitle'],
      image: json['image']);
}
