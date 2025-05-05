// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riwayat-model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RiwayatModelAdapter extends TypeAdapter<RiwayatModel> {
  @override
  final int typeId = 0;

  @override
  RiwayatModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RiwayatModel(
      imagePath: fields[0] as String,
      label: fields[1] as String,
      confidence: fields[2] as double,
      cfGabungan: fields[3] as double,
      tanggal: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, RiwayatModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.imagePath)
      ..writeByte(1)
      ..write(obj.label)
      ..writeByte(2)
      ..write(obj.confidence)
      ..writeByte(3)
      ..write(obj.cfGabungan)
      ..writeByte(4)
      ..write(obj.tanggal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RiwayatModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
