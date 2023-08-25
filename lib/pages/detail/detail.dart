import 'package:first_app/models/game.dart';
import 'package:first_app/pages/detail/widgets/detail_sliver.dart';
import 'package:flutter/material.dart';

class DetailGame extends StatelessWidget {
  const DetailGame(this.game, {super.key});

  final Game game;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              delegate: DetailSliverDelegate(
            game: game,
            expandedHeight: 350,
            roundedContainerHeight: 30,
          )),
          SliverToBoxAdapter(
            child: Container(
              height: 150,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
