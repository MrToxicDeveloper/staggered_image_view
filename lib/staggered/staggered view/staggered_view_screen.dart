import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:staggered_image_view/staggered/staggered_provider/staggered_proviedr.dart';

class StaggeredScreen extends StatefulWidget {
  const StaggeredScreen({Key? key}) : super(key: key);

  @override
  State<StaggeredScreen> createState() => _StaggeredScreenState();
}

class _StaggeredScreenState extends State<StaggeredScreen> {
  StagProvider? proTrue;
  StagProvider? proFalse;

  @override
  Widget build(BuildContext context) {
    proFalse = Provider.of<StagProvider>(context, listen: false);
    proTrue = Provider.of<StagProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,
        body: Padding(
          padding: EdgeInsets.all(15),
          // child: GridView.custom(
          //   // semanticChildCount: proFalse!.images.length,
          //   gridDelegate: SliverStairedGridDelegate(
          //     crossAxisSpacing: 10,
          //     mainAxisSpacing: 10,
          //     startCrossAxisDirectionReversed: true,
          //     pattern: [
          //       StairedGridTile(0.5, 3 / 4),
          //       StairedGridTile(0.5, 3 / 4),
          //       StairedGridTile(1.0, 10 / 4),
          //     ],
          //   ),
          //   childrenDelegate: SliverChildBuilderDelegate(
          //     childCount: proFalse!.images.length,
          //     (context, index) => Container(
          //       height: 100,
          //       width: 100,
          //       color: Colors.red,
          //       alignment: Alignment.center,
          //       child: Stack(
          //         children: [
          //           Image.asset(
          //             "${proFalse!.images[index]}",
          //             fit: BoxFit.fill,
          //           ),
          //           Container(
          //             height: 50,
          //             width: double.infinity,
          //             color: Colors.white,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          child: GridView.custom(
            gridDelegate: SliverQuiltedGridDelegate(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              repeatPattern: QuiltedGridRepeatPattern.inverted,
              pattern: [
                QuiltedGridTile(1, 2),
                QuiltedGridTile(1, 1),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              childCount: 6,
              (context, index) => Container(
                height: 100,
                width: 100,
                color: Colors.white,
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                        child: Image.asset(
                      "${proFalse!.images[index]}",
                      fit: BoxFit.fill,
                    )),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text("${proFalse!.name[index]}"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
