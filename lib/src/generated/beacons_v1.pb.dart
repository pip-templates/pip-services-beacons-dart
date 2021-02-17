///
//  Generated code. Do not modify.
//  source: beacons_v1.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ErrorDescription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ErrorDescription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'correlationId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cause')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stackTrace')
    ..m<$core.String, $core.String>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details', entryClassName: 'ErrorDescription.DetailsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('beacons_v1'))
    ..hasRequiredFields = false
  ;

  ErrorDescription._() : super();
  factory ErrorDescription({
    $core.String type,
    $core.String category,
    $core.String code,
    $core.String correlationId,
    $core.String status,
    $core.String message,
    $core.String cause,
    $core.String stackTrace,
    $core.Map<$core.String, $core.String> details,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (category != null) {
      _result.category = category;
    }
    if (code != null) {
      _result.code = code;
    }
    if (correlationId != null) {
      _result.correlationId = correlationId;
    }
    if (status != null) {
      _result.status = status;
    }
    if (message != null) {
      _result.message = message;
    }
    if (cause != null) {
      _result.cause = cause;
    }
    if (stackTrace != null) {
      _result.stackTrace = stackTrace;
    }
    if (details != null) {
      _result.details.addAll(details);
    }
    return _result;
  }
  factory ErrorDescription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorDescription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrorDescription clone() => ErrorDescription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrorDescription copyWith(void Function(ErrorDescription) updates) => super.copyWith((message) => updates(message as ErrorDescription)) as ErrorDescription; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ErrorDescription create() => ErrorDescription._();
  ErrorDescription createEmptyInstance() => create();
  static $pb.PbList<ErrorDescription> createRepeated() => $pb.PbList<ErrorDescription>();
  @$core.pragma('dart2js:noInline')
  static ErrorDescription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorDescription>(create);
  static ErrorDescription _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get category => $_getSZ(1);
  @$pb.TagNumber(2)
  set category($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(2);
  @$pb.TagNumber(3)
  set code($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get correlationId => $_getSZ(3);
  @$pb.TagNumber(4)
  set correlationId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCorrelationId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCorrelationId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get status => $_getSZ(4);
  @$pb.TagNumber(5)
  set status($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get message => $_getSZ(5);
  @$pb.TagNumber(6)
  set message($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearMessage() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get cause => $_getSZ(6);
  @$pb.TagNumber(7)
  set cause($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCause() => $_has(6);
  @$pb.TagNumber(7)
  void clearCause() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get stackTrace => $_getSZ(7);
  @$pb.TagNumber(8)
  set stackTrace($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStackTrace() => $_has(7);
  @$pb.TagNumber(8)
  void clearStackTrace() => clearField(8);

  @$pb.TagNumber(9)
  $core.Map<$core.String, $core.String> get details => $_getMap(8);
}

class PagingParams extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PagingParams', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skip')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'take', $pb.PbFieldType.O3)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'total')
    ..hasRequiredFields = false
  ;

  PagingParams._() : super();
  factory PagingParams({
    $fixnum.Int64 skip,
    $core.int take,
    $core.bool total,
  }) {
    final _result = create();
    if (skip != null) {
      _result.skip = skip;
    }
    if (take != null) {
      _result.take = take;
    }
    if (total != null) {
      _result.total = total;
    }
    return _result;
  }
  factory PagingParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PagingParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PagingParams clone() => PagingParams()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PagingParams copyWith(void Function(PagingParams) updates) => super.copyWith((message) => updates(message as PagingParams)) as PagingParams; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PagingParams create() => PagingParams._();
  PagingParams createEmptyInstance() => create();
  static $pb.PbList<PagingParams> createRepeated() => $pb.PbList<PagingParams>();
  @$core.pragma('dart2js:noInline')
  static PagingParams getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PagingParams>(create);
  static PagingParams _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get skip => $_getI64(0);
  @$pb.TagNumber(1)
  set skip($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSkip() => $_has(0);
  @$pb.TagNumber(1)
  void clearSkip() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get take => $_getIZ(1);
  @$pb.TagNumber(2)
  set take($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTake() => $_has(1);
  @$pb.TagNumber(2)
  void clearTake() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get total => $_getBF(2);
  @$pb.TagNumber(3)
  set total($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotal() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotal() => clearField(3);
}

class Point extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Point', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..p<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coordinates', $pb.PbFieldType.PD)
    ..hasRequiredFields = false
  ;

  Point._() : super();
  factory Point({
    $core.String type,
    $core.Iterable<$core.double> coordinates,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (coordinates != null) {
      _result.coordinates.addAll(coordinates);
    }
    return _result;
  }
  factory Point.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Point.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Point clone() => Point()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Point copyWith(void Function(Point) updates) => super.copyWith((message) => updates(message as Point)) as Point; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Point create() => Point._();
  Point createEmptyInstance() => create();
  static $pb.PbList<Point> createRepeated() => $pb.PbList<Point>();
  @$core.pragma('dart2js:noInline')
  static Point getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Point>(create);
  static Point _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.double> get coordinates => $_getList(1);
}

class Beacon extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Beacon', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'siteId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'udi')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..aOM<Point>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'center', subBuilder: Point.create)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'radius', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Beacon._() : super();
  factory Beacon({
    $core.String id,
    $core.String siteId,
    $core.String type,
    $core.String udi,
    $core.String label,
    Point center,
    $core.double radius,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (siteId != null) {
      _result.siteId = siteId;
    }
    if (type != null) {
      _result.type = type;
    }
    if (udi != null) {
      _result.udi = udi;
    }
    if (label != null) {
      _result.label = label;
    }
    if (center != null) {
      _result.center = center;
    }
    if (radius != null) {
      _result.radius = radius;
    }
    return _result;
  }
  factory Beacon.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Beacon.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Beacon clone() => Beacon()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Beacon copyWith(void Function(Beacon) updates) => super.copyWith((message) => updates(message as Beacon)) as Beacon; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Beacon create() => Beacon._();
  Beacon createEmptyInstance() => create();
  static $pb.PbList<Beacon> createRepeated() => $pb.PbList<Beacon>();
  @$core.pragma('dart2js:noInline')
  static Beacon getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Beacon>(create);
  static Beacon _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get siteId => $_getSZ(1);
  @$pb.TagNumber(2)
  set siteId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSiteId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSiteId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get udi => $_getSZ(3);
  @$pb.TagNumber(4)
  set udi($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUdi() => $_has(3);
  @$pb.TagNumber(4)
  void clearUdi() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get label => $_getSZ(4);
  @$pb.TagNumber(5)
  set label($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLabel() => $_has(4);
  @$pb.TagNumber(5)
  void clearLabel() => clearField(5);

  @$pb.TagNumber(6)
  Point get center => $_getN(5);
  @$pb.TagNumber(6)
  set center(Point v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCenter() => $_has(5);
  @$pb.TagNumber(6)
  void clearCenter() => clearField(6);
  @$pb.TagNumber(6)
  Point ensureCenter() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.double get radius => $_getN(6);
  @$pb.TagNumber(7)
  set radius($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRadius() => $_has(6);
  @$pb.TagNumber(7)
  void clearRadius() => clearField(7);
}

class BeaconsPage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BeaconsPage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'total')
    ..pc<Beacon>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: Beacon.create)
    ..hasRequiredFields = false
  ;

  BeaconsPage._() : super();
  factory BeaconsPage({
    $fixnum.Int64 total,
    $core.Iterable<Beacon> data,
  }) {
    final _result = create();
    if (total != null) {
      _result.total = total;
    }
    if (data != null) {
      _result.data.addAll(data);
    }
    return _result;
  }
  factory BeaconsPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconsPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeaconsPage clone() => BeaconsPage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeaconsPage copyWith(void Function(BeaconsPage) updates) => super.copyWith((message) => updates(message as BeaconsPage)) as BeaconsPage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BeaconsPage create() => BeaconsPage._();
  BeaconsPage createEmptyInstance() => create();
  static $pb.PbList<BeaconsPage> createRepeated() => $pb.PbList<BeaconsPage>();
  @$core.pragma('dart2js:noInline')
  static BeaconsPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeaconsPage>(create);
  static BeaconsPage _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get total => $_getI64(0);
  @$pb.TagNumber(1)
  set total($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotal() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Beacon> get data => $_getList(1);
}

class BeaconsPageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BeaconsPageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'correlationId')
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', entryClassName: 'BeaconsPageRequest.FilterEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('beacons_v1'))
    ..aOM<PagingParams>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paging', subBuilder: PagingParams.create)
    ..hasRequiredFields = false
  ;

  BeaconsPageRequest._() : super();
  factory BeaconsPageRequest({
    $core.String correlationId,
    $core.Map<$core.String, $core.String> filter,
    PagingParams paging,
  }) {
    final _result = create();
    if (correlationId != null) {
      _result.correlationId = correlationId;
    }
    if (filter != null) {
      _result.filter.addAll(filter);
    }
    if (paging != null) {
      _result.paging = paging;
    }
    return _result;
  }
  factory BeaconsPageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconsPageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeaconsPageRequest clone() => BeaconsPageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeaconsPageRequest copyWith(void Function(BeaconsPageRequest) updates) => super.copyWith((message) => updates(message as BeaconsPageRequest)) as BeaconsPageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BeaconsPageRequest create() => BeaconsPageRequest._();
  BeaconsPageRequest createEmptyInstance() => create();
  static $pb.PbList<BeaconsPageRequest> createRepeated() => $pb.PbList<BeaconsPageRequest>();
  @$core.pragma('dart2js:noInline')
  static BeaconsPageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeaconsPageRequest>(create);
  static BeaconsPageRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get filter => $_getMap(1);

  @$pb.TagNumber(3)
  PagingParams get paging => $_getN(2);
  @$pb.TagNumber(3)
  set paging(PagingParams v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPaging() => $_has(2);
  @$pb.TagNumber(3)
  void clearPaging() => clearField(3);
  @$pb.TagNumber(3)
  PagingParams ensurePaging() => $_ensure(2);
}

class BeaconsPageReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BeaconsPageReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: ErrorDescription.create)
    ..aOM<BeaconsPage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'page', subBuilder: BeaconsPage.create)
    ..hasRequiredFields = false
  ;

  BeaconsPageReply._() : super();
  factory BeaconsPageReply({
    ErrorDescription error,
    BeaconsPage page,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (page != null) {
      _result.page = page;
    }
    return _result;
  }
  factory BeaconsPageReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconsPageReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeaconsPageReply clone() => BeaconsPageReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeaconsPageReply copyWith(void Function(BeaconsPageReply) updates) => super.copyWith((message) => updates(message as BeaconsPageReply)) as BeaconsPageReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BeaconsPageReply create() => BeaconsPageReply._();
  BeaconsPageReply createEmptyInstance() => create();
  static $pb.PbList<BeaconsPageReply> createRepeated() => $pb.PbList<BeaconsPageReply>();
  @$core.pragma('dart2js:noInline')
  static BeaconsPageReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeaconsPageReply>(create);
  static BeaconsPageReply _defaultInstance;

  @$pb.TagNumber(1)
  ErrorDescription get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorDescription v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorDescription ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  BeaconsPage get page => $_getN(1);
  @$pb.TagNumber(2)
  set page(BeaconsPage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => clearField(2);
  @$pb.TagNumber(2)
  BeaconsPage ensurePage() => $_ensure(1);
}

class BeaconIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BeaconIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'correlationId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beaconId')
    ..hasRequiredFields = false
  ;

  BeaconIdRequest._() : super();
  factory BeaconIdRequest({
    $core.String correlationId,
    $core.String beaconId,
  }) {
    final _result = create();
    if (correlationId != null) {
      _result.correlationId = correlationId;
    }
    if (beaconId != null) {
      _result.beaconId = beaconId;
    }
    return _result;
  }
  factory BeaconIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeaconIdRequest clone() => BeaconIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeaconIdRequest copyWith(void Function(BeaconIdRequest) updates) => super.copyWith((message) => updates(message as BeaconIdRequest)) as BeaconIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BeaconIdRequest create() => BeaconIdRequest._();
  BeaconIdRequest createEmptyInstance() => create();
  static $pb.PbList<BeaconIdRequest> createRepeated() => $pb.PbList<BeaconIdRequest>();
  @$core.pragma('dart2js:noInline')
  static BeaconIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeaconIdRequest>(create);
  static BeaconIdRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get beaconId => $_getSZ(1);
  @$pb.TagNumber(2)
  set beaconId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBeaconId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBeaconId() => clearField(2);
}

class BeaconReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BeaconReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: ErrorDescription.create)
    ..aOM<Beacon>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beacon', subBuilder: Beacon.create)
    ..hasRequiredFields = false
  ;

  BeaconReply._() : super();
  factory BeaconReply({
    ErrorDescription error,
    Beacon beacon,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (beacon != null) {
      _result.beacon = beacon;
    }
    return _result;
  }
  factory BeaconReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeaconReply clone() => BeaconReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeaconReply copyWith(void Function(BeaconReply) updates) => super.copyWith((message) => updates(message as BeaconReply)) as BeaconReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BeaconReply create() => BeaconReply._();
  BeaconReply createEmptyInstance() => create();
  static $pb.PbList<BeaconReply> createRepeated() => $pb.PbList<BeaconReply>();
  @$core.pragma('dart2js:noInline')
  static BeaconReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeaconReply>(create);
  static BeaconReply _defaultInstance;

  @$pb.TagNumber(1)
  ErrorDescription get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorDescription v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorDescription ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  Beacon get beacon => $_getN(1);
  @$pb.TagNumber(2)
  set beacon(Beacon v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBeacon() => $_has(1);
  @$pb.TagNumber(2)
  void clearBeacon() => clearField(2);
  @$pb.TagNumber(2)
  Beacon ensureBeacon() => $_ensure(1);
}

class BeaconUdiRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BeaconUdiRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'correlationId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'udi')
    ..hasRequiredFields = false
  ;

  BeaconUdiRequest._() : super();
  factory BeaconUdiRequest({
    $core.String correlationId,
    $core.String udi,
  }) {
    final _result = create();
    if (correlationId != null) {
      _result.correlationId = correlationId;
    }
    if (udi != null) {
      _result.udi = udi;
    }
    return _result;
  }
  factory BeaconUdiRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconUdiRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeaconUdiRequest clone() => BeaconUdiRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeaconUdiRequest copyWith(void Function(BeaconUdiRequest) updates) => super.copyWith((message) => updates(message as BeaconUdiRequest)) as BeaconUdiRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BeaconUdiRequest create() => BeaconUdiRequest._();
  BeaconUdiRequest createEmptyInstance() => create();
  static $pb.PbList<BeaconUdiRequest> createRepeated() => $pb.PbList<BeaconUdiRequest>();
  @$core.pragma('dart2js:noInline')
  static BeaconUdiRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeaconUdiRequest>(create);
  static BeaconUdiRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get udi => $_getSZ(1);
  @$pb.TagNumber(2)
  set udi($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUdi() => $_has(1);
  @$pb.TagNumber(2)
  void clearUdi() => clearField(2);
}

class BeaconsPositionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BeaconsPositionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'correlationId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'siteId')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'udis')
    ..hasRequiredFields = false
  ;

  BeaconsPositionRequest._() : super();
  factory BeaconsPositionRequest({
    $core.String correlationId,
    $core.String siteId,
    $core.Iterable<$core.String> udis,
  }) {
    final _result = create();
    if (correlationId != null) {
      _result.correlationId = correlationId;
    }
    if (siteId != null) {
      _result.siteId = siteId;
    }
    if (udis != null) {
      _result.udis.addAll(udis);
    }
    return _result;
  }
  factory BeaconsPositionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconsPositionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeaconsPositionRequest clone() => BeaconsPositionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeaconsPositionRequest copyWith(void Function(BeaconsPositionRequest) updates) => super.copyWith((message) => updates(message as BeaconsPositionRequest)) as BeaconsPositionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BeaconsPositionRequest create() => BeaconsPositionRequest._();
  BeaconsPositionRequest createEmptyInstance() => create();
  static $pb.PbList<BeaconsPositionRequest> createRepeated() => $pb.PbList<BeaconsPositionRequest>();
  @$core.pragma('dart2js:noInline')
  static BeaconsPositionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeaconsPositionRequest>(create);
  static BeaconsPositionRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get siteId => $_getSZ(1);
  @$pb.TagNumber(2)
  set siteId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSiteId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSiteId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get udis => $_getList(2);
}

class BeaconsPositionReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BeaconsPositionReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: ErrorDescription.create)
    ..aOM<Point>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'position', subBuilder: Point.create)
    ..hasRequiredFields = false
  ;

  BeaconsPositionReply._() : super();
  factory BeaconsPositionReply({
    ErrorDescription error,
    Point position,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (position != null) {
      _result.position = position;
    }
    return _result;
  }
  factory BeaconsPositionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconsPositionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeaconsPositionReply clone() => BeaconsPositionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeaconsPositionReply copyWith(void Function(BeaconsPositionReply) updates) => super.copyWith((message) => updates(message as BeaconsPositionReply)) as BeaconsPositionReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BeaconsPositionReply create() => BeaconsPositionReply._();
  BeaconsPositionReply createEmptyInstance() => create();
  static $pb.PbList<BeaconsPositionReply> createRepeated() => $pb.PbList<BeaconsPositionReply>();
  @$core.pragma('dart2js:noInline')
  static BeaconsPositionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeaconsPositionReply>(create);
  static BeaconsPositionReply _defaultInstance;

  @$pb.TagNumber(1)
  ErrorDescription get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(ErrorDescription v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  ErrorDescription ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  Point get position => $_getN(1);
  @$pb.TagNumber(2)
  set position(Point v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPosition() => $_has(1);
  @$pb.TagNumber(2)
  void clearPosition() => clearField(2);
  @$pb.TagNumber(2)
  Point ensurePosition() => $_ensure(1);
}

class BeaconRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BeaconRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'beacons_v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'correlationId')
    ..aOM<Beacon>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beacon', subBuilder: Beacon.create)
    ..hasRequiredFields = false
  ;

  BeaconRequest._() : super();
  factory BeaconRequest({
    $core.String correlationId,
    Beacon beacon,
  }) {
    final _result = create();
    if (correlationId != null) {
      _result.correlationId = correlationId;
    }
    if (beacon != null) {
      _result.beacon = beacon;
    }
    return _result;
  }
  factory BeaconRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeaconRequest clone() => BeaconRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeaconRequest copyWith(void Function(BeaconRequest) updates) => super.copyWith((message) => updates(message as BeaconRequest)) as BeaconRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BeaconRequest create() => BeaconRequest._();
  BeaconRequest createEmptyInstance() => create();
  static $pb.PbList<BeaconRequest> createRepeated() => $pb.PbList<BeaconRequest>();
  @$core.pragma('dart2js:noInline')
  static BeaconRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeaconRequest>(create);
  static BeaconRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correlationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set correlationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCorrelationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrelationId() => clearField(1);

  @$pb.TagNumber(2)
  Beacon get beacon => $_getN(1);
  @$pb.TagNumber(2)
  set beacon(Beacon v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBeacon() => $_has(1);
  @$pb.TagNumber(2)
  void clearBeacon() => clearField(2);
  @$pb.TagNumber(2)
  Beacon ensureBeacon() => $_ensure(1);
}

