// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_transaction_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserTransactionRecord> _$userTransactionRecordSerializer =
    new _$UserTransactionRecordSerializer();

class _$UserTransactionRecordSerializer
    implements StructuredSerializer<UserTransactionRecord> {
  @override
  final Iterable<Type> types = const [
    UserTransactionRecord,
    _$UserTransactionRecord
  ];
  @override
  final String wireName = 'UserTransactionRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserTransactionRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sendName;
    if (value != null) {
      result
        ..add('sendName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
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
    value = object.cpfReceived;
    if (value != null) {
      result
        ..add('cpfReceived')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  UserTransactionRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserTransactionRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sendName':
          result.sendName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cpfReceived':
          result.cpfReceived = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$UserTransactionRecord extends UserTransactionRecord {
  @override
  final String? sendName;
  @override
  final double? amount;
  @override
  final String? uid;
  @override
  final int? cpfReceived;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserTransactionRecord(
          [void Function(UserTransactionRecordBuilder)? updates]) =>
      (new UserTransactionRecordBuilder()..update(updates))._build();

  _$UserTransactionRecord._(
      {this.sendName, this.amount, this.uid, this.cpfReceived, this.ffRef})
      : super._();

  @override
  UserTransactionRecord rebuild(
          void Function(UserTransactionRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserTransactionRecordBuilder toBuilder() =>
      new UserTransactionRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserTransactionRecord &&
        sendName == other.sendName &&
        amount == other.amount &&
        uid == other.uid &&
        cpfReceived == other.cpfReceived &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, sendName.hashCode), amount.hashCode), uid.hashCode),
            cpfReceived.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserTransactionRecord')
          ..add('sendName', sendName)
          ..add('amount', amount)
          ..add('uid', uid)
          ..add('cpfReceived', cpfReceived)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserTransactionRecordBuilder
    implements Builder<UserTransactionRecord, UserTransactionRecordBuilder> {
  _$UserTransactionRecord? _$v;

  String? _sendName;
  String? get sendName => _$this._sendName;
  set sendName(String? sendName) => _$this._sendName = sendName;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  int? _cpfReceived;
  int? get cpfReceived => _$this._cpfReceived;
  set cpfReceived(int? cpfReceived) => _$this._cpfReceived = cpfReceived;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserTransactionRecordBuilder() {
    UserTransactionRecord._initializeBuilder(this);
  }

  UserTransactionRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sendName = $v.sendName;
      _amount = $v.amount;
      _uid = $v.uid;
      _cpfReceived = $v.cpfReceived;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserTransactionRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserTransactionRecord;
  }

  @override
  void update(void Function(UserTransactionRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserTransactionRecord build() => _build();

  _$UserTransactionRecord _build() {
    final _$result = _$v ??
        new _$UserTransactionRecord._(
            sendName: sendName,
            amount: amount,
            uid: uid,
            cpfReceived: cpfReceived,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
