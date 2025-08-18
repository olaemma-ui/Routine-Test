/// Design system constants based on the original design (e.g., Figma)
class DesignConstants {
  // 1. Base Design Dimensions (Reference Device)
  static const double designWidth = 414; // iPhone 11 width in logical pixels
  static const double designHeight = 896; // iPhone 11 height

  // 2. Border Radius
  static const double borderRadiusS = 8;
  static const double borderRadiusM = 16;
  static const double borderRadiusL = 20;
  static const double borderRadiusXL = 24;
  static const double borderRadiusCircle = 1000; // For perfect circles

  // 3. Component Dimensions
  static const double buttonHeight = 48;
  static const double inputFieldHeight = 44;
  static const double appBarHeight = 50;

  // 4. Padding
  static const double screenPadding = 20;
  static const double paddingLg = 20;

  // 5. Animation Durations
  static const Duration quickAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 350);
  static const Duration slowAnimation = Duration(milliseconds: 500);
}
