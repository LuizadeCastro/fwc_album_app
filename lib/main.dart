import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/config/env/env.dart';
import 'package:fwc_album_app/app/fwc_album_app.dart';

void main() async {
  await Env.instance.load();
  runApp(FwcAlbumApp());
}
