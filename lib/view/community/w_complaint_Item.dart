import 'package:flutter/material.dart';
import 'package:mon_map/global_styles.dart';
import 'package:mon_map/view/widgets/w_custom_placeholder.dart';

// 이미지를 실제 이미지로 대체해주세요.
// 내용 변경을 위해서는 param에 내용을 넣어주세요.
// 수정 용이하시라고 커스텀 위젯으로 만들었으며, label, body, nickName ,onTap()를 받습니다.

// 프로필 이미지는 개인적으로 둥근 shape이 적절할 것 같습니다.
// 플러터에 있는 CircleAvatar 위젯으로 대체하는 것도 방법일 것 같아요.

// Example
// label : 신천동 CU옆 골목
// body : 이 골목 너무 어둡고 위험한 것 같아요.\n가로등 설치가 필요해 보입니다..
// onTap : () => print('onPressed')
class ComplaintItem extends StatelessWidget {
  const ComplaintItem({
    super.key,
    this.label,
    this.body,
    this.nickName,
    this.onTap,
  });
  final String? label;
  final String? body;
  final String? nickName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        width: double.infinity,
        height: 120,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label ?? '신천동 CU옆 골목',
                  style: CustomText.bold,
                ),
                Text(
                  '지도에서 위치 보기',
                  style: CustomText.basic.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // 이미지로 대체해주세요.
                    CustomPlaceHolder(
                      width: 45,
                      height: 45,
                      label: '프로필 이미지',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 220,
                      child: Text(
                        body ?? '이 골목 너무 어둡고 위험한 것 같아요.\n가로등 설치가 필요해 보입니다...',
                        style: CustomText.basic.copyWith(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '사진\n및 영상\n3+',
                    style: CustomText.basic.copyWith(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            // 닉네임 표시 부분입니다.
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(nickName ?? '잼별'),
            )
          ],
        ),
      ),
    );
  }
}
