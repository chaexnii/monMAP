import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mon_map/global_styles.dart';
import 'package:mon_map/view/community/s_setting_address.dart';
import 'package:mon_map/view/community/w_before_progress_item.dart';
import 'package:mon_map/view/community/w_complaint_Item.dart';
import 'package:mon_map/view/widgets/w_primary_btn.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class CommunityFragment extends StatefulWidget {
  const CommunityFragment({Key? key}) : super(key: key);

  @override
  _CommunityFragmentState createState() => _CommunityFragmentState();
}

class _CommunityFragmentState extends State<CommunityFragment> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {
            // 주소 설정 페이지로 이동
            Get.to(() => AddressSettingScreen());
          },
        ),
        centerTitle: false,
        title: Text('동구 신천 1.2동(내동네)',
            style: CustomText.basic.copyWith(
              fontSize: 18,
            )),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
            ),
            child: TabBar(
              splashBorderRadius: BorderRadius.circular(30),
              tabs: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    '민원사항 보기',
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    '민원접수 진행 현황',
                  ),
                ),
              ],
              labelStyle: CustomText.bold.copyWith(fontSize: 17),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Palette.primary,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              controller: _tabController,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ComplaintItem(),
                        ComplaintItem(),
                        ComplaintItem(),
                        ComplaintItem(),
                        ComplaintItem(),
                        ComplaintItem(),
                        ComplaintItem(),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        BeforeProgressItem(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 120,
        child: FloatingActionButton(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          onPressed: () {
            WoltModalSheet.show(
                context: context,
                pageListBuilder: (context) {
                  return [
                    WoltModalSheetPage(
                      hasSabGradient: false,
                      hasTopBarLayer: false,
                      child: EditComplaintModal(),
                    )
                  ];
                });
            // 민원 접수 페이지로 이동
            // Get.to(()=> ComplaintPage());
          },
          child: Text(
            '+ 민원 접수',
            style: CustomText.bold.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class EditComplaintModal extends StatelessWidget {
  const EditComplaintModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height * 0.98,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text(
              '민원 접수하기',
              style: CustomText.bold.copyWith(fontSize: 22),
            ),
            SizedBox(
              height: 20,
            ),
            EditComplaintTextField(),
            SizedBox(height: 10),
            EditComplaintTextField(
              label: "사진/영상",
              hintText: "드라이브에서 업로드할 파일을 선택하세요.",
              icon: Icons.image_rounded,
            ),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: EditComplaintLabelContainer(label: '개선사항'),
            ),
            SizedBox(height: 20),
            TextField(
              minLines: 10,
              maxLines: 40,
              maxLength: 300,
              decoration: InputDecoration(
                filled: true,
                fillColor: Palette.searchBg,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintStyle: CustomText.basic.copyWith(
                  color: Colors.grey[500],
                  fontSize: 13,
                ),
                hintText: '어떤 개선사항이 필요한지 작성해주세요.',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            PrimaryButtonWidget(
              onPressed: () {
                Get.back();
              },
              label: '접수하기',
            ),
          ],
        ),
      ),
    );
  }
}

class EditComplaintTextField extends StatelessWidget {
  const EditComplaintTextField({
    super.key,
    this.label,
    this.hintText,
    this.icon,
  });
  final String? label;
  final String? hintText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        EditComplaintLabelContainer(label: label),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintStyle: CustomText.basic.copyWith(
                color: Colors.grey[500],
                fontSize: 13,
              ),
              hintText: hintText ?? '민원 접수하고 싶은 위치를 선택해주세요',
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          icon ?? Icons.place_rounded,
          size: 25,
          color: Palette.black,
        )
      ],
    );
  }
}

class EditComplaintLabelContainer extends StatelessWidget {
  const EditComplaintLabelContainer({
    super.key,
    required this.label,
  });

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.indigo[100],
        border: Border.all(
          color: Palette.black,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        label ?? '위치',
        style: CustomText.bold.copyWith(fontSize: 16),
      ),
    );
  }
}
