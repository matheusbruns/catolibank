import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_charges_record.g.dart';

abstract class UserChargesRecord
    implements Built<UserChargesRecord, UserChargesRecordBuilder> {
  static Serializer<UserChargesRecord> get serializer =>
      _$userChargesRecordSerializer;

  String? get sendName;

  double? get amouth;

  String? get uid;

  int? get cpfCharge;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(UserChargesRecordBuilder builder) => builder
    ..sendName = ''
    ..amouth = 0.0
    ..uid = ''
    ..cpfCharge = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_charges')
          : FirebaseFirestore.instance.collectionGroup('user_charges');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('user_charges').doc();

  static Stream<UserChargesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserChargesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserChargesRecord._();
  factory UserChargesRecord([void Function(UserChargesRecordBuilder) updates]) =
      _$UserChargesRecord;

  static UserChargesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserChargesRecordData({
  String? sendName,
  double? amouth,
  String? uid,
  int? cpfCharge,
}) {
  final firestoreData = serializers.toFirestore(
    UserChargesRecord.serializer,
    UserChargesRecord(
      (u) => u
        ..sendName = sendName
        ..amouth = amouth
        ..uid = uid
        ..cpfCharge = cpfCharge,
    ),
  );

  return firestoreData;
}
