import 'dart:async';
import 'package:mongo_dart_query/mongo_dart_query.dart' as mngquery;
import 'package:pip_services3_commons/pip_services3_commons.dart';
import 'package:pip_services3_mongodb/pip_services3_mongodb.dart';

import '../data/version1/BeaconV1.dart';
import './IBeaconsPersistence.dart';

class BeaconsMongoDbPersistence
    extends IdentifiableMongoDbPersistence<BeaconV1, String>
    implements IBeaconsPersistence {
  BeaconsMongoDbPersistence() : super('beacons') {
    maxPageSize = 1000;
  }

  dynamic composeFilter(FilterParams filter) {
    filter = filter ?? FilterParams();

    var criteria = [];

    var id = filter.getAsNullableString('id');
    if (id != null) {
      criteria.add({'_id': id});
    }

    var siteId = filter.getAsNullableString('site_id');
    if (siteId != null) {
      criteria.add({'site_id': siteId});
    }

    var label = filter.getAsNullableString('label');
    if (label != null) {
      criteria.add({'label': label});
    }

    var udi = filter.getAsNullableString('udi');
    if (udi != null) {
      criteria.add({'udi': udi});
    }

    var udis = filter.getAsObject('udis');
    if (udis is String) {
      udis = (udis as String).split(',');
    }
    if (udis is List) {
      criteria.add({
        'udi': {r'$in': udis}
      });
    }

    return criteria.isNotEmpty ? {r'$and': criteria} : null;
  }

  @override
  Future<DataPage<BeaconV1>> getPageByFilter(
      String correlationId, FilterParams filter, PagingParams paging) async {
    return super
        .getPageByFilterEx(correlationId, composeFilter(filter), paging, null);
  }

  @override
  Future<BeaconV1> getOneByUdi(String correlationId, String udi) async {
    var filter = {'udi': udi};
    var query = mngquery.SelectorBuilder();
    var selector = <String, dynamic>{};
    if (filter != null && filter.isNotEmpty) {
      selector[r'$query'] = filter;
    }
    query.raw(selector);

    var item = await collection.findOne(filter);

    if (item == null) {
      logger.trace(correlationId, 'Nothing found from %s with id = %s',
          [collectionName, udi]);
      return null;
    }
    logger.trace(
        correlationId, 'Retrieved from %s with id = %s', [collectionName, udi]);
    return convertToPublic(item);
  }
}
