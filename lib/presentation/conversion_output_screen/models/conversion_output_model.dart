import '../../../core/app_export.dart';
import 'listtotalcases_item_model.dart';
import 'viewhierarchy_item_model.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ConversionOutputModel {
  List<ListtotalcasesItemModel> listtotalcasesItemList = [
    ListtotalcasesItemModel(image: ImageConstant.imgImage8)
  ];

  List<ViewhierarchyItemModel> viewhierarchyItemList = [
    ViewhierarchyItemModel(
        image1: ImageConstant.imgImage4,
        text1: "Internal medecine dpt",
        text2: "cases",
        image2: ImageConstant.imgImage6)
  ];
}
