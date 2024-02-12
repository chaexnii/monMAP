import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:mon_map/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NaverMapSdk.instance.initialize(
      clientId: '7phhpluueh',
      onAuthFailed: (e) {
        print('네이버 지도 인증 실패: $e');
      });
  runApp(const MyApp());
}
