// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_card_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserCardRecord> _$userCardRecordSerializer =
    new _$UserCardRecordSerializer();

class _$UserCardRecordSerializer
    implements StructuredSerializer<UserCardRecord> {
  @override
  final Iterable<Type> types = const [UserCardRecord, _$UserCardRecord];
  @override
  final String wireName = 'UserCardRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserCardRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cvv;
    if (value != null) {
      result
        ..add('cvv')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.blockedCard;
    if (value != null) {
      result
        ..add('blockedCard')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.numberCard;
    if (value != null) {
      result
        ..add('numberCard')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.expiryMonthCard;
    if (value != null) {
      result
        ..add('expiryMonthCard')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.expiryYearCard;
    if (value != null) {
      result
        ..add('expiryYearCard')
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
  UserCardRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserCardRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cvv':
          result.cvv = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'blockedCard':
          result.blockedCard = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'numberCard':
          result.numberCard = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'expiryMonthCard':
          result.expiryMonthCard = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'expiryYearCard':
          result.expiryYearCard = serializers.deserialize(value,
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

class _$UserCardRecord extends UserCardRecord {
  @override
  final String? uid;
  @override
  final int? cvv;
  @override
  final bool? blockedCard;
  @override
  final int? numberCard;
  @override
  final int? expiryMonthCard;
  @override
  final int? expiryYearCard;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserCardRecord([void Function(UserCardRecordBuilder)? updates]) =>
      (new UserCardRecordBuilder()..update(updates))._build();

  _$UserCardRecord._(
      {this.uid,
      this.cvv,
      this.blockedCard,
      this.numberCard,
      this.expiryMonthCard,
      this.expiryYearCard,
      this.ffRef})
      : super._();

  @override
  UserCardRecord rebuild(void Function(UserCardRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserCardRecordBuilder toBuilder() =>
      new UserCardRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCardRecord &&
        uid == other.uid &&
        cvv == other.cvv &&
        blockedCard == other.blockedCard &&
        numberCard == other.numberCard &&
        expiryMonthCard == other.expiryMonthCard &&
        expiryYearCard == other.expiryYearCard &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, uid.hashCode), cvv.hashCode),
                        blockedCard.hashCode),
                    numberCard.hashCode),
                expiryMonthCard.hashCode),
            expiryYearCard.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserCardRecord')
          ..add('uid', uid)
          ..add('cvv', cvv)
          ..add('blockedCard', blockedCard)
          ..add('numberCard', numberCard)
          ..add('expiryMonthCard', expiryMonthCard)
          ..add('expiryYearCard', expiryYearCard)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserCardRecordBuilder
    implements Builder<UserCardRecord, UserCardRecordBuilder> {
  _$UserCardRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  int? _cvv;
  int? get cvv => _$this._cvv;
  set cvv(int? cvv) => _$this._cvv = cvv;

  bool? _blockedCard;
  bool? get blockedCard => _$this._blockedCard;
  set blockedCard(bool? blockedCard) => _$this._blockedCard = blockedCard;

  int? _numberCard;
  int? get numberCard => _$this._numberCard;
  set numberCard(int? numberCard) => _$this._numberCard = numberCard;

  int? _expiryMonthCard;
  int? get expiryMonthCard => _$this._expiryMonthCard;
  set expiryMonthCard(int? expiryMonthCard) =>
      _$this._expiryMonthCard = expiryMonthCard;

  int? _expiryYearCard;
  int? get expiryYearCard => _$this._expiryYearCard;
  set expiryYearCard(int? expiryYearCard) =>
      _$this._expiryYearCard = expiryYearCard;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserCardRecordBuilder() {
    UserCardRecord._initializeBuilder(this);
  }

  UserCardRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _cvv = $v.cvv;
      _blockedCard = $v.blockedCard;
      _numberCard = $v.numberCard;
      _expiryMonthCard = $v.expiryMonthCard;
      _expiryYearCard = $v.expiryYearCard;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCardRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserCardRecord;
  }

  @override
  void update(void Function(UserCardRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCardRecord build() => _build();

  _$UserCardRecord _build() {
    final _$result = _$v ??
        new _$UserCardRecord._(
            uid: uid,
            cvv: cvv,
            blockedCard: blockedCard,
            numberCard: numberCard,
            expiryMonthCard: expiryMonthCard,
            expiryYearCard: expiryYearCard,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
