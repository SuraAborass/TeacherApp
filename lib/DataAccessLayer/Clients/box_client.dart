import 'package:get_storage/get_storage.dart';
import '../Models/user.dart';

class BoxClient {
  final box = GetStorage();

  get json => null;

  Future<bool> getAuthState() async {
    print(box.read('authed_teacher'));
    if (await box.read('authed_teacher') != null) {
      return true;
    }
    return false;
  }

  Future<User> getAuthedUser() async {
    return User.fromBoxMap(await box.read('user_teacher'));
  }

  Future<void> setAuthedUser(User user) async {
    await box.write('authed_teacher', true);
    await box.write('user_teacher', user.toMap());
  }

  Future<void> removeUserData() async {
    await box.remove('authed_teacher');
    await box.remove('user_teacher');
  }

}