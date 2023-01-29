import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:voting_app/providers.dart';

class DBPaginatorFamily<T> {
  final String parentId;
  final T Function(Map<String, dynamic> json) fromJson;

  DBPaginatorFamily(this.parentId, this.fromJson);

  @override
  bool operator ==(Object other) => true;

  @override
  int get hashCode => parentId.hashCode;
}

class DBPaginator<T> extends PagingController<int, T> {
  final Ref ref;
  final String collection;
  final String parentId;
  final T Function(Map<String, dynamic> json) fromJson;
  static const fetchAmount = 5;
  static const previewAmount = 3;

  UnsubscribeFunc? unsubscribeFunc;
  var created = DateTime.parse('2022-10-21 01:58:36.388');

  DBPaginator(
    this.ref,
    this.collection,
    this.parentId,
    this.fromJson,
  ) : super(firstPageKey: 1) {
    addPageRequestListener(fetch);
    subscribe();
  }

  void fetch(int pK) async {
    final db = ref.watch(dbProvider);
    final resultList = await db.collection(collection).getList(
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

  void subscribe() async {
    final db = ref.watch(dbProvider);
    unsubscribeFunc ??= await db.collection(collection).subscribe(
      '*',
      (event) async {
        if (event.record!.getStringValue('parent_id') != parentId) return;
        if (nextPageKey != null) return;

        final item = fromJson(event.record!.toJson());
        if (event.action == 'create') {
          itemList?.add(item);
        } else if (event.action == 'delete') {
          itemList?.removeWhere((element) => element == item);
        }
        notifyListeners();
      },
    );
  }

  @override
  void dispose() {
    unsubscribeFunc?.call();
    super.dispose();
  }
}
