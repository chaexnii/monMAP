import 'package:flutter/material.dart';
import 'package:mon_map/global_styles.dart';

// 메인 버튼 UI입니다.
// 콜백 함수와 버튼 라벨을 받아서 버튼을 생성합니다.
class PrimaryButtonWidget extends StatelessWidget {
  const PrimaryButtonWidget({
    super.key,
    required this.onPressed,
    required this.label,
    this.width,
    this.height,
  });
  final VoidCallback onPressed;
  final String label;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: CustomText.bold.copyWith(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
