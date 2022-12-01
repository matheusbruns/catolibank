import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_charges_transaction_record.g.dart';

abstract class UserChargesTransactionRecord
    implements
        Built<UserChargesTransactionRecord,
            UserChargesTransactionRecordBuilder> {
  static Serializer<UserChargesTransactionRecord> get serializer =>
      _$userChargesTransactionRecordSerializer;

  double? get historyCharge;

  String? get uid;

  double? get cpfCharge;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(UserChargesTransactionRecordBuilder builder) =>
      builder
        ..historyCharge = 0.0
        ..uid = ''
        ..cpfCharge = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_chargesTransaction')
          : FirebaseFirestore.instance
              .collectionGroup('user_chargesTransaction');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('user_chargesTransaction').doc();

  static Stream<UserChargesTransactionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserChargesTransactionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserChargesTransactionRecord._();
  factory UserChargesTransactionRecord(
          [void Function(UserChargesTransactionRecordBuilder) updates]) =
      _$UserChargesTransactionRecord;

  static UserChargesTransactionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserChargesTransactionRecordData({
  double? historyCharge,
  String? uid,
  double? cpfCharge,
}) {
  final firestoreData = serializers.toFirestore(
    UserChargesTransactionRecord.serializer,
    UserChargesTransactionRecord(
      (u) => u
        ..historyCharge = historyCharge
        ..uid = uid
        ..cpfCharge = cpfCharge,
    ),
  );

  return firestoreData;
}
