import 'package:breaking_bad/constants/my_color.dart';
import 'package:breaking_bad/data/models/characters.dart';
import 'package:flutter/material.dart';

class CharactersDetailsScreen extends StatelessWidget {
  final Character character;

  const CharactersDetailsScreen({Key? key, required this.character})
      : super(key: key);

  Widget buildSliverAppBar() {
    return SliverAppBar(
        expandedHeight: 600,
        pinned: true,
        stretch: true,
        backgroundColor: MyColor.myGrey,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text(
            character.nickname,
            style: TextStyle(
              color: MyColor.myWhite,
            ),
          ),
          background: Hero(
            tag: character.charId,
            child: Image.network(
              character.image,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }

  Widget characterInfo(String title, String value) {
    return RichText(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
          children: [
        TextSpan(
            text: title,
            style: TextStyle(
                color: MyColor.myWhite,
                fontSize: 18,
                fontWeight: FontWeight.bold,
            ),
        ),
            TextSpan(
              text: value,
              style: TextStyle(
                color: MyColor.myWhite,
                fontSize: 16,

              ),
            ),

      ]),

    );
  }

  Widget buildDivider(double endIndent){
    return Divider(
      color: MyColor.myYellow,
      height: 30,
      endIndent: endIndent,
      thickness: 2,

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.myGrey,
      body: CustomScrollView(
        slivers: [
          buildSliverAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  characterInfo('Job : ' , character.jobs.join(' / ')),
                  buildDivider(315,),
                  characterInfo('Appeared in : ' , character.categoryForTwoSeries),
                  buildDivider(250,),
                  characterInfo('Seasons : ' , character.appearanceOfSeasons.join(' / ')),
                  buildDivider(280,),
                  characterInfo('Status : ' , character.statusIfDeadOrAlive),
                  buildDivider(300,),
                  character.betterCallSoulAppearance.isEmpty ? Container() :
                  characterInfo('Better Call Saul Seasons : ' , character.betterCallSoulAppearance.join(' / ')),
                  character.betterCallSoulAppearance.isEmpty ? Container():
                  buildDivider(150,),
                  characterInfo('Actors : ' , character.actorName),
                  buildDivider(235,),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
                SizedBox(
                  height: 417,
                ),
          ]))
        ],
      ),
    );
  }
}
