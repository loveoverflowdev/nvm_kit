import 'package:flutter/material.dart';

enum _Menu {
  edit,
  share,
  remove,
}

class ActiveResourceListTile extends StatelessWidget {
  final String? title;
  final String? subtitleKey;
  final void Function()? onPressed;
  final void Function()? onShareAction;
  final void Function()? onDeleteAction;
  final void Function()? onEditAction;

  const ActiveResourceListTile({
    super.key,
    this.title,
    this.subtitleKey,
    required this.onPressed,
    required this.onShareAction,
    required this.onDeleteAction,
    required this.onEditAction,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      title: Text(
        title ?? '',
      ),
      subtitle: Text(
        subtitleKey ?? '',
      ),
      trailing: PopupMenuButton(onSelected: (value) {
        switch (value) {
          case _Menu.edit:
            onEditAction?.call();
          case _Menu.share:
            onShareAction?.call();
          case _Menu.remove:
            onDeleteAction?.call();
        }
      }, itemBuilder: (context) {
        return [
          if (onEditAction != null)
            const PopupMenuItem<_Menu>(
              value: _Menu.edit,
              child: ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit'),
              ),
            ),
          //
          if (onShareAction != null)
            const PopupMenuItem<_Menu>(
              value: _Menu.share,
              child: ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
            ),
          //
          if (onDeleteAction != null)
            const PopupMenuItem<_Menu>(
              value: _Menu.remove,
              child: ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete'),
              ),
            ),
        ];
      }),
    );
  }
}
