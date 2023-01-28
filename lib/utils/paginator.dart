import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pocketbase/pocketbase.dart';

import 'package:voting_app/providers.dart';

class DBPaginatorFamily<T> {
  final String ownerId;
  final T Function(Map<String, dynamic> json) fromJson;

  DBPaginatorFamily(this.ownerId, this.fromJson);

  @override
  bool operator ==(Object other) => true;

  @override
  int get hashCode => ownerId.hashCode;
}

class DBPaginator<T> extends PagingController<int, T> {
  final Ref ref;
  final String collection;
  final String ownerId;
  final T Function(Map<String, dynamic> json) fromJson;
  static const fetchAmount = 5;

  final removed = <String>{};

  UnsubscribeFunc? unsubscribeFunc;
  var created = DateTime.parse('2022-10-21 01:58:36.388');

  DBPaginator(
    this.ref,
    this.collection,
    this.ownerId,
    this.fromJson,
  ) : super(firstPageKey: 1) {
    addPageRequestListener(fetch);
  }

  void fetch(int pK) async {
    final db = ref.watch(dbProvider);
    final resultList = await db.collection('posts').getList(
          page: pK,
          perPage: fetchAmount,
          filter: 'created > "$created"',
        );
    if (resultList.items.isNotEmpty) {
      created = DateTime.parse(resultList.items.last.created);
    }
    final items = <T>[];
    for (final model in resultList.items) {
      final item = fromJson(model.toJson());
      items.add(item);
    }
    if (items.length < fetchAmount) {
      appendLastPage(items);
    } else {
      appendPage(items, pK + 1);
    }
  }
}
