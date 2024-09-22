import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roles_board_addon/domain.dart';

import '_roles_board_list_view.dart';

class RolesBoardInputField extends StatefulWidget {
  final void Function(RolesBoardSelection?)? onSelected;

  const RolesBoardInputField({
    super.key,
    required this.onSelected,
  });

  @override
  State<RolesBoardInputField> createState() => _RolesBoardInputFieldState();
}

class _RolesBoardInputFieldState extends State<RolesBoardInputField> {
  late RolesBoardSelection? _rolesBoardSelection;
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _rolesBoardSelection = null;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        showAppModelBottomSheet(
          context: context,
          builder: (context) => Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.clear),
              ),
              title: const Text('Select a roles board'),
            ),
            body: RolesBoardListView(
              initialSelection: _rolesBoardSelection,
              onSubmited: (rolesBoardSeletion, String? boardName) {
                _textEditingController.text = boardName ?? '';
                _rolesBoardSelection = rolesBoardSeletion;
                //
                widget.onSelected?.call(rolesBoardSeletion);
              },
            ),
          ),
        );
      },
      child: IgnorePointer(
        child: TextField(
          controller: _textEditingController,
          decoration: InputDecoration(
            labelText: 'Select a roles board',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSpacing.md),
            ),
            suffixIcon: const Icon(
              Icons.arrow_drop_down,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}
