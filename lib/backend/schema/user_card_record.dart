import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_card_record.g.dart';

abstract class UserCardRecord
    implements Built<UserCardRecord, UserCardRecordBuilder> {
  static Serializer<UserCardRecord> get serializer =>
      _$userCardRecordSerializer;

  String? get uid;

  int? get cvv;

  bool? get blockedCard;

  int? get numberCard;

  int? get expiryMonthCard;

  int? get expiryYearCard;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(UserCardRecordBuilder builder) => builder
    ..uid = ''
    ..cvv = 0
    ..blockedCard = false
    ..numberCard = 0
    ..expiryMonthCard = 0
    ..expiryYearCard = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('user_card')
          : FirebaseFirestore.instance.collectionGroup('user_card');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('user_card').doc();

  static Stream<UserCardRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserCardRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserCardRecord._();
  factory UserCardRecord([void Function(UserCardRecordBuilder) updates]) =
      _$UserCardRecord;

  static UserCardRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserCardRecordData({
  String? uid,
  int? cvv,
  bool? blockedCard,
  int? numberCard,
  int? expiryMonthCard,
  int? expiryYearCard,
}) {
  final firestoreData = serializers.toFirestore(
    UserCardRecord.serializer,
    UserCardRecord(
      (u) => u
        ..uid = uid
        ..cvv = cvv
        ..blockedCard = blockedCard
        ..numberCard = numberCard
        ..expiryMonthCard = expiryMonthCard
        ..expiryYearCard = expiryYearCard,
    ),
  );

  return firestoreData;
}
