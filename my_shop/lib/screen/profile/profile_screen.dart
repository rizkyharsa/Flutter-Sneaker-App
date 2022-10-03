import 'package:flutter/material.dart';
import 'package:my_shop/data/user_preference.dart';
import 'package:my_shop/screen/profile/widget/number_widget.dart';
import 'package:my_shop/screen/profile/widget/profile_widget.dart';

import '../../data/user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreference.myUser;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color(0xFF545D68),
          ),
          onPressed: () {},
        ),
        // title: const Text(
        //   'Profile',
        //   style: TextStyle(
        //     fontFamily: 'Varela',
        //     fontSize: 18.0,
        //     color: Color(0xFF545D68),
        //   ),
        // ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.dark_mode_outlined,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: ()async{}
          ),
          const SizedBox(height: 24,),
          buildName(user),
          const SizedBox(height: 24,),
          NumberWidget(),
        ],
      ),
    );
  }

  Widget buildName(User user)=>Column(
    children: [
      Text(
        user.name,
        style: TextStyle(
          fontFamily: 'Varela',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 4,),
      Text(
        user.email,
        style: TextStyle(
          fontFamily: 'Varela',
          fontSize: 16,
          color: Colors.grey,
        ),
      )
    ],
  );

}
