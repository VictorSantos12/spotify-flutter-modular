// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_config_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeConfigController on _HomeConfigControllerBase, Store {
  final _$userNameAtom = Atom(name: '_HomeConfigControllerBase.userName');

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  final _$getUserNameAsyncAction =
      AsyncAction('_HomeConfigControllerBase.getUserName');

  @override
  Future getUserName() {
    return _$getUserNameAsyncAction.run(() => super.getUserName());
  }

  @override
  String toString() {
    return '''
userName: ${userName}
    ''';
  }
}
