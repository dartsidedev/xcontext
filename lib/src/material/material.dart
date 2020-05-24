import 'dart:core';

import 'package:flutter/material.dart';

extension BuildContextMaterialX on BuildContext {
  /// Returns the material ink controller from the closest [Material] ancestor.
  ///
  /// `context.material` is equivalent to `Material.of(context)`.
  MaterialInkController get material {
    return Material.of(this);
  }

  /// Returns the material banner theme data from the closest [MaterialBannerTheme] ancestor.
  ///
  /// `context.materialBannerTheme` is equivalent to `MaterialBannerTheme.of(context)`.
  MaterialBannerThemeData get materialBannerTheme {
    return MaterialBannerTheme.of(this);
  }

  /// Returns the scaffold state from the closest [Scaffold] ancestor.
  ///
  /// `context.scaffold` is equivalent to `Scaffold.of(context)`.
  ScaffoldState get scaffold {
    return Scaffold.of(this);
  }

  /// Returns the navigation rail theme data from the closest [NavigationRailTheme] ancestor.
  ///
  /// `context.navigationRailTheme` is equivalent to `NavigationRailTheme.of(context)`.
  NavigationRailThemeData get navigationRailTheme {
    return NavigationRailTheme.of(this);
  }

  /// Returns the bottom app bar theme from the closest [BottomAppBarTheme] ancestor.
  ///
  /// `context.bottomAppBarTheme` is equivalent to `BottomAppBarTheme.of(context)`.
  BottomAppBarTheme get bottomAppBarTheme {
    return BottomAppBarTheme.of(this);
  }

  /// Returns the tab bar theme from the closest [TabBarTheme] ancestor.
  ///
  /// `context.tabBarTheme` is equivalent to `TabBarTheme.of(context)`.
  TabBarTheme get tabBarTheme {
    return TabBarTheme.of(this);
  }

  /// Returns the app bar theme from the closest [AppBarTheme] ancestor.
  ///
  /// `context.appBarTheme` is equivalent to `AppBarTheme.of(context)`.
  AppBarTheme get appBarTheme {
    return AppBarTheme.of(this);
  }

  /// Returns the popup menu theme data from the closest [PopupMenuTheme] ancestor.
  ///
  /// `context.popupMenuTheme` is equivalent to `PopupMenuTheme.of(context)`.
  PopupMenuThemeData get popupMenuTheme {
    return PopupMenuTheme.of(this);
  }

  /// Returns the tab controller from the closest [DefaultTabController] ancestor.
  ///
  /// `context.tabController` is equivalent to `DefaultTabController.of(context)`.
  TabController get tabController {
    return DefaultTabController.of(this);
  }

  /// Returns the tooltip theme data from the closest [TooltipTheme] ancestor.
  ///
  /// `context.tooltipTheme` is equivalent to `TooltipTheme.of(context)`.
  TooltipThemeData get tooltipTheme {
    return TooltipTheme.of(this);
  }

  /// Returns the dialog theme data from the closest [DialogTheme] ancestor.
  ///
  /// `context.dialogTheme` is equivalent to `DialogTheme.of(context)`.
  DialogTheme get dialogTheme {
    return DialogTheme.of(this);
  }

  /// Returns the card theme data from the closest [CardTheme] ancestor.
  ///
  /// `context.cardTheme` is equivalent to `CardTheme.of(context)`.
  CardTheme get cardTheme {
    return CardTheme.of(this);
  }

  /// Returns the button theme data from the closest [ButtonTheme] ancestor.
  ///
  /// `context.buttonTheme` is equivalent to `ButtonTheme.of(context)`.
  ButtonThemeData get buttonTheme {
    return ButtonTheme.of(this);
  }

  /// Returns the list tile theme data from the closest [ListTileTheme] ancestor.
  ///
  /// `context.listTileTheme` is equivalent to `ListTileTheme.of(context)`.
  ListTileTheme get listTileTheme {
    return ListTileTheme.of(this);
  }

  /// Returns the divider theme data from the closest [DividerTheme] ancestor.
  ///
  /// `context.dividerTheme` is equivalent to `DividerTheme.of(context)`.
  DividerThemeData get dividerTheme {
    return DividerTheme.of(this);
  }

  /// Returns the material localizations from the closest [MaterialLocalizations] ancestor.
  ///
  /// `context.materialLocalizations` is equivalent to `MaterialLocalizations.of(context)`.
  MaterialLocalizations get materialLocalizations {
    return MaterialLocalizations.of(this);
  }

  /// Returns the slider theme data from the closest [SliderTheme] ancestor.
  ///
  /// `context.sliderTheme` is equivalent to `SliderTheme.of(context)`.
  SliderThemeData get sliderTheme {
    return SliderTheme.of(this);
  }

  /// Returns the chip theme data from the closest [ChipTheme] ancestor.
  ///
  /// `context.chipTheme` is equivalent to `ChipTheme.of(context)`.
  ChipThemeData get chipTheme {
    return ChipTheme.of(this);
  }

  /// Returns the button bar theme data from the closest [ButtonBarTheme] ancestor.
  ///
  /// `context.buttonBarTheme` is equivalent to `ButtonBarTheme.of(context)`.
  ButtonBarThemeData get buttonBarTheme {
    return ButtonBarTheme.of(this);
  }

  /// Returns the theme data from the closest [Theme] ancestor.
  ///
  /// `context.theme` is equivalent to `Theme.of(context)`.
  ThemeData get theme {
    return Theme.of(this);
  }

  /// Returns the shadow theme data from the closest [Theme] ancestor.
  ///
  /// `context.shadowTheme` is equivalent to `Theme.of(context, shadowThemeOnly: true)`.
  ThemeData get shadowTheme {
    return Theme.of(this, shadowThemeOnly: true);
  }

  /// Creates an [ImageConfiguration] based on the context (and optionally size).
  ImageConfiguration createLocalImageConfiguration({Size size}) {
    return _createLocalImageConfiguration(this, size: size);
  }

  /// Displays an [AboutDialog], which describes the application and provides a
  /// button to show licenses for software used by the application.
  ///
  /// Equivalent to [_showAboutDialog].
  void showAboutDialog({
    String applicationName,
    String applicationVersion,
    Widget applicationIcon,
    String applicationLegalese,
    List<Widget> children,
    bool useRootNavigator = true,
    RouteSettings routeSettings,
  }) {
    return _showAboutDialog(
      context: this,
      applicationName: applicationName,
      applicationVersion: applicationVersion,
      applicationIcon: applicationIcon,
      applicationLegalese: applicationLegalese,
      children: children,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    );
  }

  /// Shows a material design bottom sheet in the nearest [Scaffold] ancestor.
  ///
  /// Equivalent to [_showBottomSheet].
  PersistentBottomSheetController<T> showBottomSheet<T>({
    @required WidgetBuilder builder,
    Color backgroundColor,
    double elevation,
    ShapeBorder shape,
    Clip clipBehavior,
  }) {
    return _showBottomSheet(
      context: this,
      builder: builder,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
    );
  }

  /// Shows a dialog containing a Material Design date picker.
  ///
  /// Equivalent to [_showDatePicker].
  Future<DateTime> showDatePicker({
    @required DateTime initialDate,
    @required DateTime firstDate,
    @required DateTime lastDate,
    DatePickerEntryMode initialEntryMode = DatePickerEntryMode.calendar,
    SelectableDayPredicate selectableDayPredicate,
    String helpText,
    String cancelText,
    String confirmText,
    Locale locale,
    bool useRootNavigator = true,
    RouteSettings routeSettings,
    TextDirection textDirection,
    TransitionBuilder builder,
    DatePickerMode initialDatePickerMode = DatePickerMode.day,
    String errorFormatText,
    String errorInvalidText,
    String fieldHintText,
    String fieldLabelText,
  }) {
    return _showDatePicker(
      context: this,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: lastDate,
      initialEntryMode: initialEntryMode,
      selectableDayPredicate: selectableDayPredicate,
      helpText: helpText,
      cancelText: cancelText,
      confirmText: confirmText,
      locale: locale,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
      textDirection: textDirection,
      builder: builder,
      initialDatePickerMode: initialDatePickerMode,
      errorFormatText: errorFormatText,
      errorInvalidText: errorInvalidText,
      fieldHintText: fieldHintText,
      fieldLabelText: fieldLabelText,
    );
  }

  /// Displays a Material dialog above the current contents of the app, with
  /// Material entrance and exit animations, modal barrier color, and modal
  /// barrier behavior (dialog is dismissible with a tap on the barrier).
  ///
  /// Equivalent to [_showDialog].
  Future<T> showDialog<T>({
    bool barrierDismissible: true,
    WidgetBuilder builder,
    bool useRootNavigator: true,
    RouteSettings routeSettings,
  }) {
    return _showDialog<T>(
      context: this,
      barrierDismissible: barrierDismissible,
      child: null,
      builder: builder,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    );
  }

  /// Displays a dialog above the current contents of the app.
  ///
  /// Equivalent to [_showGeneralDialog].
  Future<T> showGeneralDialog<T>({
    @required RoutePageBuilder pageBuilder,
    bool barrierDismissible,
    String barrierLabel,
    Color barrierColor,
    Duration transitionDuration,
    RouteTransitionsBuilder transitionBuilder,
    bool useRootNavigator: true,
    RouteSettings routeSettings,
  }) {
    return _showGeneralDialog<T>(
      context: this,
      pageBuilder: pageBuilder,
      barrierDismissible: barrierDismissible,
      barrierLabel: barrierLabel,
      barrierColor: barrierColor,
      transitionDuration: transitionDuration,
      transitionBuilder: transitionBuilder,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    );
  }

  /// Displays a [LicensePage], which shows licenses for software used by the
  /// application.
  ///
  /// Equivalent to [_showLicensePage].
  void showLicensePage(
      {String applicationName,
      String applicationVersion,
      Widget applicationIcon,
      String applicationLegalese,
      bool useRootNavigator: false}) {
    return _showLicensePage(
      context: this,
      applicationName: applicationName,
      applicationVersion: applicationVersion,
      applicationIcon: applicationIcon,
      applicationLegalese: applicationLegalese,
      useRootNavigator: useRootNavigator,
    );
  }

  /// Show a popup menu that contains the items at position.
  Future<T> showMenu<T>(
      {@required RelativeRect position,
      @required List<PopupMenuEntry<T>> items,
      T initialValue,
      double elevation,
      String semanticLabel,
      ShapeBorder shape,
      Color color,
      bool captureInheritedThemes: true,
      bool useRootNavigator: false}) {
    return _showMenu<T>(
      context: this,
      position: position,
      items: items,
      initialValue: initialValue,
      elevation: elevation,
      semanticLabel: semanticLabel,
      shape: shape,
      color: color,
      captureInheritedThemes: captureInheritedThemes,
      useRootNavigator: useRootNavigator,
    );
  }

  /// Shows a modal material design bottom sheet.
  ///
  /// Equivalent to [_showModalBottomSheet].
  Future<T> showModalBottomSheet<T>({
    @required WidgetBuilder builder,
    Color backgroundColor,
    double elevation,
    ShapeBorder shape,
    Clip clipBehavior,
    Color barrierColor,
    bool isScrollControlled: false,
    bool useRootNavigator: false,
    bool isDismissible: true,
    bool enableDrag: true,
  }) {
    return _showModalBottomSheet(
      context: this,
      builder: builder,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      barrierColor: barrierColor,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
    );
  }

  /// Shows a full screen search page and returns the search result selected by
  /// the user when the page is closed.
  ///
  /// Equivalent to [_showSearch].
  Future<T> showSearch<T>({
    @required SearchDelegate<T> delegate,
    String query: '',
  }) {
    return _showSearch(
      context: this,
      delegate: delegate,
      query: query,
    );
  }

  /// Shows a dialog containing a material design time picker.
  ///
  /// Equivalent to [_showTimePicker].
  Future<TimeOfDay> showTimePicker(
      {@required TimeOfDay initialTime,
      TransitionBuilder builder,
      bool useRootNavigator: true,
      RouteSettings routeSettings}) {
    return _showTimePicker(
      context: this,
      initialTime: initialTime,
      builder: builder,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    );
  }
}

const _createLocalImageConfiguration = createLocalImageConfiguration;
const _showAboutDialog = showAboutDialog;
const _showBottomSheet = showBottomSheet;
const _showDatePicker = showDatePicker;
const _showDialog = showDialog;
const _showGeneralDialog = showGeneralDialog;
const _showLicensePage = showLicensePage;
const _showMenu = showMenu;
const _showModalBottomSheet = showModalBottomSheet;
const _showSearch = showSearch;
const _showTimePicker = showTimePicker;
