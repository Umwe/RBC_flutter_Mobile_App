import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/viewhierarchy_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(this.viewhierarchyItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: viewhierarchyItemModelObj.image1!,
          height: 34.v,
          width: 40.h,
          radius: BorderRadius.circular(
            4.h,
          ),
          margin: EdgeInsets.only(bottom: 17.v),
        ),
        Padding(
          padding: EdgeInsets.only(top: 6.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  viewhierarchyItemModelObj.text1!,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Text(
                viewhierarchyItemModelObj.text2!,
                style: theme.textTheme.bodyMedium,
              )
            ],
          ),
        ),
        CustomImageView(
          imagePath: viewhierarchyItemModelObj.image2!,
          height: 41.v,
          width: 80.h,
          radius: BorderRadius.circular(
            4.h,
          ),
          margin: EdgeInsets.only(bottom: 8.v),
        )
      ],
    );
  }
}
