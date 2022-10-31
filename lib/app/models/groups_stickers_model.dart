import 'dart:convert';

import 'user_sticker_model.dart';

class GroupsStickersModel {
  final int id;
  final String countryCode;
  final String countryName;
  final int stickersStart;
  final int stickersEnd;
  final List<UserStickerModel> stickers;
  final String flag;

  GroupsStickersModel({
    required this.id,
    required this.countryCode,
    required this.countryName,
    required this.stickersStart,
    required this.stickersEnd,
    required this.stickers,
    required this.flag,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'country_code': countryCode});
    result.addAll({'country_name': countryName});
    result.addAll({'stickers_start': stickersStart});
    result.addAll({'stickers_end': stickersEnd});
    result.addAll({'stickers': stickers.map((x) => x.toMap()).toList()});
    result.addAll({'flag': flag});

    return result;
  }

  factory GroupsStickersModel.fromMap(Map<String, dynamic> map) {
    return GroupsStickersModel(
      id: map['id']?.toInt() ?? 0,
      countryCode: map['country_code'] ?? '',
      countryName: map['country_name'] ?? '',
      stickersStart: map['stickers_start']?.toInt() ?? 0,
      stickersEnd: map['stickers_end']?.toInt() ?? 0,
      stickers: List<UserStickerModel>.from(
          map['stickers']?.map((x) => UserStickerModel.fromMap(x))),
      flag: map['flag'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GroupsStickersModel.fromJson(String source) =>
      GroupsStickersModel.fromMap(json.decode(source));
}
