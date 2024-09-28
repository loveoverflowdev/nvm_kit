import 'package:active_resource/active_resource.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '_active_resource_selection_list_view.dart';

class SingleResourceSelectionInputField extends ConsumerStatefulWidget {
  const SingleResourceSelectionInputField({
    super.key,
    this.isRequiredIconVisible = false,
    required this.activeStructureCode,
    required this.labeltext,
    required this.titleKey,
    required this.projectId,
    required this.onChanged,
    required this.initialResourceId,
    this.subtitleKey,
  });

  final String? initialResourceId;
  final bool isRequiredIconVisible;
  final String projectId;
  final String activeStructureCode;
  final String labeltext;
  final String titleKey;
  final String? subtitleKey;
  final void Function(String) onChanged;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SingleResourceSelectionInputFieldState();
}

class _SingleResourceSelectionInputFieldState
    extends ConsumerState<SingleResourceSelectionInputField> {
  late String? _selectedResourceId;
  late String? _selectedResourceTitle;
  late final TextEditingController _textEditingController;
  late final ActiveResourceByStructureCodeProvider
      _activeResourceByStructureCodeProvider;

  @override
  void initState() {
    super.initState();
    _selectedResourceId = null;
    _selectedResourceTitle = null;
    _textEditingController = TextEditingController();

    print(
        '############################## _SingleResourceSelectionInputFieldState');
    print('+++++++ ${widget.initialResourceId}');
    print(
        '############################## _SingleResourceSelectionInputFieldState');

    if (widget.initialResourceId != null) {
      _activeResourceByStructureCodeProvider =
          activeResourceByStructureCodeProvider(
        widget.activeStructureCode,
      );

      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref
            .read(_activeResourceByStructureCodeProvider.notifier)
            .loadActiveResource(id: widget.initialResourceId!);
      });
    }
  }

  void _onChanged() {
    if (_selectedResourceId != null) {
      widget.onChanged(_selectedResourceId!);
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
    if (widget.initialResourceId != null) {
      ref.listen(_activeResourceByStructureCodeProvider, (previous, next) {
        next.whenData((activeResource) {
          _selectedResourceId = activeResource?.id;

          _selectedResourceTitle =
              activeResource?.liveAttributes[widget.titleKey];

          setState(() {});
        });
      });
    }
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        showAppModelBottomSheet(
          context: context,
          builder: (context) {
            return ActiveResourceSelectionListView(
              initialResourceId: _selectedResourceId,
              projectId: widget.projectId,
              activeStructureCode: widget.activeStructureCode,
              titleKey: widget.titleKey,
              subtitleKey: widget.subtitleKey,
              onResourceSelected: ({
                required String resourceId,
                required String resourceTitle,
              }) {
                _selectedResourceId = resourceId;
                _selectedResourceTitle = resourceTitle;
                _onChanged();
              },
            );
          },
        );
      },
      child: IgnorePointer(
        child: TextField(
          controller: _textEditingController,
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
