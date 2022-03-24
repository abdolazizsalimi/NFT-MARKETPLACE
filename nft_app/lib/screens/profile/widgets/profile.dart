import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Center(
        child: Text('Profile Page'),
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
