class Character
{
  int charId;
  String name;
  String nickname;
  String image;
  List<dynamic> jobs;
  List<dynamic> appearanceOfSeasons;
  String statusIfDeadOrAlive;
  String actorName;
  String categoryForTwoSeries;
  List<dynamic>betterCallSoulAppearance;

  Character.fromJson (Map<String, dynamic> json)
  {
    charId = json['char_id'];
    name = json['name'];
    nickname = json['nickname'];
    image = json['img'];
    jobs = json['occupation'];
    appearanceOfSeasons = json['appearance'];
    statusIfDeadOrAlive = json['status'];
    actorName = json['portrayed'];
    categoryForTwoSeries = json['category'];
    betterCallSoulAppearance = json['better_call_saul_appearance'];
  }

}