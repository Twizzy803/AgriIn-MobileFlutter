import 'package:hive/hive.dart';

part 'riwayat-model.g.dart';

@HiveType(typeId: 0)
class RiwayatModel {
  @HiveField(0)
  String imagePath;

  @HiveField(1)
  String label;

  @HiveField(2)
  double confidence;

  @HiveField(3)
  double cfGabungan;

  @HiveField(4)
  DateTime tanggal;

  RiwayatModel({
    required this.imagePath,
    required this.label,
    required this.confidence,
    required this.cfGabungan,
    required this.tanggal,
});
}