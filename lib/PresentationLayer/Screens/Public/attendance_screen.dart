import 'package:flutter/material.dart';
import 'package:teacher_app/Constants/colors.dart';
import 'package:get/get.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/page_title.dart';
import '../../Widgets/Public/school_appbar.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: UIColors.white,
        appBar: schoolAppBar(),
        drawer: SchoolDrawer(),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: MaterialButton(
            height: 56,
            //minWidth: Get.width,
            color: UIColors.primary,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18.0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('حفظ',
                    style: UITextStyle.bodyNormal.copyWith(fontSize: 22,color: UIColors.white))
              ],
            ),
            onPressed: () async {},
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: pageTitle("تسجيل الحضور والغياب"),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                width: Get.width,
                height: 56,
                decoration: const BoxDecoration(
                  color: UIColors.lightWhite,
                ),
                child: Row(
                  children:  [
                    const Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/images/Mask Group 1.png"),
                       // backgroundColor: UIColors.circleAvatarBackground,
                      )
                    ),
                     Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Text("سرى أبوراس",
                              style: UITextStyle.bodyNormal.copyWith(color: UIColors.pageTitle,fontSize: 18)),
                        )),
                    Expanded(child: IconButton(
                      onPressed:(){},
                      icon: const Icon(Icons.check_circle,color: UIColors.purple ,size: 40,),))
                  ],
                )),
            const SizedBox(height: 5,),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                width: Get.width,
                height: 56,
                decoration: const BoxDecoration(
                  color: UIColors.lightWhite,
                ),
                child: Row(
                  children:  [
                    const Expanded(
                        flex: 1,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/Mask Group 1.png"),
                          // backgroundColor: UIColors.circleAvatarBackground,
                        )
                    ),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Text("سرى أبوراس",
                              style: UITextStyle.bodyNormal.copyWith(color: UIColors.pageTitle,fontSize: 18)),
                        )),
                    Expanded(child: IconButton(
                      onPressed:(){},
                      icon: const Icon(Icons.check_circle,color: UIColors.purple ,size: 40,),))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
