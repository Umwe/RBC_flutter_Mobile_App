import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/conversion_output_model.dart';
import '../models/listtotalcases_item_model.dart';
import '../models/viewhierarchy_item_model.dart';

/// A provider class for the ConversionOutputScreen.
///
/// This provider manages the state of the ConversionOutputScreen, including the
/// current conversionOutputModelObj
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ConversionOutputProvider extends ChangeNotifier {
  ConversionOutputModel conversionOutputModelObj = ConversionOutputModel();

  @override
  void dispose() {
    super.dispose();
  }
}
