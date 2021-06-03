import 'package:flutter/material.dart';
import '';

class LoginButtonTheme {
  const LoginButtonTheme({
    this.backgroundColor,
    this.highlightColor,
    this.splashColor,
    this.elevation,
    this.highlightElevation,
    this.shape,
  });

  /// Color to be used for the unselected, enabled button's
  /// background.
  final Color? backgroundColor;

  /// The highlight color of the ink response when pressed. If this property is
  /// null then the highlight color of the theme, [ThemeData.highlightColor],
  /// will be used.
  final Color? highlightColor;

  /// The splash color for this button's [InkWell].
  final Color? splashColor;

  /// The z-coordinate to be used for the unselected, enabled
  /// button's elevation foreground.
  final double? elevation;

  /// The z-coordinate to be used for the selected, enabled
  /// button's elevation foreground.
  final double? highlightElevation;

  /// The shape to be used for the floating action button's [Material].
  final ShapeBorder? shape;
}

class LoginTheme with ChangeNotifier {
  LoginTheme({
    this.pageColorLight = const Color(0xfffffc371),
    this.pageColorDark = const Color(0xfffFC846A),
    this.primaryColor = Colors.black87,
    this.accentColor = Colors.black87,
    this.errorColor,
    this.cardTheme = const CardTheme(
      color: Colors.transparent,
      elevation: 0,
    ),
    this.inputTheme = const InputDecorationTheme(
      filled: true,
    ),
    this.buttonTheme = const LoginButtonTheme(),
    this.titleStyle = const TextStyle(
      color: Color(0xfff285264),
      fontFamily: 'Gibson',
      fontWeight: FontWeight.w400,
    ),
    this.bodyStyle = const TextStyle(
      color: Colors.black87,
      fontStyle: FontStyle.italic,
    ),
    this.textFieldStyle = const TextStyle(
      color: Colors.black87,
    ),
    this.buttonStyle,
    this.beforeHeroFontSize = 48.0,
    this.afterHeroFontSize = 15.0,
    this.footerBackgroundColor,
    this.footerTextStyle,
    this.authButtonPadding,
    this.providerButtonPadding,
    this.footerBottomPadding = 0,
  });

  /// The background color of the login page for light gradient; if provided,
  /// overrides the [primaryColor] for page background
  final Color? pageColorLight;

  /// The background color of the login page for dark gradient; if provided,
  /// overrides the computed primaryColorDark for page background
  final Color? pageColorDark;

  /// The background color of major parts of the widget like the login screen
  /// and buttons
  final Color? primaryColor;

  /// The secondary color, used for title text color, loading icon, etc. Should
  /// be contrast with the [primaryColor]
  final Color? accentColor;

  /// The color to use for [TextField] input validation errors
  final Color? errorColor;

  /// The colors and styles used to render auth [Card]
  final CardTheme cardTheme;

  /// Defines the appearance of all [TextField]s
  final InputDecorationTheme inputTheme;

  /// A theme for customizing the shape, elevation, and color of the submit
  /// button
  final LoginButtonTheme buttonTheme;

  /// Text style for the big title
  final TextStyle? titleStyle;

  /// Text style for small text like the recover password description
  final TextStyle? bodyStyle;

  /// Text style for [TextField] input text
  final TextStyle? textFieldStyle;

  /// Text style for button text
  final TextStyle? buttonStyle;

  /// Defines the font size of the title in the login screen (before the hero
  /// transition)
  final double beforeHeroFontSize;

  /// Defines the font size of the title in the screen after the login screen
  /// (after the hero transition)
  final double afterHeroFontSize;

  /// Color of the footer background
  final Color? footerBackgroundColor;

  /// Text style for footer text
  final TextStyle? footerTextStyle;

  /// Provide custom padding for the switch signUp / login button
  final EdgeInsets? authButtonPadding;

  /// Provide custom padding for the provider buttons
  final EdgeInsets? providerButtonPadding;

  /// Provide custom bottom padding for the footer.
  final double footerBottomPadding;
}
