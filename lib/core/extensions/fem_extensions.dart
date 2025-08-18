import 'package:todo_app/core/utils/size_config.dart';

extension FemDouble on double {
  double get fem => this * SizeConfig.fem;
  double get ffem => this * SizeConfig.ffem;
}

extension FemInt on int {
  double get fem => toDouble() * SizeConfig.fem;
  double get ffem => toDouble() * SizeConfig.ffem;
}