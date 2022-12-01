// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_charges_transaction_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserChargesTransactionRecord>
    _$userChargesTransactionRecordSerializer =
    new _$UserChargesTransactionRecordSerializer();

class _$UserChargesTransactionRecordSerializer
    implements StructuredSerializer<UserChargesTransactionRecord> {
  @override
  final Iterable<Type> types = const [
    UserChargesTransactionRecord,
    _$UserChargesTransactionRecord
  ];
  @override
  final String wireName = 'UserChargesTransactionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserChargesTransactionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.historyCharge;
    if (value != null) {
      result
        ..add('historyCharge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cpfCharge;
    if (value != null) {
      result
        ..add('cpfCharge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UserChargesTransactionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserChargesTransactionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'historyCharge':
          result.historyCharge = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cpfCharge':
          result.cpfCharge = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserChargesTransactionRecord extends UserChargesTransactionRecord {
  @override
  final double? historyCharge;
  @override
  final String? uid;
  @override
  final double? cpfCharge;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserChargesTransactionRecord(
          [void Function(UserChargesTransactionRecordBuilder)? updates]) =>
      (new UserChargesTransactionRecordBuilder()..update(updates))._build();

  _$UserChargesTransactionRecord._(
      {this.historyCharge, this.uid, this.cpfCharge, this.ffRef})
      : super._();

  @override
  UserChargesTransactionRecord rebuild(
          void Function(UserChargesTransactionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserChargesTransactionRecordBuilder toBuilder() =>
      new UserChargesTransactionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserChargesTransactionRecord &&
        historyCharge == other.historyCharge &&
        uid == other.uid &&
        cpfCharge == other.cpfCharge &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, historyCharge.hashCode), uid.hashCode),
            cpfCharge.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserChargesTransactionRecord')
          ..add('historyCharge', historyCharge)
          ..add('uid', uid)
          ..add('cpfCharge', cpfCharge)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserChargesTransactionRecordBuilder
    implements
        Builder<UserChargesTransactionRecord,
            UserChargesTransactionRecordBuilder> {
  _$UserChargesTransactionRecord? _$v;

  double? _historyCharge;
  double? get historyCharge => _$this._historyCharge;
  set historyCharge(double? historyCharge) =>
      _$this._historyCharge = historyCharge;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  double? _cpfCharge;
  double? get cpfCharge => _$this._cpfCharge;
  set cpfCharge(double? cpfCharge) => _$this._cpfCharge = cpfCharge;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserChargesTransactionRecordBuilder() {
    UserChargesTransactionRecord._initializeBuilder(this);
  }

  UserChargesTransactionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _historyCharge = $v.historyCharge;
      _uid = $v.uid;
      _cpfCharge = $v.cpfCharge;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserChargesTransactionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserChargesTransactionRecord;
  }

  @override
  void update(void Function(UserChargesTransactionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserChargesTransactionRecord build() => _build();

  _$UserChargesTransactionRecord _build() {
    final _$result = _$v ??
        new _$UserChargesTransactionRecord._(
            historyCharge: historyCharge,
            uid: uid,
            cpfCharge: cpfCharge,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
