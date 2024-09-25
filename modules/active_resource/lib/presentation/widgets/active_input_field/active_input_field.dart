import 'package:active_resource/active_resource.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '_date_input_field.dart';
import '_date_time_input_field.dart';
import '_email_input_field.dart';
import '_multi_resource_selection_input_field.dart';
import '_multi_user_input_field.dart';
import '_numeric_input_field.dart';
import '_paragraph_input_field.dart';
import '_short_text_input_field.dart';
import '_single_resource_selection_input_field.dart';
import '_single_user_input_field.dart';
import '_text_list_input_field.dart';
import '_url_input_field.dart';

final class ActiveInputField extends StatelessWidget {
  final Object? initialValue;

  /// Return raw value to fill submission form
  final void Function(dynamic) onSelected;
  final ActiveInputFieldSpecification specification;

  const ActiveInputField({
    super.key,
    this.initialValue,
    required this.specification,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return specification.dataType.when(
      shortText: () {
        return ShortTextInputField(
          initialValue: initialValue as String?,
          isRequiredIconVisible: specification.isRequired,
          labeltext: specification.title,
          hintText: specification.placeholder,
          onChanged: onSelected,
        );
      },
      paragraph: () {
        return ParagraphInputField(
          initialValue: initialValue as String?,
          isRequiredIconVisible: specification.isRequired,
          hintText: specification.placeholder,
          labeltext: specification.title,
          onChanged: onSelected,
        );
      },
      date: () {
        return DateInputField();
      },
      dateTime: () {
        return DateTimeInputField();
      },
      integer: () {
        return NumericInputField(
          // TODO: add initialValue
          isRequiredIconVisible: specification.isRequired,
          hintText: specification.placeholder,
          labeltext: specification.title,
          onChanged: onSelected,
        );
      },
      numeric: () {
        return NumericInputField(
          // TODO: add initialValue
          isRequiredIconVisible: specification.isRequired,
          hintText: specification.placeholder,
          labeltext: specification.title,
          onChanged: onSelected,
        );
      },
      email: () {
        return EmailInputField();
      },
      url: () {
        return UrlInputField();
      },
      textList: () {
        return TextListInputField();
      },
      binaryCheckbox: () {
        return throw UnimplementedError();
      },
      multiActiveResourceCheckbox: (
        String activeStructureCode,
        String titleKey,
        String? subtitleKey,
      ) {
        return MultiResourceSelectionInputField(
          isRequiredIconVisible: specification.isRequired,
          labeltext: specification.title,
          activeStructureCode: activeStructureCode,
          titleKey: titleKey,
          subtitleKey: subtitleKey,
          projectId: specification.projectId,
          onChanged: onSelected,
        );
      },
      singleActiveResourceSelection: (
        String activeStructureCode,
        String titleKey,
        String? subtitleKey,
      ) {
        return SingleResourceSelectionInputField(
          initialResourceId: initialValue as String?,
          isRequiredIconVisible: specification.isRequired,
          projectId: specification.projectId,
          labeltext: specification.title,
          activeStructureCode: activeStructureCode,
          titleKey: titleKey,
          subtitleKey: subtitleKey,
          onChanged: onSelected,
        );
      },
      multiActiveResourceSelection: (
        String activeStructureCode,
        String titleKey,
        String? subtitleKey,
      ) {
        return MultiResourceSelectionInputField(
          isRequiredIconVisible: specification.isRequired,
          projectId: specification.projectId,
          labeltext: specification.title,
          activeStructureCode: activeStructureCode,
          titleKey: titleKey,
          subtitleKey: subtitleKey,
          onChanged: onSelected,
        );
      },
      singleUserSelection: (
        String titleKey,
        String? subtitleKey,
      ) {
        return SingleUserInputField(
          isRequiredIconVisible: specification.isRequired,
          labeltext: specification.title,
          titleKey: titleKey,
          subtitleKey: subtitleKey,
        );
      },
      multiUserSelection: (String titleKey, String? subtitleKey) {
        return MultiUserInputField(
          isRequiredIconVisible: specification.isRequired,
          labeltext: specification.title,
          titleKey: titleKey,
          subtitleKey: subtitleKey,
          onChanged: onSelected,
        );
      },
      multiUserCheckbox: (String titleKey, String? subtitleKey) {
        return MultiUserInputField(
          isRequiredIconVisible: specification.isRequired,
          labeltext: specification.title,
          titleKey: titleKey,
          subtitleKey: subtitleKey,
          onChanged: onSelected,
        );
      },
      unsupported: () {
        return throw UnimplementedError();
      },
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
