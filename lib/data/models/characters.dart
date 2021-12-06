class Character
{
  late int charId;
  late String name;
  late String nickname;
  late String image;
  late List<dynamic> jobs;
  late List<dynamic> appearanceOfSeasons;
  late String statusIfDeadOrAlive;
  late String actorName;
  late String categoryForTwoSeries;
  late List<dynamic>betterCallSoulAppearance;

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