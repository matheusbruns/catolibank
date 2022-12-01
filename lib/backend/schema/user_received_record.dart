import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_received_record.g.dart';

abstract class UserReceivedRecord
    implements Built<UserReceivedRecord, UserReceivedRecordBuilder> {
  static Serializer<UserReceivedRecord> get serializer =>
      _$userReceivedRecordSerializer;

  double? get historyReceived;

  String? get uid;

  double? get cpfReceived;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(UserReceivedRecordBuilder builder) => builder
    ..historyReceived = 0.0
    ..uid = ''
    ..cpfReceived = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_Received')
          : FirebaseFirestore.instance.collectionGroup('user_Received');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('user_Received').doc();

  static Stream<UserReceivedRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserReceivedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserReceivedRecord._();
  factory UserReceivedRecord(
          [void Function(UserReceivedRecordBuilder) updates]) =
      _$UserReceivedRecord;

  static UserReceivedRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserReceivedRecordData({
  double? historyReceived,
  String? uid,
  double? cpfReceived,
}) {
  final firestoreData = serializers.toFirestore(
    UserReceivedRecord.serializer,
    UserReceivedRecord(
      (u) => u
        ..historyReceived = historyReceived
        ..uid = uid
        ..cpfReceived = cpfReceived,
    ),
  );

  return firestoreData;
}
