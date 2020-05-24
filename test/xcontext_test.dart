import 'package:flutter_test/flutter_test.dart';

import 'package:xcontext/xcontext.dart';

void main() {
  test(
      'correctly determines whether I am going to write tests for this library',
      () {
    const gonnaWriteTests = false;
    expect(gonnaWriteTests, !true);
  });
}
