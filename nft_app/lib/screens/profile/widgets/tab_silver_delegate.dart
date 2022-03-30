import 'package:flutter/material.dart';

class TabSliverDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  final bool space;
  TabSliverDelegate(this.tabBar, {this.space = false});
  @override
  Widget build(Object context, double shrinkOffset, bool overlapsContent) {
    // TO DO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200]!,
            width: 1,
          ),
        ),
      ),
      padding: EdgeInsets.only(
        left: 15,
        right: space ? 120 : 15,
      ),
      child: tabBar,
    );
  }

  @override
  //TO DO: implement maxExtent
  double get maxExtent => tabBar.preferredSize.height;

  @override
  // TO DO: implement minExtent
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TO DO: implement shouldRebuild
    return false;
  }
}
