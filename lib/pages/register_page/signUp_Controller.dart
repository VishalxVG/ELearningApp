import 'package:elearningapp/pages/register_page/notifier/register_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SingUpController {
  late WidgetRef ref;

  SingUpController({required this.ref});

  void handleSignUp() {
    var state = ref.read(registerNotifierProvider);

    String name = state.userName;
    String email = state.email;
    String password = state.password;
    String rePassword = state.repassword;
  }
}
