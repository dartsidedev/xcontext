import 'dart:core';

import 'package:flutter/material.dart' as material;

/// `Scaffold.of(context)` as `context.scaf`
extension TinyXContextScaffold on material.BuildContext {
  /// Returns the scaffold state from the closest [material.Scaffold] ancestor.
  ///
  /// `context.scaffold` is equivalent to [material.Scaffold.of].
  material.ScaffoldState get scaf {
    return material.Scaffold.of(this);
  }
}

/// `MaterialLocalizations.of(context)` as `context.matL10n`
extension TinyXContextMaterialLocalizations on material.BuildContext {
  /// Returns the material localizations from the closest
  /// [material.MaterialLocalizations] ancestor.
  ///
  /// `context.materialLocalizations` is equivalent to
  /// [material.MaterialLocalizations.of].
  material.MaterialLocalizations get matL10n {
    return material.MaterialLocalizations.of(this);
  }
}

/// `Theme.of(context)` as `context.theme`
extension TinyXContextTheme on material.BuildContext {
  /// Returns the theme data from the closest [material.Theme] ancestor.
  ///
  /// `context.theme` is equivalent to [material.Theme.of].
  material.ThemeData get theme {
    return material.Theme.of(this);
  }
}

/// `showBottomSheet(context: context, ...)` as `context.showBS(...)`
extension TinyXContextShowBottomSheet on material.BuildContext {
  /// Shows a material design bottom sheet in the nearest [material.Scaffold]
  /// ancestor.
  ///
  /// Equivalent to [material.showBottomSheet].
  material.PersistentBottomSheetController<T> showBS<T>({
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

/// `showDatePicker(context: context, ...)` as `context.showDP(...)`
extension TinyXContextShowDatePicker on material.BuildContext {
  /// Shows a dialog containing a Material Design date picker.
  ///
  /// Equivalent to [material.showDatePicker].
  Future<DateTime> showDP({
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

/// `showDialog(context: context, ...)` as `context.showDialog(...)`
extension TinyXContextShowDialog on material.BuildContext {
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

/// `showMenu(context: context, ...)` as `context.showMenu(...)`
extension TinyXContextShowMenu on material.BuildContext {
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

/// `showModalBottomSheet(context: context, ...)` as `context.showMBS(...)`
extension TinyXContextShowModalBottomSheet on material.BuildContext {
  /// Shows a modal material design bottom sheet.
  ///
  /// Equivalent to [material.showModalBottomSheet].
  Future<T> showMBS<T>({
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

/// `showTimePicker(context: context, ...)` as `context.showTP(...)`
extension TinyXContextShowTimePicker on material.BuildContext {
  /// Shows a dialog containing a material design time picker.
  ///
  /// Equivalent to [material.showTimePicker].
  Future<material.TimeOfDay> showTP({
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
