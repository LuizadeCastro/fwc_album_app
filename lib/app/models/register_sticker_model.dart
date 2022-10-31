import 'dart:convert';

class RegisterStickerModel {
  final String name;
  final String stickerCode;
  final String stickerNumber;
  RegisterStickerModel({
    required this.name,
    required this.stickerCode,
    required this.stickerNumber,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'sticker_code': stickerCode});
    result.addAll({'sticker_number': stickerNumber});

    return result;
  }

  factory RegisterStickerModel.fromMap(Map<String, dynamic> map) {
    return RegisterStickerModel(
      name: map['name'] ?? '',
      stickerCode: map['sticker_code'] ?? '',
      stickerNumber: map['sticker_number'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterStickerModel.fromJson(String source) =>
      RegisterStickerModel.fromMap(json.decode(source));
}
