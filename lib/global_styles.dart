// 앱에 전체적으로 사용되는 스타일을 정리해둔 파일입니다.
// 새로운 변수를 추가할 때는 static 키워드로 지정해주고 위젯 내에서 사용할 때는 인스턴스 생성없이 ClassName.변수명 으로 사용합니다.

// 앱에서 사용되는 컬러를 정의합니다.
import 'package:flutter/material.dart';

class Palette {
  static const background = Color(0xfff8f8f8);
  static const primary = Color(0xff2e3d86);
  static const black = Color(0xff444444);
  static const searchBg = Color(0xFFEFEFEF);
}

// 앱에서 사용되는 텍스트 스타일을 정의합니다.
class CustomText {
  static final basic = TextStyle(
    fontFamily: "locus",
    color: Palette.black,
    fontSize: 16,
  );

  static final medium = TextStyle(
    fontFamily: "locus",
    color: Palette.black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static final bold = TextStyle(
    fontFamily: "locus",
    color: Palette.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
