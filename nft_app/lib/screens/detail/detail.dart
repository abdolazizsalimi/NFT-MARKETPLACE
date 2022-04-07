import 'package:flutter/material.dart';
import 'package:nft_app/screens/detail/widgets/Bidder_List.dart';
import 'package:nft_app/screens/detail/widgets/art_info.dart';
import 'package:nft_app/screens/detail/widgets/detail_banner.dart';
import 'package:nft_app/screens/profile/widgets/tab_silver_delegate.dart';

import '../../../models/art.dart';
import 'widgets/buy_button.dart';

class DetailPage extends StatelessWidget {
  final Art art;

  DetailPage(this.art, {Key? key}) : super(key: key);
  final tabs = ['Info', 'Birds', 'History'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        initialIndex: 1,
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
              SliverToBoxAdapter(
                child: ArtInfo(art),
              ),
              SliverPersistentHeader(
                delegate: TabSliverDelegate(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[200],
                    indicatorColor: Colors.black,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.only(left: 5, right: 30),
                    tabs: tabs
                        .map(
                          (e) => Tab(
                            child: Text(
                              e,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                pinned: true,
              )
            ];
          },
          body: TabBarView(
            children: [
              ListView(children: const []),
              BidderList('birds', art.birsds!),
              BidderList('history', art.history!),
            ],
          ),
        ),
      ),
      floatingActionButton: const BuyButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
