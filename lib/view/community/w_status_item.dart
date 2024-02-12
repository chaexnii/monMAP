import 'package:flutter/material.dart';
import 'package:mon_map/global_styles.dart';

class StatusItem extends StatelessWidget {
  // 민원접수 진행 현황에서 사용되는 커스텀 위젯입니다.
  // label을 변경하여 다른 상황에도 사용할 수 있습니다.
  const StatusItem({
    super.key,
    this.label,
  });
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 40,
      alignment: Alignment.center,
      child: Text(
        label ?? '진행 전',
        style: CustomText.bold,
      ),
      decoration: BoxDecoration(
        color: Colors.indigo[100],
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
