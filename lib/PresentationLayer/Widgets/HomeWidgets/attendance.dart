import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_app/Constants/get_routes.dart';
import 'package:teacher_app/Constants/links.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';

class Attendance extends StatelessWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Get.toNamed(AppRoutes.attendanceScreen),
      child: Container(
        height: 70,
        width: 360,
        decoration: BoxDecoration(
            color: UIColors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            border:
            Border.all(width: 2, color: UIColors.primary)),
        child: Row(
          children: [
            const Expanded(
              flex: 1,
              child: Icon(
                Icons.checklist_rtl,
                size: 40,
                color: UIColors.purple,
              ),
            ),
            Expanded(
                flex: 3,
                child: ListTile(
                  title: Text(
                    "تسجيل الحضور والغياب ",
                    style: UITextStyle.bodyNormal.copyWith(
                        color: UIColors.purple, fontSize: 20),
                  ),
                  subtitle: Text(
                    "تسجيل  الطلاب الحاضرين والغائبين",
                    style: UITextStyle.bodyNormal.copyWith(
                        fontSize: 16, color: UIColors.normalText),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
