import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:get/get.dart';
import 'package:mon_map/global_styles.dart';
import 'package:mon_map/view/widgets/w_custom_placeholder.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class MapFragment extends StatefulWidget {
  const MapFragment({super.key});

  @override
  State<MapFragment> createState() => _MapFragmentState();
}

class _MapFragmentState extends State<MapFragment> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      WoltModalSheet.show(
          context: context,
          pageListBuilder: (context) {
            return [
              WoltModalSheetPage(
                  hasSabGradient: false,
                  hasTopBarLayer: false,
                  child: Container(
                    width: double.infinity,
                    height: 280,
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        Text(
                          'Customize your map!',
                          style: CustomText.bold.copyWith(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 50),
                        CustomizeRow(),
                        SizedBox(height: 30),
                        CustomizeRow()
                      ],
                    ),
                  ))
            ];
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            NaverMap(
              options: NaverMapViewOptions(),
              onMapReady: (controller) {
                print("Map is ready");
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '목적지를 입력하세요',
                          hintStyle: CustomText.basic.copyWith(color: Colors.grey[500]),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[500],
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      width: 60,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Palette.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.route_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(height: 5),
                          Text(
                            '길 찾기',
                            style: CustomText.basic.copyWith(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomizeRow extends StatelessWidget {
  const CustomizeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // 원하는 아이콘 넣으시면 돼요.
        CustomPlaceHolder(
          width: 60,
          height: 60,
          label: '아이콘',
        ),
        CustomPlaceHolder(
          width: 60,
          height: 60,
          label: '아이콘',
        ),
        CustomPlaceHolder(
          width: 60,
          height: 60,
          label: '아이콘',
        ),
        CustomPlaceHolder(
          width: 60,
          height: 60,
          label: '아이콘',
        )
      ],
    );
  }
}
