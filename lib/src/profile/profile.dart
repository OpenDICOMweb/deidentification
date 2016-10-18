// Copyright (c) 2016, Open DICOMweb Project. All rights reserved.
// Use of this source code is governed by the open source license
// that can be found in the LICENSE file.
// Original author: Jim Philbin <jfphilbin@gmail.edu> - 
// See the AUTHORS file for other contributors.

import 'dart:convert';

import 'global_rule.dart';
import 'rule.dart';
import 'test_data.dart';
import '../trial/trial.dart';

enum ProfileFormat {text, json, xml }


class Profile {
  final String name;
  final String path;
  //TODO: integrate this
  //final String quarantinePath;
  final List<String> lines;
  final GlobalRule globals;
  final Map<String, dynamic> trialMap;
  final Map<String, String> parameters;
  final List<int> keepTags;
  final List<Rule> rules;
  final Map<String, String> comments;
  final Map<String, String> errors;

  Profile(this.name, this.path, this.lines)
      : globals = new GlobalRule(),
        trialMap = testTrial,
        parameters = {},
        keepTags = [],
        rules = [],
        comments = {},
        errors = {};

  Profile._(this.name, this.path, this.lines, this.globals, this.trialMap,
             this.parameters, this.keepTags, this.rules, this.comments, this.errors);

  //String get extension => '.dvp';

  Map<String, dynamic> get map =>
      {
        "name": name,
        "path": path,
        "parameters": parameters,
      //  "global": globalMap,
        "rules": rules,
        "comments": comments,
        "errors": errors
      };

  void addRule(Rule rule) {
    rules.add(rule);
  }

  bool keep(int tag) => keepTags.contains(tag);

  String lookup(String key) => parameters[key];

  bool isVariable(String v) => v[0] == "@";

  bool isNotVariable(String v) => !isVariable(v);

  String getVariable(String v) => (isVariable(v)) ? parameters[v] :null;

  void addVariable(String v, String value) {
    //TODO: can a var have a var in its value??
    if (isVariable(v) && (value is String))
      parameters[v] = value;
  }

  bool comment(int lineNo, String line) {
    comments["$lineNo"] = "$line";
    return true;
  }

  bool error(int lineNo, String msg) {
    errors["$lineNo"] = "$msg";
    return false;
  }

  String get rulesToJson {
    List<String> rList = [];
    rules.forEach((Rule rule) => rList.add(rule.json));
    return '[\n${rList.join(',\n')}\n]';
  }

  String get json =>
    '''{
    "@type": "Clinical Study Profile",
    "name": "$name",
    "path": "$path",
    "parameters": ${JSON.encode(parameters)},
    "rules": $rulesToJson,
    "comments": ${JSON.encode(comments)},
    "errors": ${JSON.encode(errors)}
}''';

  String format([ProfileFormat format]) {
    switch (format) {
      case ProfileFormat.json:
        return json;
      case ProfileFormat.text:
      //TODO:
        return "Text is not yet supported.";
      case ProfileFormat.xml:
        return "XML is not yet supported.";
      default:
        return json;
    }
  }

  Profile evaluateTrial(Trial trial) {}

  String toString() => 'Profile: $name';

  static parse(String s) {
    Map map = JSON.decode(s);
    return new Profile._(map["name"], map["path"],  map["lines"], map["globals"],
                              map["trialMap"], map["pMap"], map["keepTags"], map["rules"],
                              map["comments"], map["errors"]);
  }

}


