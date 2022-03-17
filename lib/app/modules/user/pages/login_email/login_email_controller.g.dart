// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_email_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmailLogController on _EmailLogControllerBase, Store {
  final _$emailAtom = Atom(name: '_EmailLogControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_EmailLogControllerBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$loadingAtom = Atom(name: '_EmailLogControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$emailErrorAtom = Atom(name: '_EmailLogControllerBase.emailError');

  @override
  bool get emailError {
    _$emailErrorAtom.reportRead();
    return super.emailError;
  }

  @override
  set emailError(bool value) {
    _$emailErrorAtom.reportWrite(value, super.emailError, () {
      super.emailError = value;
    });
  }

  final _$passwordErrorAtom =
      Atom(name: '_EmailLogControllerBase.passwordError');

  @override
  bool get passwordError {
    _$passwordErrorAtom.reportRead();
    return super.passwordError;
  }

  @override
  set passwordError(bool value) {
    _$passwordErrorAtom.reportWrite(value, super.passwordError, () {
      super.passwordError = value;
    });
  }

  final _$loginFormValidateAsyncAction =
      AsyncAction('_EmailLogControllerBase.loginFormValidate');

  @override
  Future<dynamic> loginFormValidate() {
    return _$loginFormValidateAsyncAction.run(() => super.loginFormValidate());
  }

  final _$_EmailLogControllerBaseActionController =
      ActionController(name: '_EmailLogControllerBase');

  @override
  void setEmail(String userEmail) {
    final _$actionInfo = _$_EmailLogControllerBaseActionController.startAction(
        name: '_EmailLogControllerBase.setEmail');
    try {
      return super.setEmail(userEmail);
    } finally {
      _$_EmailLogControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String userPassword) {
    final _$actionInfo = _$_EmailLogControllerBaseActionController.startAction(
        name: '_EmailLogControllerBase.setPassword');
    try {
      return super.setPassword(userPassword);
    } finally {
      _$_EmailLogControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
loading: ${loading},
emailError: ${emailError},
passwordError: ${passwordError}
    ''';
  }
}
