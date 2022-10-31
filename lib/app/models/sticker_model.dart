import 'dart:convert';

class StickerModel {
  final int id;
  final String stickerCode;
  final String stickerName;
  final String stickerNumber;
  final String stickerImage;
  StickerModel({
    required this.id,
    required this.stickerCode,
    required this.stickerName,
    required this.stickerNumber,
    required this.stickerImage,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'sticker_code': stickerCode});
    result.addAll({'sticker_name': stickerName});
    result.addAll({'sticker_number': stickerNumber});
    result.addAll({'sticker_image': stickerImage});

    return result;
  }

  factory StickerModel.fromMap(Map<String, dynamic> map) {
    return StickerModel(
      id: map['id']?.toInt() ?? 0,
      stickerCode: map['sticker_code'] ?? '',
      stickerName: map['sticker_name'] ?? '',
      stickerNumber: map['sticker_number'] ?? '',
      stickerImage: map['sticker_image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory StickerModel.fromJson(String source) =>
      StickerModel.fromMap(json.decode(source));
}
