// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StartController on _StartControllerBase, Store {
  final _$isLoggedAtom = Atom(name: '_StartControllerBase.isLogged');

  @override
  bool get isLogged {
    _$isLoggedAtom.reportRead();
    return super.isLogged;
  }

  @override
  set isLogged(bool value) {
    _$isLoggedAtom.reportWrite(value, super.isLogged, () {
      super.isLogged = value;
    });
  }

  final _$loggLoadingAtom = Atom(name: '_StartControllerBase.loggLoading');

  @override
  bool get loggLoading {
    _$loggLoadingAtom.reportRead();
    return super.loggLoading;
  }

  @override
  set loggLoading(bool value) {
    _$loggLoadingAtom.reportWrite(value, super.loggLoading, () {
      super.loggLoading = value;
    });
  }

  final _$currentIndexAtom = Atom(name: '_StartControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$logCheckAsyncAction = AsyncAction('_StartControllerBase.logCheck');

  @override
  Future logCheck() {
    return _$logCheckAsyncAction.run(() => super.logCheck());
  }

  final _$_StartControllerBaseActionController =
      ActionController(name: '_StartControllerBase');

  @override
  dynamic appBarNavigation() {
    final _$actionInfo = _$_StartControllerBaseActionController.startAction(
        name: '_StartControllerBase.appBarNavigation');
    try {
      return super.appBarNavigation();
    } finally {
      _$_StartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic routeDefinition(int id) {
    final _$actionInfo = _$_StartControllerBaseActionController.startAction(
        name: '_StartControllerBase.routeDefinition');
    try {
      return super.routeDefinition(id);
    } finally {
      _$_StartControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLogged: ${isLogged},
loggLoading: ${loggLoading},
currentIndex: ${currentIndex}
    ''';
  }
}
