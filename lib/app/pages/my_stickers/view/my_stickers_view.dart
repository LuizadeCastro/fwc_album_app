import 'package:fwc_album_app/app/models/groups_stickers_model.dart';

abstract class MyStickersView {
  void loadedPage(List<GroupsStickersModel> model);
  void error(String message);
  void updateStatusFilter(status);
  void updateAlbum(List<GroupsStickersModel> album);
  void showLoader();
}
