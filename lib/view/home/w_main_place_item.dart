import 'package:flutter/material.dart';
import 'package:mon_map/global_styles.dart';
import 'package:mon_map/view/widgets/w_custom_placeholder.dart';

// 실제 이미지를 넣는다면 params로 이미지를 넘겨주세요
// 해당 param 부분은 nullable(?)로 처리해뒀습니다.

class MainPlaceItemWidget extends StatelessWidget {
  const MainPlaceItemWidget({
    super.key,
    required this.label,
    this.image1,
    this.image2,
  });

  final String label;
  final String? image1;
  final String? image2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: CustomText.bold,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 이미지를 넣어주세요
              // Image.asset(image1,width: 150,height: 150)
              CustomPlaceHolder(
                width: 150,
                height: 150,
                label: '장소 이미지',
              ),
              SizedBox(width: 10),
              // 이미지를 넣어주세요
              // Image.asset(image2,width: 150,height: 150)
              CustomPlaceHolder(
                width: 150,
                height: 150,
                label: '장소 이미지',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
