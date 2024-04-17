import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'models/conversion_output_model.dart';
import 'models/listtotalcases_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'provider/conversion_output_provider.dart';
import 'widgets/listtotalcases_item_widget.dart';
import 'widgets/viewhierarchy_item_widget.dart';

class ConversionOutputScreen extends StatefulWidget {
  const ConversionOutputScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ConversionOutputScreenState createState() => ConversionOutputScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ConversionOutputProvider(),
      child: ConversionOutputScreen(),
    );
  }
}

class ConversionOutputScreenState extends State<ConversionOutputScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 27.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRowContainer(context),
                  SizedBox(height: 41.v),
                  _buildSummaryColumn(context),
                  SizedBox(height: 38.v),
                  _buildWeeklyColumn(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "lbl_welcome_africa".tr,
              margin: EdgeInsets.only(right: 95.h),
            ),
            SizedBox(height: 4.v),
            AppbarTitle(
              text: "lbl_admin_dashboard".tr,
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage2,
          margin: EdgeInsets.only(
            left: 46.h,
            top: 2.v,
            right: 46.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRowContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 12.h,
        right: 46.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.outlinePrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage3,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              40.h,
            ),
            margin: EdgeInsets.only(
              left: 13.h,
              top: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 18.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_weekly_report".tr,
                  style: CustomTextStyles.titleMediumBlue100,
                ),
                SizedBox(height: 10.v),
                Text(
                  "msg_last_updated_apr".tr,
                  style: CustomTextStyles.bodyMediumWhiteA700,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSummaryColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_summary".tr,
                  style: theme.textTheme.titleMedium,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage5,
                  height: 10.v,
                  width: 31.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 11.v,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4.v),
          SizedBox(
            height: 172.v,
            child: Consumer<ConversionOutputProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 1.h,
                    );
                  },
                  itemCount: provider
                      .conversionOutputModelObj.listtotalcasesItemList.length,
                  itemBuilder: (context, index) {
                    ListtotalcasesItemModel model = provider
                        .conversionOutputModelObj.listtotalcasesItemList[index];
                    return ListtotalcasesItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWeeklyColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_weekly".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 34.v),
          Padding(
            padding: EdgeInsets.only(right: 51.h),
            child: Consumer<ConversionOutputProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20.v,
                    );
                  },
                  itemCount: provider
                      .conversionOutputModelObj.viewhierarchyItemList.length,
                  itemBuilder: (context, index) {
                    ViewhierarchyItemModel model = provider
                        .conversionOutputModelObj.viewhierarchyItemList[index];
                    return ViewhierarchyItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
