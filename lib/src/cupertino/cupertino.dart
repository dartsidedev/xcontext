import 'dart:ui';

import 'package:flutter/cupertino.dart' as cupertino;

/// `CupertinoUserInterfaceLevel.of(context)` as `context.cupertinoUserInterfaceLevel`
extension XContextCupertinoUserInterfaceLevel on cupertino.BuildContext {
  /// Returns the cupertino user interface level data from the closest
  /// [cupertino.CupertinoUserInterfaceLevel] ancestor.
  ///
  /// `context.cupertinoUserInterfaceLevel` is equivalent to
  /// [cupertino.CupertinoUserInterfaceLevel.of].
  cupertino.CupertinoUserInterfaceLevelData get cupertinoUserInterfaceLevel {
    return cupertino.CupertinoUserInterfaceLevel.of(this);
  }
}

/// `CupertinoTheme.of(context)` as `context.cupertinoTheme`
extension XContextCupertinoTheme on cupertino.BuildContext {
  /// Returns the cupertino theme data from the closest
  /// [cupertino.CupertinoTheme] ancestor.
  ///
  /// `context.cupertinoTheme` is equivalent to
  /// [cupertino.CupertinoTheme.of].
  cupertino.CupertinoThemeData get cupertinoTheme {
    return cupertino.CupertinoTheme.of(this);
  }
}

/// `CupertinoLocalizations.of(context)` as `context.cupertinoLocalizations`
extension XContextCupertinoLocalizations on cupertino.BuildContext {
  /// Returns the cupertino localizations from the closest
  /// [cupertino.CupertinoLocalizations] ancestor.
  ///
  /// `context.cupertinoLocalizations` is equivalent to
  /// [cupertino.CupertinoLocalizations.of].
  cupertino.CupertinoLocalizations get cupertinoLocalizations {
    return cupertino.CupertinoLocalizations.of(this);
  }
}

/// `showCupertinoDialog(context: context, ...)` as `context.showCupertinoDialog(...)`
extension XContextShowCupertinoDialog on cupertino.BuildContext {
  /// Displays an iOS-style dialog above the current contents of the app, with
  /// iOS-style entrance and exit animations, modal barrier color, and modal
  /// barrier behavior (the dialog is not dismissible with a tap on the barrier).
  ///
  /// Equivalent to [cupertino.showCupertinoDialog].
  Future<T> showCupertinoDialog<T>({
    @cupertino.required cupertino.WidgetBuilder builder,
    bool useRootNavigator: true,
    cupertino.RouteSettings routeSettings,
  }) {
    return cupertino.showCupertinoDialog<T>(
      context: this,
      builder: builder,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    );
  }
}

/// `showCupertinoModalPopup(context: context, ...)` as `context.showCupertinoModalPopup(...)`
extension XContextShowCupertinoModalPopup on cupertino.BuildContext {
  /// Shows a modal iOS-style popup that slides up from the bottom of the screen.
  ///
  /// Equivalent to [cupertino.showCupertinoModalPopup].
  Future<T> showCupertinoModalPopup<T>({
    @cupertino.required cupertino.WidgetBuilder builder,
    ImageFilter filter,
    bool useRootNavigator: true,
    bool semanticsDismissible,
  }) {
    return cupertino.showCupertinoModalPopup<T>(
      context: this,
      builder: builder,
      filter: filter,
      useRootNavigator: useRootNavigator,
      semanticsDismissible: semanticsDismissible,
    );
  }
}
