import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_transaction_record.g.dart';

abstract class UserTransactionRecord
    implements Built<UserTransactionRecord, UserTransactionRecordBuilder> {
  static Serializer<UserTransactionRecord> get serializer =>
      _$userTransactionRecordSerializer;

  String? get sendName;

  double? get amount;

  String? get uid;

  int? get cpfReceived;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(UserTransactionRecordBuilder builder) =>
      builder
        ..sendName = ''
        ..amount = 0.0
        ..uid = ''
        ..cpfReceived = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_transaction')
          : FirebaseFirestore.instance.collectionGroup('user_transaction');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('user_transaction').doc();

  static Stream<UserTransactionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserTransactionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserTransactionRecord._();
  factory UserTransactionRecord(
          [void Function(UserTransactionRecordBuilder) updates]) =
      _$UserTransactionRecord;

  static UserTransactionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserTransactionRecordData({
  String? sendName,
  double? amount,
  String? uid,
  int? cpfReceived,
}) {
  final firestoreData = serializers.toFirestore(
    UserTransactionRecord.serializer,
    UserTransactionRecord(
      (u) => u
        ..sendName = sendName
        ..amount = amount
        ..uid = uid
        ..cpfReceived = cpfReceived,
    ),
  );

  return firestoreData;
}
