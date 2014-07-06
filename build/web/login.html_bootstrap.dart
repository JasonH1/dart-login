library app_bootstrap;

import 'package:polymer/polymer.dart';

import 'dart-login.dart' as i0;
import 'login.html.0.dart' as i1;
import 'package:smoke/smoke.dart' show Declaration, PROPERTY, METHOD;
import 'package:smoke/static.dart' show useGeneratedCode, StaticConfiguration;
import 'dart-login.dart' as smoke_0;
import 'package:polymer/polymer.dart' as smoke_1;
import 'package:observe/src/metadata.dart' as smoke_2;
abstract class _M0 {} // PolymerElement & ChangeNotifier

void main() {
  useGeneratedCode(new StaticConfiguration(
      checkedMode: false,
      getters: {
        #email: (o) => o.email,
        #error: (o) => o.error,
        #login: (o) => o.login,
        #password: (o) => o.password,
      },
      setters: {
        #email: (o, v) { o.email = v; },
        #error: (o, v) { o.error = v; },
        #password: (o, v) { o.password = v; },
      },
      parents: {
        smoke_0.DartLogin: _M0,
        _M0: smoke_1.PolymerElement,
      },
      declarations: {
        smoke_0.DartLogin: {
          #email: const Declaration(#email, String, kind: PROPERTY, annotations: const [smoke_2.reflectable, smoke_2.observable]),
          #error: const Declaration(#error, String, kind: PROPERTY, annotations: const [smoke_2.reflectable, smoke_2.observable]),
          #password: const Declaration(#password, String, kind: PROPERTY, annotations: const [smoke_2.reflectable, smoke_2.observable]),
        },
      },
      names: {
        #email: r'email',
        #error: r'error',
        #login: r'login',
        #password: r'password',
      }));
  configureForDeployment([
      () => Polymer.register('dart-login', i0.DartLogin),
    ]);
  i1.main();
}
