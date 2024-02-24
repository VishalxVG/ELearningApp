import 'package:elearningapp/pages/register_page/notifier/register_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'register_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return RegisterState();
  }

  void onUserNameChanged(String name) {
    state = state.copyWith(userName: name);
  }

  void onUserEmailChanged(String email) {
    state = state.copyWith(email: email);
  }
}
