import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pro_drawer_example/home_module/components/just_for_you_list_item.dart';

class JustForYouProductList extends StatelessWidget {
  const JustForYouProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      itemCount: 8,
      primary: false,
      mainAxisSpacing: 14,
      crossAxisSpacing: 14,
      crossAxisCount: 4,
      itemBuilder: (ctx, index) {
        return const JustForYouListItem();
      },
      staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
    );
  }
}
