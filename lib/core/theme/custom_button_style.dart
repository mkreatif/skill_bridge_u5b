part of app_core;

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillOnPrimaryContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
        ),
      );

  // Outline button style
  static ButtonStyle get outlinePrimaryTL10 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );

  static ButtonStyle get baseStyle => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray800,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );
}
