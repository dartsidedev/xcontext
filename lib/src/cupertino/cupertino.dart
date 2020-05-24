import 'dart:ui';

import 'package:flutter/cupertino.dart';

extension BuildContextCupertinoX on BuildContext {
  /// Returns the cupertino user interface level data from the closest [CupertinoUserInterfaceLevel] ancestor.
  ///
  /// `context.cupertinoUserInterfaceLevel` is equivalent to `CupertinoUserInterfaceLevel.of(context)`.
  CupertinoUserInterfaceLevelData get cupertinoUserInterfaceLevel {
    return CupertinoUserInterfaceLevel.of(this);
  }

  /// Returns the cupertino theme data from the closest [CupertinoTheme] ancestor.
  ///
  /// `context.cupertinoTheme` is equivalent to `CupertinoTheme.of(context)`.
  CupertinoThemeData get cupertinoTheme {
    return CupertinoTheme.of(this);
  }

  /// Returns the cupertino localizations from the closest [CupertinoLocalizations] ancestor.
  ///
  /// `context.cupertinoLocalizations` is equivalent to `CupertinoLocalizations.of(context)`.
  CupertinoLocalizations get cupertinoLocalizations {
    return CupertinoLocalizations.of(this);
  }

  /// Displays an iOS-style dialog above the current contents of the app, with
  /// iOS-style entrance and exit animations, modal barrier color, and modal
  /// barrier behavior (the dialog is not dismissible with a tap on the barrier).
  ///
  /// Equivalent to [_showCupertinoDialog].
  Future<T> showCupertinoDialog<T>({
    @required WidgetBuilder builder,
    bool useRootNavigator: true,
    RouteSettings routeSettings
  }) {
    return _showCupertinoDialog<T>(
      builder: builder,
      useRootNavigator: useRootNavigator,
      routeSettings: routeSettings,
    );
  }

  /// Shows a modal iOS-style popup that slides up from the bottom of the screen.
  ///
  /// Equivalent to [_showCupertinoModalPopup].
  Future<T> showCupertinoModalPopup<T>({
    @required WidgetBuilder builder,
    ImageFilter filter,
    bool useRootNavigator: true,
    bool semanticsDismissible
  }) {
    return _showCupertinoModalPopup<T>(
      context: this,
      builder: builder,
      filter: filter,
      useRootNavigator: useRootNavigator,
      semanticsDismissible: semanticsDismissible,
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
    RouteSettings routeSettings
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

  /// Returns the [AxisDirection] in the given [Axis] in the current
  /// [Directionality] (or the reverse if `reverse` is true).
  ///
  /// Equivalent to [_getAxisDirectionFromAxisReverseAndDirectionality].
  AxisDirection getAxisDirectionFromAxisReverseAndDirectionality(
    Axis axis,
    bool reverse,
  ) {
    return _getAxisDirectionFromAxisReverseAndDirectionality(
      this,
      axis,
      reverse,
    );
  }

  /// Prefetches an image into the image cache.
  Future<void> precacheImage(
    ImageProvider provider, {
    Size size,
    ImageErrorListener onError,
  }) {
    return _precacheImage(
      provider,
      this,
      size: size,
      onError: onError,
    );
  }
}

const _showCupertinoDialog = showCupertinoDialog;
const _showCupertinoModalPopup = showCupertinoModalPopup;
const _showGeneralDialog = showGeneralDialog;
const _precacheImage = precacheImage;
const _getAxisDirectionFromAxisReverseAndDirectionality =
    getAxisDirectionFromAxisReverseAndDirectionality;
