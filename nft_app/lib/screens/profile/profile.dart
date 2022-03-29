import 'package:flutter/material.dart';
import 'package:nft_app/models/profile.dart';
import 'package:nft_app/screens/profile/widgets/person_info.dart';

class ProfilePage extends StatelessWidget {
  final profile = Profile.generateProfile();
  ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: PersonInfo(profile),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              Text('Collections'),
              Text('Creations'),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0 /* no shadow */,
      backgroundColor: Colors.transparent,
      leading: _buildIcon(
        Icons.arrow_back_ios_new_outlined,
      ),
      actions: [
        _buildIcon(
          Icons.more_vert_outlined,
        ),
      ],
    );
  }
}

IconButton _buildIcon(IconData icon) {
  return IconButton(
    onPressed: () {},
    splashRadius: 25,
    icon: Icon(
      icon,
      color: Colors.black,
      size: 20,
    ),
  );
}
