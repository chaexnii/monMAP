import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mon_map/constants.dart';
import 'package:mon_map/view/s_login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () async {
      // 2초의 딜레이 이후에  페이지로 이동합니다.
      Get.to(
        () => const LoginScreen(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          children: [
            Spacer(),
            // 앱 로고 이미지를 표시합니다.
            Image.asset(
              Constants.AppLogoUrl,
              width: 300,
              height: 300,
            ),
            Spacer(),
            // 팀 로고 이미지를 표시합니다.
            Image.asset(
              Constants.teamLogoUrl,
              width: 200,
              height: 100,
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}

// Spacer() : 빈 공간을 만들어주는 위젯, 가능한 모든 공간을 차지하도록 설정됩니다.