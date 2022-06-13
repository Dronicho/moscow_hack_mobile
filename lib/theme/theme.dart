import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/layout.dart';
import 'package:moscow_hack/widgets/rectangular_indicator.dart';

ThemeData lightTheme() {
  var baseTheme = FlexThemeData.light(
    primary: AppColors.purple,
    secondaryContainer: AppColors.green,
    appBarStyle: FlexAppBarStyle.custom,
    appBarBackground: AppColors.background,
    blendLevel: 1,
    // appBarElevation: 0.5,
    fontFamily: 'Gilroy',
    background: AppColors.background,
    scaffoldBackground: AppColors.background,
    surface: AppColors.white,
    subThemesData: const FlexSubThemesData(
        inputDecoratorFillColor: AppColors.white,
        inputDecoratorBorderType: FlexInputBorderType.outline,
        inputDecoratorSchemeColor: SchemeColor.primaryContainer,
        inputDecoratorUnfocusedBorderIsColored: false,
        inputDecoratorUnfocusedHasBorder: false,
        tabBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
        tabBarItemSchemeColor: SchemeColor.secondaryContainer,
        navigationBarIndicatorSchemeColor: SchemeColor.secondary,
        navigationBarSelectedIconSchemeColor: SchemeColor.secondary,
        navigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
        navigationBarBackgroundSchemeColor: SchemeColor.onPrimary,
        navigationBarUnselectedIconSchemeColor: SchemeColor.primary,
        navigationBarUnselectedLabelSchemeColor: SchemeColor.primary,
        navigationBarIndicatorOpacity: 0.2,
        chipRadius: 16.0,
        blendTextTheme: true),
  );

  baseTheme = baseTheme.copyWith(appBarTheme: baseTheme.appBarTheme.copyWith(centerTitle: false));

  baseTheme = baseTheme.copyWith(
      tabBarTheme: baseTheme.tabBarTheme.copyWith(
          labelStyle: baseTheme.textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
          unselectedLabelStyle: baseTheme.textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
          indicator: const RectangularIndicator(
            color: AppColors.green,
            bottomLeftRadius: AppLayout.defaultRadius,
            bottomRightRadius: AppLayout.defaultRadius,
            topLeftRadius: AppLayout.defaultRadius,
            topRightRadius: AppLayout.defaultRadius,
          )));

  baseTheme = baseTheme.copyWith(
      textTheme: baseTheme.textTheme
          .copyWith(titleLarge: baseTheme.textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)));

  // baseTheme = baseTheme.copyWith(
  //     elevatedButtonTheme: ElevatedButtonThemeData(style: baseTheme.elevatedButtonTheme.style.copyWith(textStyle: baseTheme.elevatedButtonTheme.style.))
  //         .copyWith(titleLarge: baseTheme.textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold)));

  return baseTheme;
}

ThemeData get darkTheme =>
    FlexColorScheme.dark(primaryContainer: AppColors.purple, secondaryContainer: AppColors.green).toTheme;
