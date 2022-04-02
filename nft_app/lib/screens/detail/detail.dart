import 'package:flutter/material.dart';
import 'package:nft_app/screens/detail/widgets/detail_banner.dart';

import '../../../models/art.dart';

class DetailPage extends StatelessWidget {
  final Art art;

  const DetailPage(this.art, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                elevation: 0,
                expandedHeight: 330,
                // need to fix  backgroundColor: buttonColor,
                backgroundColor: Colors.pink[200],
                leading: _buildIcon(
                  context,
                  Icons.arrow_back_ios_new_outlined,
                  back: true,
                ),
                actions: [
                  _buildIcon(
                    context,
                    Icons.more_vert_outlined,
                  ),
                  // fix: add share icon
                  // _buildIcon(
                  //   context,
                  //   Icons.share_outlined,
                  // ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: DetailBanner(art),
                ),
                pinned: true,
              ),
            ];
          },
          body: Container(),
        ),
      ),
    );
  }

  _buildIcon(BuildContext context, IconData iconData, {bool back = false}) {
    return IconButton(
      onPressed: back ? () => Navigator.of(context).pop() : null,
      splashRadius: 25,
      icon: Icon(
        iconData,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
