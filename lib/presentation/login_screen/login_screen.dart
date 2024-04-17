import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'models/login_model.dart';
import 'provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginScreenState createState() => LoginScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: LoginScreen(),
    );
  }
}
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: 382.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 33.h,
                  vertical: 54.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 17.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle1,
                      height: 122.v,
                      width: 278.h,
                      radius: BorderRadius.circular(
                        38.h,
                      ),
                      margin: EdgeInsets.only(left: 8.h),
                    ),
                    SizedBox(height: 35.v),
                    Container(
                      margin: EdgeInsets.only(right: 30.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 32.h,
                        vertical: 13.v,
                      ),
                      decoration: AppDecoration.fillOnPrimaryContainer,
                      child: Column(
                        children: [
                          SizedBox(height: 8.v),
                          SizedBox(
                            width: 220.h,
                            child: Text(
                              "msg_welcome_to_rwanda".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleLarge,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 71.v),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "msg_welcome_back_please".tr,
                        style:
                            CustomTextStyles.bodyMediumInterSecondaryContainer,
                      ),
                    ),
                    SizedBox(height: 46.v),
                    _buildEmailSection(context),
                    SizedBox(height: 22.v),
                    _buildPasswordSection(context),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.only(right: 21.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildExtraSection(context),
                          Text(
                            "msg_forgot_password".tr,
                            style: CustomTextStyles.bodyLargeInterBluegray800
                                .copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 19.v),
                    CustomElevatedButton(
                      text: "lbl_login".tr,
                      margin: EdgeInsets.only(right: 22.h),
                      buttonTextStyle:
                          CustomTextStyles.titleMediumInterWhiteA700,
                      onPressed: () {
                        onTapLogin(context);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_email".tr,
            style: CustomTextStyles.titleMediumInterOnSecondaryContainer,
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: Selector<LoginProvider, TextEditingController?>(
              selector: (context, provider) => provider.emailController,
              builder: (context, emailController, child) {
                return CustomTextFormField(
                  controller: emailController,
                  hintText: "msg_quizerahubert_gmail_com".tr,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
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
  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_password".tr,
            style: CustomTextStyles.titleMediumInterBluegray800,
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 16.h),
            child: Selector<LoginProvider, TextEditingController?>(
              selector: (context, provider) => provider.passwordController,
              builder: (context, passwordController, child) {
                return CustomTextFormField(
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildExtraSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.v),
      child: Selector<LoginProvider, bool?>(
        selector: (context, provider) => provider.extraSection,
        builder: (context, extraSection, child) {
          return CustomCheckboxButton(
            text: "lbl_remember_me".tr,
            value: extraSection,
            onChange: (value) {
              context.read<LoginProvider>().changeCheckBox1(value);
            },
          );
        },
      ),
    );
  }

  /// Navigates to the conversionOutputScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.conversionOutputScreen,
    );
  }
}
