// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_received_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserReceivedRecord> _$userReceivedRecordSerializer =
    new _$UserReceivedRecordSerializer();

class _$UserReceivedRecordSerializer
    implements StructuredSerializer<UserReceivedRecord> {
  @override
  final Iterable<Type> types = const [UserReceivedRecord, _$UserReceivedRecord];
  @override
  final String wireName = 'UserReceivedRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserReceivedRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.historyReceived;
    if (value != null) {
      result
        ..add('historyReceived')
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
  UserReceivedRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserReceivedRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'historyReceived':
          result.historyReceived = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cpfReceived':
          result.cpfReceived = serializers.deserialize(value,
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

class _$UserReceivedRecord extends UserReceivedRecord {
  @override
  final double? historyReceived;
  @override
  final String? uid;
  @override
  final double? cpfReceived;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserReceivedRecord(
          [void Function(UserReceivedRecordBuilder)? updates]) =>
      (new UserReceivedRecordBuilder()..update(updates))._build();

  _$UserReceivedRecord._(
      {this.historyReceived, this.uid, this.cpfReceived, this.ffRef})
      : super._();

  @override
  UserReceivedRecord rebuild(
          void Function(UserReceivedRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserReceivedRecordBuilder toBuilder() =>
      new UserReceivedRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserReceivedRecord &&
        historyReceived == other.historyReceived &&
        uid == other.uid &&
        cpfReceived == other.cpfReceived &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, historyReceived.hashCode), uid.hashCode),
            cpfReceived.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserReceivedRecord')
          ..add('historyReceived', historyReceived)
          ..add('uid', uid)
          ..add('cpfReceived', cpfReceived)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserReceivedRecordBuilder
    implements Builder<UserReceivedRecord, UserReceivedRecordBuilder> {
  _$UserReceivedRecord? _$v;

  double? _historyReceived;
  double? get historyReceived => _$this._historyReceived;
  set historyReceived(double? historyReceived) =>
      _$this._historyReceived = historyReceived;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  double? _cpfReceived;
  double? get cpfReceived => _$this._cpfReceived;
  set cpfReceived(double? cpfReceived) => _$this._cpfReceived = cpfReceived;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserReceivedRecordBuilder() {
    UserReceivedRecord._initializeBuilder(this);
  }

  UserReceivedRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _historyReceived = $v.historyReceived;
      _uid = $v.uid;
      _cpfReceived = $v.cpfReceived;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserReceivedRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserReceivedRecord;
  }

  @override
  void update(void Function(UserReceivedRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserReceivedRecord build() => _build();

  _$UserReceivedRecord _build() {
    final _$result = _$v ??
        new _$UserReceivedRecord._(
            historyReceived: historyReceived,
            uid: uid,
            cpfReceived: cpfReceived,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
