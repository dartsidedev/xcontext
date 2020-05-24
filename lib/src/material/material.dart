import 'dart:core';

import 'package:flutter/material.dart' as material;

extension XContextMaterialInkController on material.BuildContext {
  /// Returns the material ink controller from the closest [material.Material]
  /// ancestor.
  ///
  /// `context.material` is equivalent to [material.Material.of].
  material.MaterialInkController get materialInkController {
    return material.Material.of(this);
  }
}

extension XContextMaterialBannerTheme on material.BuildContext {
  /// Returns the material banner theme data from the closest
  /// [material.MaterialBannerTheme] ancestor.
  ///
  /// `context.materialBannerTheme` is equivalent to
  /// [material.MaterialBannerTheme.of].
  material.MaterialBannerThemeData get materialBannerTheme {
    return material.MaterialBannerTheme.of(this);
  }
}

extension XContextScaffold on material.BuildContext {
  /// Returns the scaffold state from the closest [material.Scaffold] ancestor.
  ///
  /// `context.scaffold` is equivalent to [material.Scaffold.of].
  material.ScaffoldState get scaffold {
    return material.Scaffold.of(this);
  }
}

extension XContextNavigationRailTheme on material.BuildContext {
  /// Returns the navigation rail theme data from the closest
  /// [material.NavigationRailTheme] ancestor.
  ///
  /// `context.navigationRailTheme` is equivalent to
  /// [material.NavigationRailTheme.of].
  material.NavigationRailThemeData get navigationRailTheme {
    return material.NavigationRailTheme.of(this);
  }
}

extension XContextBottomAppBar on material.BuildContext {
  /// Returns the bottom app bar theme from the closest
  /// [material.BottomAppBarTheme] ancestor.
  ///
  /// `context.bottomAppBarTheme` is equivalent to
  /// [material.BottomAppBarTheme.of].
  material.BottomAppBarTheme get bottomAppBarTheme {
    return material.BottomAppBarTheme.of(this);
  }
}

extension XContextTabBarTheme on material.BuildContext {
  /// Returns the tab bar theme from the closest [material.TabBarTheme]
  /// ancestor.
  ///
  /// `context.tabBarTheme` is equivalent to [material.TabBarTheme.of].
  material.TabBarTheme get tabBarTheme {
    return material.TabBarTheme.of(this);
  }
}

extension XContextAppBarTheme on material.BuildContext {
  /// Returns the app bar theme from the closest [material.AppBarTheme]
  /// ancestor.
  ///
  /// `context.appBarTheme` is equivalent to [material.AppBarTheme.of].
  material.AppBarTheme get appBarTheme {
    return material.AppBarTheme.of(this);
  }
}

extension XContextPopupMenuTheme on material.BuildContext {
  /// Returns the popup menu theme data from the closest
  /// [material.PopupMenuTheme] ancestor.
  ///
  /// `context.popupMenuTheme` is equivalent to [material.PopupMenuTheme.of].
  material.PopupMenuThemeData get popupMenuTheme {
    return material.PopupMenuTheme.of(this);
  }
}

extension XContextTabController on material.BuildContext {
  /// Returns the tab controller from the closest
  /// [material.DefaultTabController] ancestor.
  ///
  /// `context.tabController` is equivalent to
  /// [material.DefaultTabController.of].
  material.TabController get tabController {
    return material.DefaultTabController.of(this);
  }
}

extension XContextTooltipTheme on material.BuildContext {
  /// Returns the tooltip theme data from the closest [material.TooltipTheme]
  /// ancestor.
  ///
  /// `context.tooltipTheme` is equivalent to [material.TooltipTheme.of].
  material.TooltipThemeData get tooltipTheme {
    return material.TooltipTheme.of(this);
  }
}

extension XContextDialogTheme on material.BuildContext {
  /// Returns the dialog theme data from the closest [material.DialogTheme]
  /// ancestor.
  ///
  /// `context.dialogTheme` is equivalent to [material.DialogTheme.of].
  material.DialogTheme get dialogTheme {
    return material.DialogTheme.of(this);
  }
}

extension XContextCardTheme on material.BuildContext {
  /// Returns the card theme data from the closest [material.CardTheme]
  /// ancestor.
  ///
  /// `context.cardTheme` is equivalent to [material.CardTheme.of].
  material.CardTheme get cardTheme {
    return material.CardTheme.of(this);
  }
}

extension XContextButtonTheme on material.BuildContext {
  /// Returns the button theme data from the closest [material.ButtonTheme]
  /// ancestor.
  ///
  /// `context.buttonTheme` is equivalent to [material.ButtonTheme.of].
  material.ButtonThemeData get buttonTheme {
    return material.ButtonTheme.of(this);
  }
}

extension XContextListTileTheme on material.BuildContext {
  /// Returns the list tile theme data from the closest [material.ListTileTheme]
  /// ancestor.
  ///
  /// `context.listTileTheme` is equivalent to [material.ListTileTheme.of].
  material.ListTileTheme get listTileTheme {
    return material.ListTileTheme.of(this);
  }
}

extension XContextDividerTheme on material.BuildContext {
  /// Returns the divider theme data from the closest [material.DividerTheme]
  /// ancestor.
  ///
  /// `context.dividerTheme` is equivalent to [material.DividerTheme.of].
  material.DividerThemeData get dividerTheme {
    return material.DividerTheme.of(this);
  }
}

extension XContextMaterialLocalizations on material.BuildContext {
  /// Returns the material localizations from the closest
  /// [material.MaterialLocalizations] ancestor.
  ///
  /// `context.materialLocalizations` is equivalent to
  /// [material.MaterialLocalizations.of].
  material.MaterialLocalizations get materialLocalizations {
    return material.MaterialLocalizations.of(this);
  }
}

extension XContextSliderTheme on material.BuildContext {
  /// Returns the slider theme data from the closest [material.SliderTheme]
  /// ancestor.
  ///
  /// `context.sliderTheme` is equivalent to [material.SliderTheme.of].
  material.SliderThemeData get sliderTheme {
    return material.SliderTheme.of(this);
  }
}

extension XContextChipTheme on material.BuildContext {
  /// Returns the chip theme data from the closest [material.ChipTheme]
  /// ancestor.
  ///
  /// `context.chipTheme` is equivalent to [material.ChipTheme.of].
  material.ChipThemeData get chipTheme {
    return material.ChipTheme.of(this);
  }
}

extension XContextButtonBarTheme on material.BuildContext {
  /// Returns the button bar theme data from the closest
  /// [material.ButtonBarTheme] ancestor.
  ///
  /// `context.buttonBarTheme` is equivalent to [material.ButtonBarTheme.of].
  material.ButtonBarThemeData get buttonBarTheme {
    return material.ButtonBarTheme.of(this);
  }
}

extension XContextTheme on material.BuildContext {
  /// Returns the theme data from the closest [material.Theme] ancestor.
  ///
  /// `context.theme` is equivalent to [material.Theme.of].
  material.ThemeData get theme {
    return material.Theme.of(this);
  }
}

extension XContextShadowTheme on material.BuildContext {
  /// Returns the shadow theme data from the closest [material.Theme] ancestor.
  ///
  /// `context.shadowTheme` is equivalent to
  /// [material.Theme.of(context, shadowThemeOnly: true)].
  material.ThemeData get shadowTheme {
    return material.Theme.of(this, shadowThemeOnly: true);
  }
}

extension XContextShowAboutDialog on material.BuildContext {
  /// Displays an [material.AboutDialog], which describes the application and
  /// provides a button to show licenses for software used by the application.
  ///
  /// Equivalent to [material.showAboutDialog].
  void showAboutDialog({
    String applicationName,
    String applicationVersion,
    material.Widget applicationIcon,
    String applicationLegalese,
    List<material.Widget> children,
    bool useRootNavigator = true,
    material.RouteSettings routeSettings,
  }) {
    return material.showAboutDialog(
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
}

extension XContextShowBottomSheet on material.BuildContext {
  /// Shows a material design bottom sheet in the nearest [material.Scaffold]
  /// ancestor.
  ///
  /// Equivalent to [material.showBottomSheet].
  material.PersistentBottomSheetController<T> showBottomSheet<T>({
    @material.required material.WidgetBuilder builder,
    material.Color backgroundColor,
    double elevation,
    material.ShapeBorder shape,
    material.Clip clipBehavior,
  }) {
    return material.showBottomSheet(
      context: this,
      builder: builder,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
    );
  }
}

extension XContextShowDatePicker on material.BuildContext {
  /// Shows a dialog containing a Material Design date picker.
  ///
  /// Equivalent to [material.showDatePicker].
  Future<DateTime> showDatePicker({
    @material.required DateTime initialDate,
    @material.required DateTime firstDate,
    @material.required DateTime lastDate,
    material.DatePickerEntryMode initialEntryMode =
        material.DatePickerEntryMode.calendar,
    material.SelectableDayPredicate selectableDayPredicate,
    String helpText,
    String cancelText,
    String confirmText,
    material.Locale locale,
    bool useRootNavigator = true,
    material.RouteSettings routeSettings,
    material.TextDirection textDirection,
    material.TransitionBuilder builder,
    material.DatePickerMode initialDatePickerMode = material.DatePickerMode.day,
    String errorFormatText,
    String errorInvalidText,
    String fieldHintText,
    String fieldLabelText,
  }) {
    return material.showDatePicker(
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
}

extension XContextShowDialog on material.BuildContext {
  /// Displays a Material dialog above the current contents of the app, with
  /// Material entrance and exit animations, modal barrier color, and modal
  /// barrier behavior (dialog is dismissible with a tap on the barrier).
  ///
  /// Equivalent to [material.showDialog].
  Future<T> showDialog<T>({
    bool barrierDismissible: true,
    material.WidgetBuilder builder,
    bool useRootNavigator: true,
    material.RouteSettings routeSettings,
  }) {
    return material.showDialog<T>(
      context: this,
      barrierDismissible: barrierDismissible,
      builder: builder,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    );
  }
}

extension XContextShowLicensePage on material.BuildContext {
  /// Displays a [material.LicensePage], which shows licenses for software used
  /// by the application.
  ///
  /// Equivalent to [material.showLicensePage].
  void showLicensePage(
      {String applicationName,
      String applicationVersion,
      material.Widget applicationIcon,
      String applicationLegalese,
      bool useRootNavigator: false}) {
    return material.showLicensePage(
      context: this,
      applicationName: applicationName,
      applicationVersion: applicationVersion,
      applicationIcon: applicationIcon,
      applicationLegalese: applicationLegalese,
      useRootNavigator: useRootNavigator,
    );
  }
}

extension XContextShowMenu on material.BuildContext {
  /// Show a popup menu that contains the items at position.
  Future<T> showMenu<T>({
    @material.required material.RelativeRect position,
    @material.required List<material.PopupMenuEntry<T>> items,
    T initialValue,
    double elevation,
    String semanticLabel,
    material.ShapeBorder shape,
    material.Color color,
    bool captureInheritedThemes: true,
    bool useRootNavigator: false,
  }) {
    return material.showMenu<T>(
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
}

extension XContextShowModalBottomSheet on material.BuildContext {
  /// Shows a modal material design bottom sheet.
  ///
  /// Equivalent to [material.showModalBottomSheet].
  Future<T> showModalBottomSheet<T>({
    @material.required material.WidgetBuilder builder,
    material.Color backgroundColor,
    double elevation,
    material.ShapeBorder shape,
    material.Clip clipBehavior,
    material.Color barrierColor,
    bool isScrollControlled: false,
    bool useRootNavigator: false,
    bool isDismissible: true,
    bool enableDrag: true,
  }) {
    return material.showModalBottomSheet(
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
}

extension XContextShowSearch on material.BuildContext {
  /// Shows a full screen search page and returns the search result selected by
  /// the user when the page is closed.
  ///
  /// Equivalent to [material.showSearch].
  Future<T> showSearch<T>({
    @material.required material.SearchDelegate<T> delegate,
    String query: '',
  }) {
    return material.showSearch(
      context: this,
      delegate: delegate,
      query: query,
    );
  }
}

extension XContextShowTimePicker on material.BuildContext {
  /// Shows a dialog containing a material design time picker.
  ///
  /// Equivalent to [material.showTimePicker].
  Future<material.TimeOfDay> showTimePicker({
    @material.required material.TimeOfDay initialTime,
    material.TransitionBuilder builder,
    bool useRootNavigator: true,
    material.RouteSettings routeSettings,
  }) {
    return material.showTimePicker(
      context: this,
      initialTime: initialTime,
      builder: builder,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    );
  }
}
