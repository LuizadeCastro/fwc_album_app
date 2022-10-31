import 'package:flutter/widgets.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_app/app/pages/auth/register/presenter/register_presenter.dart';
import 'package:fwc_album_app/app/pages/auth/register/presenter/register_presenter_impl.dart';
import 'package:fwc_album_app/app/pages/auth/register/register_page.dart';

class RegisterRoute extends FlutterGetItPageRoute {
  const RegisterRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<RegisterPresenter>(
          (i) => RegisterPresenterImpl(
            authRepository: i(),
          ),
        )
      ];

  @override
  WidgetBuilder get page => (context) => RegisterPage(presenter: context.get());
}
