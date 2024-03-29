import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_quill/flutter_quill.dart' as quill;

import 'package:voting_app/auth/auth_manager.dart';
import 'package:voting_app/models/auth_state/auth_state.dart';

import 'package:voting_app/models/comment/comment.dart';
import 'package:voting_app/models/content/kcontent.dart';
import 'package:voting_app/providers.dart';
import 'package:voting_app/router.dart';

class AddCommentAction extends StatelessWidget {
  const AddCommentAction({
    super.key,
    required this.postId,
    required this.ownerId,
  });

  final String postId;
  final String ownerId;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.add_comment,
        color: Colors.blue,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => NewCommentDialog(postId: postId, ownerId: ownerId),
        );
      },
    );
  }
}

class NewCommentDialog extends StatefulHookConsumerWidget {
  const NewCommentDialog({
    Key? key,
    required this.postId,
    required this.ownerId,
  }) : super(key: key);

  final String postId;
  final String ownerId;
  @override
  ConsumerState<NewCommentDialog> createState() => _NewCommentDialogState();
}

class _NewCommentDialogState extends ConsumerState<NewCommentDialog> {
  final controller = quill.QuillController.basic();
  final documentLength = ValueNotifier<int>(1);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      documentLength.value = controller.document.length;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  static const maxLength = 500;
  static const lengthStep1 = 100;
  static const lengthStep2 = 200;
  static const lengthStep3 = 300;
  static const lengthStep4 = 400;
  static const lengthStep5 = 500;
  @override
  Widget build(BuildContext context) {
    final length = useValueListenable(documentLength) - 1;
    final showError = useValueNotifier(false);
    final working = useValueNotifier(false);
    if (length > 0) showError.value = false;

    if (length >= maxLength) controller.undo();

    return Center(
      child: SingleChildScrollView(
        child: AlertDialog(
          title: const Text('New Comment'),
          content: Column(
            children: [
              SizedBox(
                width: 0.30.sw,
                height: 0.30.sh,
                key: UniqueKey(),
                child: quill.QuillEditor.basic(
                  controller: controller,
                  readOnly: false,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    if (length < lengthStep1)
                      Text('$length')
                    else if (length < lengthStep2)
                      Text('$length', style: const TextStyle(color: Colors.green))
                    else if (length < lengthStep3)
                      Text('$length', style: const TextStyle(color: Colors.yellow))
                    else if (length < lengthStep4)
                      Text('$length', style: const TextStyle(color: Colors.orange))
                    else if (length <= lengthStep5)
                      Text('$length', style: const TextStyle(color: Colors.red)),
                    const Text(' / $maxLength'),
                    if (useValueListenable(showError))
                      const Text(
                        'A comment cannot be empty',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      )
                  ],
                ),
              ),
            ],
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
                      if (length == 0) {
                        showError.value = true;
                        return;
                      }
                      final authState = ref.watch(authManagerProvider) as AuthStateSignedIn;
                      final db = ref.watch(dbProvider);

                      final comment = KComment(
                        commenterId: authState.user.id,
                        parentId: widget.postId,
                        parentType: CommentParentType.post,
                        content: KContent.text(
                          text: controller.document.toPlainText(),
                        ),
                      );

                      working.value = true;

                      await db.collection('comments').create(body: comment.toJson());

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
