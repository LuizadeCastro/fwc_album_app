import 'package:fwc_album_app/app/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getMe();
}
