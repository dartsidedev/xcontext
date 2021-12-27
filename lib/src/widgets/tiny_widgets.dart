import 'package:flutter/widgets.dart' as widgets;

/// `Form.of(context)` as `context.form`
extension TinyXContextFormState on widgets.BuildContext {
  /// Returns the form state from the closest [widgets.Form] ancestor.
  ///
  /// `context.form` is equivalent to [widgets.Form.of].
  widgets.FormState? get form {
    return widgets.Form.of(this);
  }
}

/// `Navigator.of(context)` as `context.nav`
extension TinyXContextNavigator on widgets.BuildContext {
  /// Returns the navigator state from the closest [widgets.Navigator] ancestor.
  ///
  /// `context.navigator` is equivalent to [widgets.Navigator.of].
  widgets.NavigatorState get nav {
    return widgets.Navigator.of(this);
  }
}

/// `Navigator.of(context, rootNavigator: true)` as `context.rootNav`
extension TinyXContextRootNavigator on widgets.BuildContext {
  /// Returns the root navigator state.
  ///
  /// `context.rootNavigator` is equivalent to [widgets.Navigator.of] with
  /// `rootNavigator: true`.
  widgets.NavigatorState get rootNav {
    return widgets.Navigator.of(this, rootNavigator: true);
  }
}

/// `MediaQuery.of(context)` as `context.mq`
extension TinyXContextMediaQuery on widgets.BuildContext {
  /// Returns the media query data from the closest [widgets.MediaQuery]
  /// ancestor.
  ///
  /// `context.mediaQuery` is equivalent to [widgets.MediaQuery.of].
  widgets.MediaQueryData get mq {
    return widgets.MediaQuery.of(this);
  }
}

/// `Focus.of(context)` as `context.fNode`
extension TinyXContextFocusNode on widgets.BuildContext {
  /// Returns the focus node from the closest [widgets.Focus] ancestor.
  ///
  /// `context.focusNode` is equivalent to [widgets.Focus.of]`.
  widgets.FocusNode get fNode {
    return widgets.Focus.of(this);
  }
}

/// `FocusScope.of(context)` as `context.fScope`
extension TinyXContextFocusScope on widgets.BuildContext {
  /// Returns the focus scope node from the closest [widgets.FocusScope]
  /// ancestor.
  ///
  /// `context.focusScope` is equivalent to
  /// [widgets.FocusScope.of].
  widgets.FocusScopeNode get fScope {
    return widgets.FocusScope.of(this);
  }
}

/// `Overlay.of(context)` as `context.overlay`
extension TinyXContextOverlay on widgets.BuildContext {
  /// Returns the overlay state from the closest [widgets.Overlay] ancestor.
  ///
  /// `context.overlay` is equivalent to
  /// [widgets.Overlay.of].
  widgets.OverlayState? get overlay {
    return widgets.Overlay.of(this);
  }
}

/// `Overlay.of(context, rootOverlay: true)` as `context.rootOverlay`
extension TinyXContextRootOverlay on widgets.BuildContext {
  /// Returns the overlay state from the root [widgets.Overlay] ancestor.
  ///
  /// `context.rootOverlay` is equivalent to
  /// [widgets.Overlay.of] with `rootOverlay: true`.
  widgets.OverlayState? get rootOverlay {
    return widgets.Overlay.of(this, rootOverlay: true);
  }
}

/// `WidgetsLocalizations.of(context)` as `context.widgetsL10n`
extension TinyXContextWidgetsLocalizations on widgets.BuildContext {
  /// Returns the widgets localizations from the closest
  /// [widgets.WidgetsLocalizations] ancestor.
  ///
  /// `context.widgetsLocalizations` is equivalent to
  /// [widgets.WidgetsLocalizations.of].
  widgets.WidgetsLocalizations get widgetsL10n {
    return widgets.WidgetsLocalizations.of(this);
  }
}

/// `showGeneralDialog<T>(context: context, ...)` as `context.showGeneralDialog<T>(...)`
extension TinyXContextShowGeneralDialog on widgets.BuildContext {
  /// Displays a dialog above the current contents of the app.
  ///
  /// Equivalent to [widgets.showGeneralDialog].
  Future<T?> showGenDialog<T>(
      {required widgets.RoutePageBuilder pageBuilder,
      required bool barrierDismissible,
      String? barrierLabel,
      required widgets.Color barrierColor,
      required Duration transitionDuration,
      widgets.RouteTransitionsBuilder? transitionBuilder,
      bool useRootNavigator: true,
      widgets.RouteSettings? routeSettings}) {
    return widgets.showGeneralDialog<T>(
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
}
