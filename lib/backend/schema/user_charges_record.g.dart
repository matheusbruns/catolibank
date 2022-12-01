// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_charges_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserChargesRecord> _$userChargesRecordSerializer =
    new _$UserChargesRecordSerializer();

class _$UserChargesRecordSerializer
    implements StructuredSerializer<UserChargesRecord> {
  @override
  final Iterable<Type> types = const [UserChargesRecord, _$UserChargesRecord];
  @override
  final String wireName = 'UserChargesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserChargesRecord object,
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
    value = object.amouth;
    if (value != null) {
      result
        ..add('amouth')
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
  UserChargesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserChargesRecordBuilder();

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
        case 'amouth':
          result.amouth = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cpfCharge':
          result.cpfCharge = serializers.deserialize(value,
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

class _$UserChargesRecord extends UserChargesRecord {
  @override
  final String? sendName;
  @override
  final double? amouth;
  @override
  final String? uid;
  @override
  final int? cpfCharge;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserChargesRecord(
          [void Function(UserChargesRecordBuilder)? updates]) =>
      (new UserChargesRecordBuilder()..update(updates))._build();

  _$UserChargesRecord._(
      {this.sendName, this.amouth, this.uid, this.cpfCharge, this.ffRef})
      : super._();

  @override
  UserChargesRecord rebuild(void Function(UserChargesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserChargesRecordBuilder toBuilder() =>
      new UserChargesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserChargesRecord &&
        sendName == other.sendName &&
        amouth == other.amouth &&
        uid == other.uid &&
        cpfCharge == other.cpfCharge &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, sendName.hashCode), amouth.hashCode), uid.hashCode),
            cpfCharge.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserChargesRecord')
          ..add('sendName', sendName)
          ..add('amouth', amouth)
          ..add('uid', uid)
          ..add('cpfCharge', cpfCharge)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserChargesRecordBuilder
    implements Builder<UserChargesRecord, UserChargesRecordBuilder> {
  _$UserChargesRecord? _$v;

  String? _sendName;
  String? get sendName => _$this._sendName;
  set sendName(String? sendName) => _$this._sendName = sendName;

  double? _amouth;
  double? get amouth => _$this._amouth;
  set amouth(double? amouth) => _$this._amouth = amouth;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  int? _cpfCharge;
  int? get cpfCharge => _$this._cpfCharge;
  set cpfCharge(int? cpfCharge) => _$this._cpfCharge = cpfCharge;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserChargesRecordBuilder() {
    UserChargesRecord._initializeBuilder(this);
  }

  UserChargesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sendName = $v.sendName;
      _amouth = $v.amouth;
      _uid = $v.uid;
      _cpfCharge = $v.cpfCharge;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserChargesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserChargesRecord;
  }

  @override
  void update(void Function(UserChargesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserChargesRecord build() => _build();

  _$UserChargesRecord _build() {
    final _$result = _$v ??
        new _$UserChargesRecord._(
            sendName: sendName,
            amouth: amouth,
            uid: uid,
            cpfCharge: cpfCharge,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
