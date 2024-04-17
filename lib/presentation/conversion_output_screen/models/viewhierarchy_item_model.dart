import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ViewhierarchyItemModel {
  ViewhierarchyItemModel(
      {this.image1, this.text1, this.text2, this.image2, this.id}) {
    image1 = image1 ?? ImageConstant.imgImage4;
    text1 = text1 ?? "Internal medecine dpt";
    text2 = text2 ?? "cases";
    image2 = image2 ?? ImageConstant.imgImage6;
    id = id ?? "";
  }

  String? image1;

  String? text1;

  String? text2;

  String? image2;

  String? id;
}
