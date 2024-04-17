import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listtotalcases_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListtotalcasesItemWidget extends StatelessWidget {
  ListtotalcasesItemWidget(this.listtotalcasesItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListtotalcasesItemModel listtotalcasesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 151.h,
      child: CustomImageView(
        imagePath: listtotalcasesItemModelObj.image!,
        height: 136.v,
        width: 151.h,
        radius: BorderRadius.circular(
          4.h,
        ),
        margin: EdgeInsets.only(bottom: 36.v),
      ),
    );
  }
}
