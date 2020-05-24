import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

extension BuildContextWidgetsX on BuildContext {
  /// Returns the page storage bucket from the closest [PageStorage] ancestor.
  ///
  /// `context.pageStorage` is equivalent to `PageStorage.of(context)`.
  PageStorageBucket get pageStorage {
    return PageStorage.of(this);
  }

  /// Returns the text direction from the closest [Directionality] ancestor.
  ///
  /// `context.textDirection` is equivalent to `Directionality.of(context)`.
  TextDirection get textDirection {
    return Directionality.of(this);
  }

  /// Returns the asset bundle from the closest [DefaultAssetBundle] ancestor.
  ///
  /// `context.assetBundle` is equivalent to `DefaultAssetBundle.of(context)`.
  AssetBundle get assetBundle {
    return DefaultAssetBundle.of(this);
  }

  /// Returns the default text style from the closest [DefaultTextStyle] ancestor.
  ///
  /// `context.defaultTextStyle` is equivalent to `DefaultTextStyle.of(context)`.
  DefaultTextStyle get defaultTextStyle {
    return DefaultTextStyle.of(this);
  }

  /// Returns the action dispatcher from the closest [Actions] ancestor.
  ///
  /// `context.actionDispatcher` is equivalent to `Actions.of(context)`.
  ActionDispatcher get actionDispatcher {
    return Actions.of(this);
  }

  /// Returns the action dispatcher or null from the closest [Actions] ancestor.
  ///
  /// `context.actionDispatcherOrNull` is equivalent to `Actions.of(context, nullOk: true)`.
  ActionDispatcher get actionDispatcherOrNull {
    return Actions.of(this, nullOk: true);
  }

  /// Returns the form state from the closest [Form] ancestor.
  ///
  /// `context.form` is equivalent to `Form.of(context)`.
  FormState get form {
    return Form.of(this);
  }

  /// Returns the navigator state from the closest [Navigator] ancestor.
  ///
  /// `context.navigator` is equivalent to `Navigator.of(context)`.
  NavigatorState get navigator {
    return Navigator.of(this);
  }

  /// Returns the root navigator state.
  ///
  /// `context.rootNavigator` is equivalent to `Navigator.of(context, rootNavigator: true)`.
  NavigatorState get rootNavigator {
    return Navigator.of(this, rootNavigator: true);
  }

  /// Returns the navigator state or null from the closest [Navigator] ancestor.
  ///
  /// `context.navigatorOrNull` is equivalent to `Navigator.of(context, nullOk: true)`.
  NavigatorState get navigatorOrNull {
    return Navigator.of(this, nullOk: true);
  }

  /// Returns the root navigator state or null.
  ///
  /// `context.rootNavigatorOrNull` is equivalent to `Navigator.of(context, rootNavigator: true, nullOk: true)`.
  NavigatorState get rootNavigatorOrNull {
    return Navigator.of(this, rootNavigator: true, nullOk: true);
  }

  /// Returns the media query data from the closest [MediaQuery] ancestor.
  ///
  /// `context.mediaQuery` is equivalent to `MediaQuery.of(context)`.
  MediaQueryData get mediaQuery {
    return MediaQuery.of(this);
  }

  /// Returns the media query data or null from the closest [MediaQuery] ancestor.
  ///
  /// `context.mediaQueryOrNull` is equivalent to `MediaQuery.of(context, nullOk: true)`.
  MediaQueryData get mediaQueryOrNull {
    return MediaQuery.of(this, nullOk: true);
  }

  /// Returns the scroll controller from the closest [PrimaryScrollController] ancestor.
  ///
  /// `context.primaryScrollController` is equivalent to `PrimaryScrollController.of(context)`.
  ScrollController get primaryScrollController {
    return PrimaryScrollController.of(this);
  }

  /// Returns the scrollable state from the closest [Scrollable] ancestor.
  ///
  /// `context.scrollable` is equivalent to `Scrollable.of(context)`.
  ScrollableState get scrollable {
    return Scrollable.of(this);
  }

  /// Returns the focus order from the closest [FocusTraversalOrder] ancestor.
  ///
  /// `context.focusOrder` is equivalent to `FocusTraversalOrder.of(context)`.
  FocusOrder get focusOrder {
    return FocusTraversalOrder.of(this);
  }

  /// Returns the focus order or null from the closest [FocusTraversalOrder] ancestor.
  ///
  /// `context.focusOrderOrNull` is equivalent to `FocusTraversalOrder.of(context, nullOk: true)`.
  FocusOrder get focusOrderOrNull {
    return FocusTraversalOrder.of(this, nullOk: true);
  }

  /// Returns the focus traversal policy from the closest [FocusTraversalGroup] ancestor.
  ///
  /// `context.focusTraversalPolicy` is equivalent to `FocusTraversalGroup.of(context)`.
  FocusTraversalPolicy get focusTraversalPolicy {
    return FocusTraversalGroup.of(this);
  }

  /// Returns the focus traversal policy or null from the closest [FocusTraversalGroup] ancestor.
  ///
  /// `context.focusTraversalPolicyOrNull` is equivalent to `FocusTraversalGroup.of(context, nullOk: true)`.
  FocusTraversalPolicy get focusTraversalPolicyOrNull {
    return FocusTraversalGroup.of(this, nullOk: true);
  }

  /// Returns the shortcut manager from the closest [Shortcuts] ancestor.
  ///
  /// `context.shortcutManager` is equivalent to `Shortcuts.of(context)`.
  ShortcutManager get shortcutManager {
    return Shortcuts.of(this);
  }

  /// Returns the shortcut manager or null from the closest [Shortcuts] ancestor.
  ///
  /// `context.shortcutManagerOrNull` is equivalent to `Shortcuts.of(context, nullOk: true)`.
  ShortcutManager get shortcutManagerOrNull {
    return Shortcuts.of(this, nullOk: true);
  }

  /// Returns the scroll behavior from the closest [ScrollConfiguration] ancestor.
  ///
  /// `context.scrollConfiguration` is equivalent to `ScrollConfiguration.of(context)`.
  ScrollBehavior get scrollConfiguration {
    return ScrollConfiguration.of(this);
  }

  /// Returns the icon theme data from the closest [IconTheme] ancestor.
  ///
  /// `context.iconTheme` is equivalent to `IconTheme.of(context)`.
  IconThemeData get iconTheme {
    return IconTheme.of(this);
  }

  /// Returns whether tickers are enabled or disabled from the closest [TickerMode] ancestor.
  ///
  /// `context.tickingEnabled` is equivalent to `TickerMode.of(context)`.
  bool get tickingEnabled {
    return TickerMode.of(this);
  }

  /// Returns the animated list state from the closest [AnimatedList] ancestor.
  ///
  /// `context.animatedList` is equivalent to `AnimatedList.of(context)`.
  AnimatedListState get animatedList {
    return AnimatedList.of(this);
  }

  /// Returns the animated list state or null if not present from the closest [AnimatedList] ancestor.
  ///
  /// `context.animatedListOrNull` is equivalent to `AnimatedList.of(context, nullOk: true)`.
  AnimatedListState get animatedListOrNull {
    return AnimatedList.of(this, nullOk: true);
  }

  /// Returns the sliver animated list state from the closest [SliverAnimatedList] ancestor.
  ///
  /// `context.sliverAnimatedList` is equivalent to `SliverAnimatedList.of(context)`.
  SliverAnimatedListState get sliverAnimatedList {
    return SliverAnimatedList.of(this);
  }

  /// Returns the sliver animated list state or null if not present from the closest [SliverAnimatedList] ancestor.
  ///
  /// `context.sliverAnimatedListOrNull` is equivalent to `SliverAnimatedList.of(this, nullOk: true)`.
  SliverAnimatedListState get sliverAnimatedListOrNull {
    return SliverAnimatedList.of(this, nullOk: true);
  }

  /// Returns the focus node from the closest [Focus] ancestor.
  ///
  /// `context.focusNode` is equivalent to `Focus.of(context)`.
  FocusNode get focusNode {
    return Focus.of(this);
  }

  /// Returns the focus node or null from the closest [Focus] ancestor.
  ///
  /// `context.focusNodeOrNull` is equivalent to `Focus.of(context, nullOk: true)`.
  FocusNode get focusNodeOrNull {
    return Focus.of(this, nullOk: true);
  }

  /// Returns the focus scope node from the closest [FocusScope] ancestor.
  ///
  /// `context.focusScope` is equivalent to `FocusScope.of(context)`.
  FocusScopeNode get focusScope {
    return FocusScope.of(this);
  }

  /// Returns the overlay state from the closest [Overlay] ancestor.
  ///
  /// `context.overlay` is equivalent to `Overlay.of(context)`.
  OverlayState get overlay {
    return Overlay.of(this);
  }

  /// Returns the overlay state from the root [Overlay] ancestor.
  ///
  /// `context.rootOverlay` is equivalent to `Overlay.of(context, rootOverlay: true)`.
  OverlayState get rootOverlay {
    return Overlay.of(this, rootOverlay: true);
  }

  /// Returns the widgets localizations from the closest [WidgetsLocalizations] ancestor.
  ///
  /// `context.widgetsLocalizations` is equivalent to `WidgetsLocalizations.of(context)`.
  WidgetsLocalizations get widgetsLocalizations {
    return WidgetsLocalizations.of(this);
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

  /// Displays a dialog above the current contents of the app.
  ///
  /// Equivalent to [_showGeneralDialog].
  Future<T> showGeneralDialog<T>(
      {@required RoutePageBuilder pageBuilder,
      bool barrierDismissible,
      String barrierLabel,
      Color barrierColor,
      Duration transitionDuration,
      RouteTransitionsBuilder transitionBuilder,
      bool useRootNavigator: true,
      RouteSettings routeSettings}) {
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

  /// Creates an [ImageConfiguration] based on the context (and optionally size).
  ImageConfiguration createLocalImageConfiguration({Size size}) {
    return _createLocalImageConfiguration(this, size: size);
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
}

const _precacheImage = precacheImage;
const _showGeneralDialog = showGeneralDialog;
const _createLocalImageConfiguration = createLocalImageConfiguration;
const _getAxisDirectionFromAxisReverseAndDirectionality =
    getAxisDirectionFromAxisReverseAndDirectionality;
