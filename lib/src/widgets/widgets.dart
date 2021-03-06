import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart' as widgets;

/// `PageStorage.of(context)` as `context.pageStorage`
extension XContextPageStorage on widgets.BuildContext {
  /// Returns the page storage bucket from the closest [widgets.PageStorage]
  /// ancestor.
  ///
  /// `context.pageStorage` is equivalent to [widgets.PageStorage.of].
  widgets.PageStorageBucket? get pageStorage {
    return widgets.PageStorage.of(this);
  }
}

/// `Directionality.of(context)` as `context.textDirection`
extension XContextTextDirection on widgets.BuildContext {
  /// Returns the text direction from the closest [widgets.Directionality]
  /// ancestor.
  ///
  /// `context.textDirection` is equivalent to [widgets.Directionality.of].
  widgets.TextDirection get textDirection {
    return widgets.Directionality.of(this);
  }
}

/// `DefaultAssetBundle.of(context)` as `context.assetBundle`
extension XContextAssetBundle on widgets.BuildContext {
  /// Returns the asset bundle from the closest [widgets.DefaultAssetBundle]
  /// ancestor.
  ///
  /// `context.assetBundle` is equivalent to [widgets.DefaultAssetBundle.of].
  AssetBundle get assetBundle {
    return widgets.DefaultAssetBundle.of(this);
  }
}

/// `DefaultTextStyle.of(context)` as `context.defaultTextStyle`
extension XContextDefaultTextStyle on widgets.BuildContext {
  /// Returns the default text style from the closest [widgets.DefaultTextStyle]
  /// ancestor.
  ///
  /// `context.defaultTextStyle` is equivalent to [widgets.DefaultTextStyle.of].
  widgets.DefaultTextStyle get defaultTextStyle {
    return widgets.DefaultTextStyle.of(this);
  }
}

/// `Actions.of(context)` as `context.actionDispatcher`
extension XContextActionDispatcher on widgets.BuildContext {
  /// Returns the action dispatcher from the closest [widgets.Actions]
  /// ancestor.
  ///
  /// `context.actionDispatcher` is equivalent to [widgets.Actions.of].
  widgets.ActionDispatcher get actionDispatcher {
    return widgets.Actions.of(this);
  }
}

/// `Form.of(context)` as `context.form`
extension XContextFormState on widgets.BuildContext {
  /// Returns the form state from the closest [widgets.Form] ancestor.
  ///
  /// `context.form` is equivalent to [widgets.Form.of].
  widgets.FormState? get form {
    return widgets.Form.of(this);
  }
}

/// `Navigator.of(context)` as `context.navigator`
extension XContextNavigator on widgets.BuildContext {
  /// Returns the navigator state from the closest [widgets.Navigator] ancestor.
  ///
  /// `context.navigator` is equivalent to [widgets.Navigator.of].
  widgets.NavigatorState get navigator {
    return widgets.Navigator.of(this);
  }
}

/// `Navigator.of(context, rootNavigator: true)` as `context.rootNavigator`
extension XContextRootNavigator on widgets.BuildContext {
  /// Returns the root navigator state.
  ///
  /// `context.rootNavigator` is equivalent to [widgets.Navigator.of] with
  /// `rootNavigator: true`.
  widgets.NavigatorState get rootNavigator {
    return widgets.Navigator.of(this, rootNavigator: true);
  }
}

/// `MediaQuery.of(context)` as `context.mediaQuery`
extension XContextMediaQuery on widgets.BuildContext {
  /// Returns the media query data from the closest [widgets.MediaQuery]
  /// ancestor.
  ///
  /// `context.mediaQuery` is equivalent to [widgets.MediaQuery.of].
  widgets.MediaQueryData get mediaQuery {
    return widgets.MediaQuery.of(this);
  }
}

/// `PrimaryScrollController.of(context)` as `context.primaryScrollController`
extension XContextPrimaryScrollController on widgets.BuildContext {
  /// Returns the scroll controller from the closest
  /// [widgets.PrimaryScrollController] ancestor.
  ///
  /// `context.primaryScrollController` is equivalent to
  /// [widgets.PrimaryScrollController.of].
  widgets.ScrollController? get primaryScrollController {
    return widgets.PrimaryScrollController.of(this);
  }
}

/// `Scrollable.of(context)` as `context.scrollable`
extension XContextScrollable on widgets.BuildContext {
  /// Returns the scrollable state from the closest [widgets.Scrollable]
  /// ancestor.
  ///
  /// `context.scrollable` is equivalent to [widgets.Scrollable.of].
  widgets.ScrollableState? get scrollable {
    return widgets.Scrollable.of(this);
  }
}

/// `FocusTraversalOrder.of(context)` as `context.focusOrder`
extension XContextFocusOrder on widgets.BuildContext {
  /// Returns the focus order from the closest [widgets.FocusTraversalOrder]
  /// ancestor.
  ///
  /// `context.focusOrder` is equivalent to [widgets.FocusTraversalOrder.of].
  widgets.FocusOrder get focusOrder {
    return widgets.FocusTraversalOrder.of(this);
  }
}

/// `FocusTraversalGroup.of(context)` as `context.focusTraversalPolicy`
extension XContextFocusTraversalPolicy on widgets.BuildContext {
  /// Returns the focus traversal policy from the closest
  /// [widgets.FocusTraversalGroup] ancestor.
  ///
  /// `context.focusTraversalPolicy` is equivalent to
  /// [widgets.FocusTraversalGroup.of].
  widgets.FocusTraversalPolicy get focusTraversalPolicy {
    return widgets.FocusTraversalGroup.of(this);
  }
}

/// `Shortcuts.of(context)` as `context.shortcutManager`
extension XContextShortcutManager on widgets.BuildContext {
  /// Returns the shortcut manager from the closest [widgets.Shortcuts]
  /// ancestor.
  ///
  /// `context.shortcutManager` is equivalent to [widgets.Shortcuts.of].
  widgets.ShortcutManager get shortcutManager {
    return widgets.Shortcuts.of(this);
  }
}

/// `ScrollConfiguration.of(context)` as `context.scrollConfiguration`
extension XContextScrollConfiguration on widgets.BuildContext {
  /// Returns the scroll behavior from the closest
  /// [widgets.ScrollConfiguration] ancestor.
  ///
  /// `context.scrollConfiguration` is equivalent to
  /// [widgets.ScrollConfiguration.of].
  widgets.ScrollBehavior get scrollConfiguration {
    return widgets.ScrollConfiguration.of(this);
  }
}

/// `IconTheme.of(context)` as `context.iconTheme`
extension XContextIconTheme on widgets.BuildContext {
  /// Returns the icon theme data from the closest [widgets.IconTheme]
  /// ancestor.
  ///
  /// `context.iconTheme` is equivalent to [widgets.IconTheme.of].
  widgets.IconThemeData get iconTheme {
    return widgets.IconTheme.of(this);
  }
}

/// `TickerMode.of(context)` as `context.tickingEnabled`
extension XContextTickingEnabled on widgets.BuildContext {
  /// Returns whether tickers are enabled or disabled from the closest
  /// [widgets.TickerMode] ancestor.
  ///
  /// `context.tickingEnabled` is equivalent to [widgets.TickerMode.of].
  bool get tickingEnabled {
    return widgets.TickerMode.of(this);
  }
}

/// `AnimatedList.of(context)` as `context.animatedList`
extension XContextAnimatedList on widgets.BuildContext {
  /// Returns the animated list state from the closest [widgets.AnimatedList]
  ///ancestor.
  ///
  /// `context.animatedList` is equivalent to [widgets.AnimatedList.of].
  widgets.AnimatedListState get animatedList {
    return widgets.AnimatedList.of(this);
  }
}

/// `SliverAnimatedList.of(context)` as `context.sliverAnimatedList`
extension XContextSliverAnimatedList on widgets.BuildContext {
  /// Returns the sliver animated list state from the closest
  /// [widgets.SliverAnimatedList] ancestor.
  ///
  /// `context.sliverAnimatedList` is equivalent to
  /// [widgets.SliverAnimatedList.of].
  widgets.SliverAnimatedListState get sliverAnimatedList {
    return widgets.SliverAnimatedList.of(this);
  }
}

/// `Focus.of(context)` as `context.focusNode`
extension XContextFocusNode on widgets.BuildContext {
  /// Returns the focus node from the closest [widgets.Focus] ancestor.
  ///
  /// `context.focusNode` is equivalent to [widgets.Focus.of]`.
  widgets.FocusNode get focusNode {
    return widgets.Focus.of(this);
  }
}

/// `FocusScope.of(context)` as `context.focusScope`
extension XContextFocusScope on widgets.BuildContext {
  /// Returns the focus scope node from the closest [widgets.FocusScope]
  /// ancestor.
  ///
  /// `context.focusScope` is equivalent to
  /// [widgets.FocusScope.of].
  widgets.FocusScopeNode get focusScope {
    return widgets.FocusScope.of(this);
  }
}

/// `Overlay.of(context)` as `context.overlay`
extension XContextOverlay on widgets.BuildContext {
  /// Returns the overlay state from the closest [widgets.Overlay] ancestor.
  ///
  /// `context.overlay` is equivalent to
  /// [widgets.Overlay.of].
  widgets.OverlayState? get overlay {
    return widgets.Overlay.of(this);
  }
}

/// `Overlay.of(context, rootOverlay: true)` as `context.rootOverlay`
extension XContextRootOverlay on widgets.BuildContext {
  /// Returns the overlay state from the root [widgets.Overlay] ancestor.
  ///
  /// `context.rootOverlay` is equivalent to
  /// [widgets.Overlay.of] with `rootOverlay: true`.
  widgets.OverlayState? get rootOverlay {
    return widgets.Overlay.of(this, rootOverlay: true);
  }
}

/// `WidgetsLocalizations.of(context)` as `context.widgetsLocalizations`
extension XContextWidgetsLocalizations on widgets.BuildContext {
  /// Returns the widgets localizations from the closest
  /// [widgets.WidgetsLocalizations] ancestor.
  ///
  /// `context.widgetsLocalizations` is equivalent to
  /// [widgets.WidgetsLocalizations.of].
  widgets.WidgetsLocalizations get widgetsLocalizations {
    return widgets.WidgetsLocalizations.of(this);
  }
}

/// `precacheImage(..., context, ...)` as `context.precacheImage(...)`
extension XContextPrecacheImage on widgets.BuildContext {
  /// Prefetches an image into the image cache.
  ///
  /// Equivalent to [widgets.precacheImage].
  Future<void> precacheImage(
    widgets.ImageProvider provider, {
    widgets.Size? size,
    widgets.ImageErrorListener? onError,
  }) {
    return widgets.precacheImage(
      provider,
      this,
      size: size,
      onError: onError,
    );
  }
}

/// `showGeneralDialog(context: context, ...)` as `context.showGeneralDialog(...)`
extension XContextShowGeneralDialog on widgets.BuildContext {
  /// Displays a dialog above the current contents of the app.
  ///
  /// Equivalent to [widgets.showGeneralDialog].
  Future<T?> showGeneralDialog<T>(
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

/// `createLocalImageConfiguration(context, ...)` as `context.createLocalImageConfiguration(...)`
extension XContextCreateLocalImageConfiguration on widgets.BuildContext {
  /// Creates an [widgets.ImageConfiguration] based on the context
  /// (and optionally size).
  ///
  /// Equivalent to [widgets.createLocalImageConfiguration].
  widgets.ImageConfiguration createLocalImageConfiguration({
    widgets.Size? size,
  }) {
    return widgets.createLocalImageConfiguration(this, size: size);
  }
}

/// `getAxisDirectionFromAxisReverseAndDirectionality(context, ...)` as `context.getAxisDirectionFromAxisReverseAndDirectionality(...)`
extension XContextGetAxisDirectionFromAxisReverseAndDirectionality
    on widgets.BuildContext {
  /// Returns the [widgets.AxisDirection] in the given [widgets.Axis] in the
  /// current [widgets.Directionality] (or the reverse if `reverse` is true).
  ///
  /// Equivalent to [widgets.getAxisDirectionFromAxisReverseAndDirectionality].
  widgets.AxisDirection getAxisDirectionFromAxisReverseAndDirectionality(
    widgets.Axis axis,
    bool reverse,
  ) {
    return widgets.getAxisDirectionFromAxisReverseAndDirectionality(
      this,
      axis,
      reverse,
    );
  }
}
