import 'dart:ui';

import 'package:flutter/cupertino.dart' as cupertino;

extension TinyXContextCupertinoUserInterfaceLevel on cupertino.BuildContext {
  /// Returns the cupertino user interface level data from the closest
  /// [cupertino.CupertinoUserInterfaceLevel] ancestor.
  ///
  /// `context.cupertinoUserInterfaceLevel` is equivalent to
  /// [cupertino.CupertinoUserInterfaceLevel.of].
  cupertino.CupertinoUserInterfaceLevelData get cupUiLevel {
    return cupertino.CupertinoUserInterfaceLevel.of(this);
  }
}

extension TinyXContextCupertinoTheme on cupertino.BuildContext {
  /// Returns the cupertino theme data from the closest
  /// [cupertino.CupertinoTheme] ancestor.
  ///
  /// `context.cupertinoTheme` is equivalent to
  /// [cupertino.CupertinoTheme.of].
  cupertino.CupertinoThemeData get cupTheme {
    return cupertino.CupertinoTheme.of(this);
  }
}

extension TinyXContextCupertinoLocalizations on cupertino.BuildContext {
  /// Returns the cupertino localizations from the closest
  /// [cupertino.CupertinoLocalizations] ancestor.
  ///
  /// `context.cupertinoLocalizations` is equivalent to
  /// [cupertino.CupertinoLocalizations.of].
  cupertino.CupertinoLocalizations get cupL10n {
    return cupertino.CupertinoLocalizations.of(this);
  }
}

extension TinyXContextShowCupertinoDialog on cupertino.BuildContext {
  /// Displays an iOS-style dialog above the current contents of the app, with
  /// iOS-style entrance and exit animations, modal barrier color, and modal
  /// barrier behavior (the dialog is not dismissible with a tap on the barrier).
  ///
  /// Equivalent to [cupertino.showCupertinoDialog].
  Future<T> showCupDialog<T>({
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

extension TinyXContextShowCupertinoModalPopup on cupertino.BuildContext {
  /// Shows a modal iOS-style popup that slides up from the bottom of the screen.
  ///
  /// Equivalent to [cupertino.showCupertinoModalPopup].
  Future<T> showCupModalPopup<T>({
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