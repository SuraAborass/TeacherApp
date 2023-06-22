import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';

class SendAlerts extends StatelessWidget {
  const SendAlerts({Key? key}) : super(key: key);

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
              Icons.warning,
              size: 40,
              color: UIColors.purple,
            ),
          ),
          Expanded(
              flex: 3,
              child: ListTile(
                title: Text(
                  "إرسال تنبيهات",
                  style: UITextStyle.bodyNormal.copyWith(
                      color: UIColors.purple, fontSize: 20),
                ),
                subtitle: Text(
                  "إنشاء تنبيه لأهل الطالب ",
                  style: UITextStyle.bodyNormal.copyWith(
                      fontSize: 16, color: UIColors.normalText),
                ),
              ))
        ],
      ),
    );
  }
}
