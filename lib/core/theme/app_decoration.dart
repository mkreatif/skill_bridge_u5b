part of  app_core;

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray800,
      );

  // Gradient decorations
  static BoxDecoration get gradientIndigoToLime => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.indigo300,
            appTheme.lime100,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoToLime100 => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            appTheme.indigo300,
            appTheme.lime100,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlinePrimary => const BoxDecoration();
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
