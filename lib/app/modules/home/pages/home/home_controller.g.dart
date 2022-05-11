// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$lastPlayListsListenedAtom =
      Atom(name: '_HomeControllerBase.lastPlayListsListened');

  @override
  List<PlayList> get lastPlayListsListened {
    _$lastPlayListsListenedAtom.reportRead();
    return super.lastPlayListsListened;
  }

  @override
  set lastPlayListsListened(List<PlayList> value) {
    _$lastPlayListsListenedAtom.reportWrite(value, super.lastPlayListsListened,
        () {
      super.lastPlayListsListened = value;
    });
  }

  final _$homeTitleAtom = Atom(name: '_HomeControllerBase.homeTitle');

  @override
  String get homeTitle {
    _$homeTitleAtom.reportRead();
    return super.homeTitle;
  }

  @override
  set homeTitle(String value) {
    _$homeTitleAtom.reportWrite(value, super.homeTitle, () {
      super.homeTitle = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic homeTitleDefinition() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.homeTitleDefinition');
    try {
      return super.homeTitleDefinition();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
lastPlayListsListened: ${lastPlayListsListened},
homeTitle: ${homeTitle}
    ''';
  }
}
