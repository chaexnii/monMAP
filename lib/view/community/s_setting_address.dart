import 'package:flutter/material.dart';
import 'package:mon_map/global_styles.dart';

class AddressSettingScreen extends StatefulWidget {
  const AddressSettingScreen({super.key});

  @override
  State<AddressSettingScreen> createState() => _AddressSettingScreenState();
}

class _AddressSettingScreenState extends State<AddressSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '주소 설정',
          style: CustomText.bold.copyWith(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: TextField(
                onChanged: (value) {},
                onEditingComplete: () {},
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  fillColor: Palette.searchBg,
                  filled: true,
                  contentPadding: const EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: Colors.grey[800],
                    size: 24,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "지번, 도로명, 건물명으로 검색",
                  hintStyle: CustomText.basic.copyWith(
                    fontSize: 16,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_searching_rounded,
                  size: 18,
                ),
                SizedBox(width: 10),
                Text(
                  '현재 위치로 설정',
                  style: CustomText.medium.copyWith(
                    fontSize: 16,
                    color: Colors.indigo[400],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SettingItem(),
            SettingItem(
              icon: Icons.work_outline,
              label: "직장 추가",
            ),
            SettingItem(
              icon: Icons.star,
              label: "기타 장소 추가",
            ),
          ],
        ),
      ),
    );
  }
}

// 라벨과 아이콘을 수정해서 사용할 수 있도록 작업해뒀습니다.
class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    this.icon,
    this.label,
  });

  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Colors.grey[400]!,
          width: 1,
        ),
      )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon ?? Icons.home,
            size: 24,
          ),
          SizedBox(width: 10),
          Text(
            label ?? '우리집 추가',
            style: CustomText.bold.copyWith(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
