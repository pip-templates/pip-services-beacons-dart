///
//  Generated code. Do not modify.
//  source: beacons_v1.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ErrorDescription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ErrorDescription', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aOS(1, 'type')
    ..aOS(2, 'category')
    ..aOS(3, 'code')
    ..aOS(4, 'correlationId')
    ..aOS(5, 'status')
    ..aOS(6, 'message')
    ..aOS(7, 'cause')
    ..aOS(8, 'stackTrace')
    ..m<$core.String, $core.String>(9, 'details', entryClassName: 'ErrorDescription.DetailsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('beacons_v1'))
    ..hasRequiredFields = false
  ;

  ErrorDescription._() : super();
  factory ErrorDescription() => create();
  factory ErrorDescription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorDescription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ErrorDescription clone() => ErrorDescription()..mergeFromMessage(this);
  ErrorDescription copyWith(void Function(ErrorDescription) updates) => super.copyWith((message) => updates(message as ErrorDescription));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PagingParams', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aInt64(1, 'skip')
    ..a<$core.int>(2, 'take', $pb.PbFieldType.O3)
    ..aOB(3, 'total')
    ..hasRequiredFields = false
  ;

  PagingParams._() : super();
  factory PagingParams() => create();
  factory PagingParams.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PagingParams.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PagingParams clone() => PagingParams()..mergeFromMessage(this);
  PagingParams copyWith(void Function(PagingParams) updates) => super.copyWith((message) => updates(message as PagingParams));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Point', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aOS(1, 'type')
    ..p<$core.double>(2, 'coordinates', $pb.PbFieldType.PD)
    ..hasRequiredFields = false
  ;

  Point._() : super();
  factory Point() => create();
  factory Point.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Point.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Point clone() => Point()..mergeFromMessage(this);
  Point copyWith(void Function(Point) updates) => super.copyWith((message) => updates(message as Point));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Beacon', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aOS(1, 'id')
    ..aOS(2, 'siteId')
    ..aOS(3, 'type')
    ..aOS(4, 'udi')
    ..aOS(5, 'label')
    ..aOM<Point>(6, 'center', subBuilder: Point.create)
    ..a<$core.double>(7, 'radius', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Beacon._() : super();
  factory Beacon() => create();
  factory Beacon.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Beacon.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Beacon clone() => Beacon()..mergeFromMessage(this);
  Beacon copyWith(void Function(Beacon) updates) => super.copyWith((message) => updates(message as Beacon));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BeaconsPage', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aInt64(1, 'total')
    ..pc<Beacon>(2, 'data', $pb.PbFieldType.PM, subBuilder: Beacon.create)
    ..hasRequiredFields = false
  ;

  BeaconsPage._() : super();
  factory BeaconsPage() => create();
  factory BeaconsPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconsPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BeaconsPage clone() => BeaconsPage()..mergeFromMessage(this);
  BeaconsPage copyWith(void Function(BeaconsPage) updates) => super.copyWith((message) => updates(message as BeaconsPage));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BeaconsPageRequest', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..m<$core.String, $core.String>(2, 'filter', entryClassName: 'BeaconsPageRequest.FilterEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('beacons_v1'))
    ..aOM<PagingParams>(3, 'paging', subBuilder: PagingParams.create)
    ..hasRequiredFields = false
  ;

  BeaconsPageRequest._() : super();
  factory BeaconsPageRequest() => create();
  factory BeaconsPageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconsPageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BeaconsPageRequest clone() => BeaconsPageRequest()..mergeFromMessage(this);
  BeaconsPageRequest copyWith(void Function(BeaconsPageRequest) updates) => super.copyWith((message) => updates(message as BeaconsPageRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BeaconsPageReply', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, 'error', subBuilder: ErrorDescription.create)
    ..aOM<BeaconsPage>(2, 'page', subBuilder: BeaconsPage.create)
    ..hasRequiredFields = false
  ;

  BeaconsPageReply._() : super();
  factory BeaconsPageReply() => create();
  factory BeaconsPageReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconsPageReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BeaconsPageReply clone() => BeaconsPageReply()..mergeFromMessage(this);
  BeaconsPageReply copyWith(void Function(BeaconsPageReply) updates) => super.copyWith((message) => updates(message as BeaconsPageReply));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BeaconIdRequest', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOS(2, 'beaconId')
    ..hasRequiredFields = false
  ;

  BeaconIdRequest._() : super();
  factory BeaconIdRequest() => create();
  factory BeaconIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BeaconIdRequest clone() => BeaconIdRequest()..mergeFromMessage(this);
  BeaconIdRequest copyWith(void Function(BeaconIdRequest) updates) => super.copyWith((message) => updates(message as BeaconIdRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BeaconReply', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, 'error', subBuilder: ErrorDescription.create)
    ..aOM<Beacon>(2, 'beacon', subBuilder: Beacon.create)
    ..hasRequiredFields = false
  ;

  BeaconReply._() : super();
  factory BeaconReply() => create();
  factory BeaconReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BeaconReply clone() => BeaconReply()..mergeFromMessage(this);
  BeaconReply copyWith(void Function(BeaconReply) updates) => super.copyWith((message) => updates(message as BeaconReply));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BeaconUdiRequest', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOS(2, 'udi')
    ..hasRequiredFields = false
  ;

  BeaconUdiRequest._() : super();
  factory BeaconUdiRequest() => create();
  factory BeaconUdiRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconUdiRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BeaconUdiRequest clone() => BeaconUdiRequest()..mergeFromMessage(this);
  BeaconUdiRequest copyWith(void Function(BeaconUdiRequest) updates) => super.copyWith((message) => updates(message as BeaconUdiRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BeaconsPositionRequest', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOS(2, 'siteId')
    ..pPS(3, 'udis')
    ..hasRequiredFields = false
  ;

  BeaconsPositionRequest._() : super();
  factory BeaconsPositionRequest() => create();
  factory BeaconsPositionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconsPositionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BeaconsPositionRequest clone() => BeaconsPositionRequest()..mergeFromMessage(this);
  BeaconsPositionRequest copyWith(void Function(BeaconsPositionRequest) updates) => super.copyWith((message) => updates(message as BeaconsPositionRequest));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BeaconsPositionReply', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aOM<ErrorDescription>(1, 'error', subBuilder: ErrorDescription.create)
    ..aOM<Point>(2, 'position', subBuilder: Point.create)
    ..hasRequiredFields = false
  ;

  BeaconsPositionReply._() : super();
  factory BeaconsPositionReply() => create();
  factory BeaconsPositionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconsPositionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BeaconsPositionReply clone() => BeaconsPositionReply()..mergeFromMessage(this);
  BeaconsPositionReply copyWith(void Function(BeaconsPositionReply) updates) => super.copyWith((message) => updates(message as BeaconsPositionReply));
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BeaconRequest', package: const $pb.PackageName('beacons_v1'), createEmptyInstance: create)
    ..aOS(1, 'correlationId')
    ..aOM<Beacon>(2, 'beacon', subBuilder: Beacon.create)
    ..hasRequiredFields = false
  ;

  BeaconRequest._() : super();
  factory BeaconRequest() => create();
  factory BeaconRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeaconRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  BeaconRequest clone() => BeaconRequest()..mergeFromMessage(this);
  BeaconRequest copyWith(void Function(BeaconRequest) updates) => super.copyWith((message) => updates(message as BeaconRequest));
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

