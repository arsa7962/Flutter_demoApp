import 'package:demo_app/widgets/title.dart';

class CardModel {
  final String title;
  final ShaderText subtitle;
  final String desc;
  final String actionDesc;
  final String image;
  CardModel(
      {required this.title,
      required this.subtitle,
      required this.desc,
      required this.actionDesc,
      required this.image});
}
