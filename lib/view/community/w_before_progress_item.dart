import 'package:flutter/material.dart';
import 'package:mon_map/global_styles.dart';
import 'package:mon_map/view/community/w_complaint_progress_indicator.dart';
import 'package:mon_map/view/community/w_status_item.dart';
import 'package:mon_map/view/widgets/w_custom_placeholder.dart';

class BeforeProgressItem extends StatelessWidget {
  const BeforeProgressItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.indigo[50],
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              StatusItem(),
              SizedBox(width: 10),
              Text(
                'oo구 ㅁㅁ동 가로등 설치 사업',
                style: CustomText.bold.copyWith(
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 이미지를 대체해주세요.
              CustomPlaceHolder(
                width: 120,
                height: 120,
                label: "이미지",
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 200,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'ㅇㅇ구 ㅁㅁ동 골목이 너무 어두워요 ㅠㅠ 가롣등 설치를 통해 어두운 밤길에도 밝아 안전하면 좋겠어요.',
                      style: CustomText.bold.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('이 사업 후원하기'),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          ComplaintPrgoressIndicator()
        ],
      ),
    );
  }
}
