import 'package:active_resource/presentation/providers/user_providers/user_list_provider.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '_user_selection_list_view.dart';

class SingleUserInputField extends ConsumerStatefulWidget {
  const SingleUserInputField({
    super.key,
    this.isRequiredIconVisible = false,
    required this.labeltext,
    required this.titleKey,
    required this.onChanged,
    this.subtitleKey,
    this.initialUserId,
  });

  final String? initialUserId;
  final bool isRequiredIconVisible;
  final String labeltext;
  final String titleKey;
  final String? subtitleKey;
  final void Function(String) onChanged;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SingleUserInputFieldState();
}

class _SingleUserInputFieldState extends ConsumerState<SingleUserInputField> {
  late String? _selectedUserId;
  late String? _selectedResourceTitle;
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _selectedUserId = null;
    _selectedResourceTitle = null;
    _textEditingController = TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(userListProvider.notifier).loadUserList();
    });
  }

  void _onChanged() {
    if (_selectedUserId != null) {
      widget.onChanged(_selectedUserId!);
    }
    setState(() {});
  }

  @override
  void setState(void Function() fn) {
    _textEditingController.text = _selectedResourceTitle ?? '';
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        showAppModelBottomSheet(
          context: context,
          builder: (context) {
            return UserSelectionListView(
              initialUserId: _selectedUserId,
              titleKey: widget.titleKey,
              subtitleKey: widget.subtitleKey,
              onResourceSelected: ({
                required String userId,
                required String resourceTitle,
              }) {
                _selectedUserId = userId;
                _selectedResourceTitle = resourceTitle;
                _onChanged();
              },
            );
          },
        );
      },
      child: IgnorePointer(
        child: TextField(
          decoration: InputDecoration(
            labelText: widget.labeltext,
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
