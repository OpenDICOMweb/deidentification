// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Author: Jim Philbin <jfphilbin@gmail.edu> -
// See the AUTHORS file for other contributors.

// *** This file generated by '../bin/generate/generate_basic_profile.dart' ***
// ----------------------------------------------------------

import 'package:deid/src/deid/action.dart';

class CleanGraphicsOption {
  final int tag;
  final String keyword;
  final Action action;

  const CleanGraphicsOption(this.tag, this.keyword, this.action);

  static lookup(int tag) => map[tag];

  static const kGraphicAnnotationSequence = const CleanGraphicsOption(0x00700001, "GraphicAnnotationSequence", Action.C);


  static const Map<int, String> map = const {
    0x00700001: kGraphicAnnotationSequence};

  static const List<int> keys = const [
    0x00700001];

  static const List<String> values = const [
    kGraphicAnnotationSequence];



}
  