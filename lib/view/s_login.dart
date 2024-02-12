import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mon_map/constants.dart';
import 'package:mon_map/global_styles.dart';
import 'package:mon_map/view/s_main.dart';
import 'package:mon_map/view/widgets/w_primary_btn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              LoginHeaderWidget(),
              SizedBox(height: 50),
              LoginTextField(hintText: "아이디"),
              SizedBox(height: 30),
              LoginTextField(hintText: "비밀번호"),
              SizedBox(height: 50),
              LoginTextButtonsWrapper(),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: PrimaryButtonWidget(
                  label: "로그인하기",
                  onPressed: () {
                    Get.to(() => MainScreen());
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginTextButtonsWrapper extends StatelessWidget {
  const LoginTextButtonsWrapper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            '아이디 찾기',
            style: CustomText.medium,
          ),
        ),
        Container(
          width: 1.5,
          height: 10,
          color: Palette.black,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            '비밀번호 찾기',
            style: CustomText.medium,
          ),
        ),
        Container(
          width: 1.5,
          height: 10,
          color: Palette.black,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              '회원가입',
              style: CustomText.medium,
            )),
        Spacer(),
      ],
    );
  }
}

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: CustomText.medium,
        ),
      ),
    );
  }
}

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '로그인',
              style: CustomText.bold.copyWith(fontSize: 20),
            ),
          ),
          Image.asset(
            Constants.AppLogoUrl,
            width: 200,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '안녕하세요.\nmonMAP입니다.',
              style: CustomText.bold.copyWith(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '서비스 이용을 위해 로그인을 해주세요.',
              style: CustomText.bold.copyWith(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
