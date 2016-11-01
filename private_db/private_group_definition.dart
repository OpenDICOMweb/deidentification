// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

Map generatePrivateGroup(String creator, String manufacturer, String modality,
                          String description, groupNumber, String elements) {
  Map privateGroup = {
    "creator": creator,
    "manufacturer": manufacturer,
    "modality": modality,
    "description": description,
    "defaultGroupNo": groupNumber,
    "elements": elements
  };

  return privateGroup;
}

Map generatePrivateElements() {
  Map elements = {[
    {"type": "PrivateElement",
      "number": element,
      "vr": vr}]
  };
}