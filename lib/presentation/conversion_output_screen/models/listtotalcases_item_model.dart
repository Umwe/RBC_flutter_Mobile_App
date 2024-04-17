import '../../../core/app_export.dart';

/// This class is used in the [listtotalcases_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListtotalcasesItemModel {
  ListtotalcasesItemModel({this.image, this.id}) {
    image = image ?? ImageConstant.imgImage8;
    id = id ?? "";
  }

  String? image;

  String? id;
}
