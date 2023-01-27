import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:voting_app/auth/auth_manager.dart';
import 'package:voting_app/models/auth_state/auth_state.dart';
import 'package:voting_app/models/content/kcontent.dart';
import 'package:voting_app/models/post/post.dart';
import 'package:voting_app/router.dart';

class NewPostDialog extends StatefulHookConsumerWidget {
  const NewPostDialog({
    Key? key,
    required this.ownerId,
  }) : super(key: key);

  final String ownerId;
  @override
  ConsumerState<NewPostDialog> createState() => _NewPostDialogState();
}

class _NewPostDialogState extends ConsumerState<NewPostDialog> {
  final controller = quill.QuillController.basic();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final working = useValueNotifier(false);

    return Center(
      child: SingleChildScrollView(
        child: AlertDialog(
          title: const Text('New Post'),
          content: SizedBox(
            width: 0.30.sw,
            height: 0.30.sh,
            key: UniqueKey(),
            child: quill.QuillEditor.basic(
              controller: controller,
              readOnly: false,
            ),
          ),
          actions: [
            TextButton(
              onPressed: !useValueListenable(working)
                  ? () {
                      ref.read(routerProvider).pop();
                    }
                  : null,
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: !useValueListenable(working)
                  ? () async {
                      final authState = ref.watch(authManagerProvider) as AuthStateSignedIn;
                      final db = Supabase.instance.client;
                      final uuid = const Uuid().v4();
                      final post = KPost(
                        id: uuid,
                        timestamp: DateTime.now(),
                        ownerId: authState.user.identity,
                      );

                      working.value = true;
                      await db.from('posts').insert(post.toJson());

                      final content = KContent.text(
                        id: uuid,
                        text: controller.document.toPlainText(),
                        ownerId: authState.user.identity,
                      );
                      await db.from('post_contents').insert(content.toJson());

                      print('inserted $uuid');
                      ref.read(routerProvider).pop();
                    }
                  : null,
              child: !useValueListenable(working)
                  ? const Text('Done')
                  : const SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
