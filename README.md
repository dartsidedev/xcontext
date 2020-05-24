# `xcontext`

> This simple package adds static extension methods and getters to the BuildContext context object from the `widgets`, `material`, and `cupertino` libraries.

`xcontext` makes it easy for you to add static extensions methods and getters to your `context` from Flutter's `widgets`, `material`, and `cupertino` libraries.
You have total control over which methods and getters you want to add to your context, with all the type safety guarantees Dart provides, while keeping your code concise and clean.

[![Continuous Integration](https://github.com/dartsidedev/xcontext/workflows/Continuous%20Integration/badge.svg?branch=master)](https://github.com/dartsidedev/xcontext/actions) [![xcontext](https://img.shields.io/pub/v/xcontext?label=xcontext&logo=dart)](https://pub.dev/packages/xcontext 'See xcontext package info on pub.dev') [![Published by dartside.dev](https://img.shields.io/static/v1?label=Published%20by&message=dartside.dev&logo=dart&logoWidth=30&color=40C4FF&labelColor=1d599b&labelWidth=100)](https://pub.dev/publishers/dartside.dev/packages) [![GitHub Stars Count](https://img.shields.io/github/stars/dartsidedev/xcontext?logo=github)](https://github.com/dartsidedev/xcontext 'Star me on GitHub!')

## Important links

* [Read the source code and **star the repo!** on GitHub](https://github.com/dartsidedev/xcontext)
* [Open an issue on GitHub](https://github.com/dartsidedev/xcontext/issues)
* [See package on `pub.dev`](https://pub.dev/packages/xcontext)
* [Read the docs on `pub.dev`](https://pub.dev/documentation/xcontext/latest/)

## About this package

This package is an experiment to get rid of the `SomeClass.of(context).someMethod` calls in a codebase.
As I was talking to people new to Flutter, I noticed that some people just can't wrap their heads around it,
while simple getters and methods just feel intuitive to all of them.

The package also tries to simplify other method calls that for some reasons require the `context` to be passed in (think of `showDialog(context)`).

Using the extension might make your code easier to type, read and understand.
I wrote the package in a way that is easy to customize to your needs and style preference, so it's easy to selectively
add extensions.

It's important to mention that the `.of` static methods should not be considered bad or evil in any way.
If you like that idiom, please feel free to continue using it!

## Usage

```dart
// Add all methods and getters to BuildContext
import 'package:xcontext/xcontext.dart';

// then...
context.navigator.pushNamed('/other');
context.scaffold;
context.mediaQuery.platformBrightness;
context.theme;
context.dividerTheme;
context.cupertinoLocalizations;
context.cupertinoTheme;
context.showCupertinoDialog(builder: builder, useRootNavigator: true); // Don't forget to define the builder.
context.showTimePicker(initialTime: TimeOfDay.now());
```

If you prefer to be even more concise, use the "tiny" version:

```dart
import 'package:xcontext/tiny_xcontext.dart';

// then...
context.nav.pushNamed('/other');
context.scaf;
context.mq.platformBrightness;
context.theme; // Not all getters are shortened. Theme is short enough already
// context.dividerTheme; // Not all getters are available in "tiny" mode
context.cupL10n;
context.cuptheme;
context.showCupDialog(builder: builder, useRootNavigator: true); // Don't forget to define the builder.
context.showTP(initialTime: TimeOfDay.now());
```

### The libraries of this package

All the `.of` static methods from the official `widgets`, `material`, and `cupertino` libraries are available for you, if you import `xcontext.dart`.

```dart
// Add all methods and getters to BuildContext
import 'package:xcontext/xcontext.dart';
// Alternatively, if you want to extend only from some libraries:
import 'package:xcontext/cupertino.dart';
import 'package:xcontext/material.dart';
import 'package:xcontext/widgets.dart';

// Add some methods and getters to BuildContext, some are shortened
import 'package:xcontext/tiny_xcontext.dart';
// Alternatively, if you want to extend only from some libraries with the short version
import 'package:xcontext/tiny_cupertino.dart';
import 'package:xcontext/tiny_material.dart';
import 'package:xcontext/tiny_widgets.dart';
```

### From `Navigator.of(context)` to `context.navigator`

The `xcontext` package lets you access `Something.of(context).someMethod` directly on the `context` as `context.something.someMethod`.
It adds all the `.of` static methods return value as getters. So after you imported `'package:xcontext/xcontext.dart'`, you will be able to write:

```dart
import 'package:xcontext/xcontext.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Instead of Theme.of(context), just write: 
    final theme = context.theme;
    // ...and use the theme as usual:
    print('Current brightness is ${theme.brightness}');
    // ...
    return RaisedButton(
      onPressed: () {
        // Instead of Navigator.of(context), use context.navigator
        context.navigator.pushNamed('/other');
      },
      child: Text('Navigator push'),
    );
  }
}
```

In case the `.of` static method accepts extra parameters, those values as exposed in a different getter, such as: 

```dart
// Navigator.of(context, rootNavigator: true)
context.rootNavigator;

// Theme.of(this, shadowThemeOnly: true);
context.shadowTheme;
```

### Show this, show that!

All `showXYZ` methods are added, as well, so now you can write:

```dart
import 'package:xcontext/xcontext.dart';
// You can import either xcontext or only material to get showAboutDialog
// import 'package:xcontext/material.dart';

RaisedButton(
  onPressed: () {
    context.showAboutDialog(
      applicationName: 'xcontext example app',
      applicationIcon: FlutterLogo(),
      applicationLegalese: 'Copyright 2020',
      applicationVersion: '1.2.3',
      children: [
        Text('Thank you for using this package!'),
        Text('❤️'),
      ],
    );
  },
);
```

### `hide`/`show`

While the extensions might improve the discoverability of these values, seeing tens of extra methods popping up in your
IDE whenever you type `context.` can be annoying. For these reasons, every getter and method is added as a separate
extension, so you can `hide` or `show` them as you like.

```dart
// // HIDE // //
// If one or more extensions annoy you, hide them.
// What the hell is a navigation rail theme?
// Don't show context.navigationRailTheme
import 'package:xcontext/material.dart' hide XContextNavigationRailTheme;

// // SHOW // //
// If you only need some extensions, show them, and hide all others.
// Only add context.navigator and context.rootNavigator
import 'package:xcontext/widgets.dart' show XContextNavigator, XContextRootNavigator;
```

### Adopting it in a team

Writing which extension to include in your files can be annoying.

If you are working on a team, you might decide that while accessing some getters is sweet (maybe `navigator`, `mediaQuery`),
the other extensions do not improve much, so you as a team want to decide to use only a subset of the extensions everywhere in your app's codebase.

Just create a new Dart file, for example `your_favorite_extensions.dart`, select your exports, and import this file in the rest of your codebase.

```dart
// your_favorite_extensions.dart
export 'package:xcontext/xcontext.dart'
    show XContextShowGeneralDialog,  // context.showGeneralDialog
         XContextNavigator, // context.navigator
         XContextRootNavigator, // context.rootNavigator
         XContextScaffold,  // context.scaffold
         XContextMediaQuery; // context.mediaQuery

// You may even write your own context extensions here.
```

```dart
// Some other file...
import 'package:your_awesome_app/your_favorite_extensions';
```

### The tiny variation

This package also has a `tiny` variation of the extensions. The `tiny` version is great is you prefer brevity.
`'package:xcontext/tiny_xcontext.dart'` does not include all the possible getters and methods, and some getters were renamed so that you can write less code while keeping everything straightforward:

```dart
import 'package:xcontext/tiny_xcontext.dart';

// then...
context.nav.pop();
final isLight = context.mq.platformBrightness == Brightness.light;
```

You can also import only one library, for example importing `'package:xcontext/tiny_cupertino.dart'` will not add anything from the `material` or `widgets` library.
