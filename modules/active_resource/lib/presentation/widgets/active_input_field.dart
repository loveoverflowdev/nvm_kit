import 'package:active_resource/active_resource.dart';
import 'package:active_resource/domain.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template_parser/template_parser.dart';

final class ActiveInputField extends StatelessWidget {
  final ActiveField field;
  const ActiveInputField({super.key, required this.field,});

  @override
  Widget build(BuildContext context) {
    return switch(field.type) {
      ActiveFieldDataType.shortText => _ShortTextInputField(
        labeltext: field.title,
        hintText: field.placeholder,
      ),
      ActiveFieldDataType.paragraph => _ParagraphInputField(
        labeltext: field.title, 
        hintText: field.placeholder,
      ),

      ActiveFieldDataType.selectOneLiveResource => _SelectOneLiveResourceInputField(
        valueActiveStructureId: field.valueActiveStructureId, 
        labeltext: field.title,
      ),

      ActiveFieldDataType.selectUserList => _SelectUserListInputField(
        labeltext: field.title,
      ),

      // TODO: Handle this case.
      ActiveFieldDataType.date => throw UnimplementedError(),
      // TODO: Handle this case.
      ActiveFieldDataType.dateTime => throw UnimplementedError(),
      // TODO: Handle this case.
      ActiveFieldDataType.integer => throw UnimplementedError(),
      // TODO: Handle this case.
      ActiveFieldDataType.numeric => throw UnimplementedError(),
      // TODO: Handle this case.
      ActiveFieldDataType.email => throw UnimplementedError(),
      // TODO: Handle this case.
      ActiveFieldDataType.url => throw UnimplementedError(),
      // TODO: Handle this case.
      ActiveFieldDataType.textList => throw UnimplementedError(),
      // TODO: Handle this case.
      ActiveFieldDataType.checkboxOne => throw UnimplementedError(),
      // TODO: Handle this case.
      ActiveFieldDataType.checkboxListLiveResource => throw UnimplementedError(),
      // TODO: Handle this case.
      
      // TODO: Handle this case.
      ActiveFieldDataType.selectListLiveResource => throw UnimplementedError(),
      // TODO: Handle this case.
      ActiveFieldDataType.selectOneUser => throw UnimplementedError(),
      // TODO: Handle this case.
      
      // TODO: Handle this case.
      ActiveFieldDataType.checkboxListUser => throw UnimplementedError(),
      // TODO: Handle this case.
      ActiveFieldDataType.unsupported => throw UnimplementedError(),
    };
    // return TextField(
    //   decoration: InputDecoration(
    //     labelText: field.title,
    //   ),
    // );
  }
}

class _ShortTextInputField extends StatelessWidget {
  final String labeltext;
  final String hintText;

  const _ShortTextInputField({super.key,required this.labeltext, required this.hintText,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 50,
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hintText,
        // TODO: max chars
      )
    );
  }
}

class _ParagraphInputField extends StatelessWidget {
  final String labeltext;
  final String hintText;

  _ParagraphInputField({
    super.key,
    required this.labeltext,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hintText,
      )
    );
  }
}

class _NumericInputField extends StatelessWidget {
  final String labeltext;
  final String hintText;

  _NumericInputField({
    super.key,
    required this.labeltext,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      // TODO: set range
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hintText,
        
      )
    );
  }
}

class _SelectOneLiveResourceInputField extends StatelessWidget {
  final String valueActiveStructureId;
  final String labeltext;
  const _SelectOneLiveResourceInputField({
    super.key, 
    required this.valueActiveStructureId,
    required this.labeltext,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        showAppModelBottomSheet(
          context: context, 
          builder: (context) {
            return ActiveResourceCollectionView(
              collectionComponent: ActiveCollectionComponent(
                createFormContextName: null,
                detailContextName: null, 
                tile: null,
              ), 
              onViewDetail: (String? detailContextName, String resourceId) {  }, 
              onRouteCreateForm: (String? createFormContextName) {  },
            );
          },
        );
      },
      child: IgnorePointer(
        child: TextField(
          decoration: InputDecoration(
            labelText: labeltext,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSpacing.md),
            ),
            suffixIcon: const Icon(Icons.arrow_drop_down, size: 28,),
          ),
        ),
      ),
    );
  }
}

class _SelectUserListInputField extends StatelessWidget {
  final String labeltext;
  const _SelectUserListInputField({super.key, required this.labeltext,});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        
      },
      child: IgnorePointer(
        child: TextField(
          decoration: InputDecoration(
            labelText: labeltext,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSpacing.md),
            ),
            suffixIcon: const Icon(Icons.arrow_drop_down, size: 28,),
          ),
        ),
      ),
    );
  }
}

/*
shortText,
paragraph,
date,
dateTime,
integer,
numeric,
email,
url,
textList,
checkboxOne,
checkboxListLiveResource,
selectOneLiveResource,
selectListLiveResource,
selectOneUser,
selectListUser,
checkboxListUser,
unsupported;
*/