// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CityRecord> _$cityRecordSerializer = new _$CityRecordSerializer();

class _$CityRecordSerializer implements StructuredSerializer<CityRecord> {
  @override
  final Iterable<Type> types = const [CityRecord, _$CityRecord];
  @override
  final String wireName = 'CityRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CityRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  CityRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CityRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$CityRecord extends CityRecord {
  @override
  final String name;
  @override
  final LatLng location;
  @override
  final DocumentReference<Object> reference;

  factory _$CityRecord([void Function(CityRecordBuilder) updates]) =>
      (new CityRecordBuilder()..update(updates)).build();

  _$CityRecord._({this.name, this.location, this.reference}) : super._();

  @override
  CityRecord rebuild(void Function(CityRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CityRecordBuilder toBuilder() => new CityRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CityRecord &&
        name == other.name &&
        location == other.location &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), location.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CityRecord')
          ..add('name', name)
          ..add('location', location)
          ..add('reference', reference))
        .toString();
  }
}

class CityRecordBuilder implements Builder<CityRecord, CityRecordBuilder> {
  _$CityRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CityRecordBuilder() {
    CityRecord._initializeBuilder(this);
  }

  CityRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _location = $v.location;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CityRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CityRecord;
  }

  @override
  void update(void Function(CityRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CityRecord build() {
    final _$result = _$v ??
        new _$CityRecord._(
            name: name, location: location, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
