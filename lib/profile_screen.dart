import 'package:flutter/material.dart';
import 'package:modern_navbar/components/profile_menu.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:modern_navbar/constant/constant.dart';
import '../components/profile_img.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 24,
          color: iconSecondaryColor,
        ),
        title: Center(
            child: Text(
          'Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(
            Icons.light_mode,
            size: 24,
            color: iconSecondaryColor,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            // image profile
            const ProfileImage(),
            // detail_profile
            const SizedBox(
              height: 20,
            ),
            Text(
              'Vorameth Patummasut',
              style: textTitle,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'woramet.t2@gmail.com',
              style: textSubTitle,
            ),

            // BTN
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 35,
              child: Container(
                // color: Colors.amber,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                    child: Text(
                  'Edit Profile',
                  style: textBtn,
                )),
              ),
            ),

            // Menu profile
            const SizedBox(height: 30,),
            const ProfileMenu(title: 'Setting', icons: Icons.settings,),
            const ProfileMenu(title: 'Billing Detail', icons: Icons.wallet,),
            const ProfileMenu(title: 'User Management', icons: Icons.person,),
            const SizedBox(height: 50,),
            const ProfileMenu(title: 'Information', icons: Icons.info_outline,),
            const SizedBox(height: 15,),
            const ProfileMenu(title: 'Logout', icons: Icons.logout,),
          ],
        ),
      ),
    );
  }
}

