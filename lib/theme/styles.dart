import 'package:flutter/material.dart';

/// This class holds all the styling for the app.
class Styles {
  /// Default AppBar height.
  static const double appBarHeight = 72.0;

  /// Primary color (#8D1230).
  static const Color primary = Color(0xff8D1230);

  /// Secondary color (#D8AE1A).
  static const Color secondary = Color(0xffD8AE1A);

  /// Common colors.
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color transparent = Color(0x00000000);

  /// Neutral grey color (#C4C4C4).
  static const Color grey = Color(0xffC4C4C4);

  /// Error color (#B00020) for error-related UI elements.
  static const Color error = Color(0xffB00020);

  /// Default font for titles (Raleway).
  static const String fontFamilyTitles = 'Raleway';

  /// Default font for text (Source Sans Pro).
  static const String fontFamilyNormal = 'SourceSansPro';

  /// Shadow for headers.
  static final List<BoxShadow> headerBoxShadow = [
    const BoxShadow(
      color: primary,
      spreadRadius: 0,
      blurRadius: 5,
      offset: Offset.zero,
    )
  ];

  /// General-purpose shadow for normal UI elements.
  static final List<BoxShadow> normalBoxShadow = [
    const BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.3),
      spreadRadius: 0,
      blurRadius: 10,
      offset: Offset(0, 2),
    )
  ];

  /// Main border radius value.
  static const double mainBorderRadiusValue = 16.0;

  /// Default border radius with all corners circular.
  static const BorderRadius mainBorderRadius =
      BorderRadius.all(Radius.circular(mainBorderRadiusValue));

  /// Horizontal padding value.
  static const double mainHorizontalPadding = 24.0;

  /// Vertical padding value.
  static const double mainVerticalPadding = 16.0;

  /// Default spacing between widgets.
  static const double mainSpacing = 20.0;

  /// Padding inside widgets.
  static const double mainInsidePadding = 20.0;

  /// Depth for background banner elements.
  static const double backgroundBannerDepth = 0.5;

  /// Dynamic spacing for tablet UI (optional addition).
  static const double tabletHorizontalPadding = 32.0;
  static const double tabletVerticalPadding = 24.0;

  /// Font size constants for text (optional addition).
  static const double fontSizeSmall = 12.0;
  static const double fontSizeMedium = 14.0;
  static const double fontSizeLarge = 16.0;
  static const double fontSizeExtraLarge = 20.0;
}

/// Determines if the app should render the UI for a tablet layout.
/// Uses a breakpoint of 600 pixels.
bool useTabletLayout(BuildContext context) {
  return MediaQuery.of(context).size.width > 600;
}
