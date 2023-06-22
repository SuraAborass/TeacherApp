import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';

class ExamResults extends StatelessWidget {
  const ExamResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Icons.task_alt,
              size: 40,
              color: UIColors.purple,
            ),
          ),
          Expanded(
              flex: 3,
              child: ListTile(
                title: Text(
                  "نتائج الإمتحان ",
                  style: UITextStyle.bodyNormal.copyWith(
                      color: UIColors.purple, fontSize: 20),
                ),
                subtitle: Text(
                  "كتابة نتائج الإمتحان",
                  style: UITextStyle.bodyNormal.copyWith(
                      fontSize: 16, color: UIColors.normalText),
                ),
              ))
        ],
      ),
    );
  }
}
