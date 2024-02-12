import 'package:flutter/material.dart';
import 'package:mon_map/global_styles.dart';

// 이미지 파일, 위젯 등을 미리 배치해보기 위해 사용하는 와이어프레임용 위젯입니다.
class CustomPlaceHolder extends StatelessWidget {
  const CustomPlaceHolder({
    super.key,
    required this.width,
    required this.height,
    required this.label,
    this.color,
  });

  final double width;
  final double height;
  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width와 height를 넘겨받은 값으로 설정합니다.
      width: width,
      height: height,
      // color를 넘겨주지 않으면 기본값으로 primary color를 사용합니다.
      color: color ?? Palette.primary,
      alignment: Alignment.center,
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
