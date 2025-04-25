class RiwayatModel {
  final String imagePath;
  final String label;
  final double confidence;
  final double cfGabungan;
  final DateTime tanggal;

  RiwayatModel({
    required this.imagePath,
    required this.label,
    required this.confidence,
    required this.cfGabungan,
    required this.tanggal,
  });
}
