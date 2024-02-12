import 'package:flutter/material.dart';
import 'package:mon_map/global_styles.dart';
import 'package:mon_map/view/home/w_main_place_item.dart';
import 'package:mon_map/view/widgets/w_custom_placeholder.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Palette.black,
                width: 1,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomPlaceHolder(
                width: 50,
                height: 50,
                label: '유저\n사진',
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '잼별',
                  ),
                  Text(
                    '민원: 4 포인트: 1000 pts',
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Palette.background,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  MainPlaceItemWidget(
                    label: "잼별님의 민원으로 개선된 장소들",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MainPlaceItemWidget(
                    label: "잼별님의 후원으로 개선된 장소들",
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
