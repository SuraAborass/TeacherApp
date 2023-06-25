import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../BusinessLayer/Controllers/students_controller.dart';
import '../../Constants/colors.dart';
import '../../Constants/text_styles.dart';
import '../../DataAccessLayer/Models/student.dart';


class StudentItem extends StatelessWidget {
   StudentItem({Key? key,required this.student}) : super(key: key);
  final Student student;
  final StudentsController studentsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: Get.width,
        height: 56,
        decoration: const BoxDecoration(
          color: UIColors.lightWhite,
        ),
        child: Row(
          children:  [
             Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(student.image),
                  // backgroundColor: UIColors.circleAvatarBackground,
                )
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Text("${student.firstName} ${student.secondName}",
                      style: UITextStyle.bodyNormal.copyWith(color: UIColors.pageTitle,fontSize: 18)),
                )),
            Expanded(child: IconButton(
              icon:  Icon(!studentsController.isAdded.value
                ?Icons.check_circle_outline_outlined
                :Icons.check_circle_rounded ,color: UIColors.purple ,size: 40,),
              onPressed:(){
                studentsController.toggleAdd(student.id);
              },))
          ],
        ));
  }
}
