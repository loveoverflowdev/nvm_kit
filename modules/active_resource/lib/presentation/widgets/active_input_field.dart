import 'package:active_resource/active_resource.dart';
import 'package:active_resource/presentation/widgets/_date_input_field.dart';
import 'package:active_resource/presentation/widgets/_date_time_input_field.dart';
import 'package:active_resource/presentation/widgets/_email_input_field.dart';
import 'package:active_resource/presentation/widgets/_numeric_input_field.dart';
import 'package:active_resource/presentation/widgets/_select_resource_list_input_field.dart';
import 'package:active_resource/presentation/widgets/_url_input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '_paragraph_input_field.dart';
import '_select_one_resource_input_field.dart';
import '_select_one_user_input_field.dart';
import '_select_user_list_input_field.dart';
import '_short_text_input_field.dart';
import '_text_list_input_field.dart';

final class ActiveInputField extends StatelessWidget {
  final ActiveInputFieldSpecification specification;
  const ActiveInputField({
    super.key,
    required this.specification,
  });

  @override
  Widget build(BuildContext context) {
    return specification.dataType.when(
      shortText: () {
        return ShortTextInputField(
          labeltext: specification.title,
          hintText: specification.placeholder,
        );
      },
      paragraph: () {
        return ParagraphInputField(
          hintText: specification.placeholder,
          labeltext: specification.title,
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
          hintText: specification.placeholder,
          labeltext: specification.title,
        );
      },
      numeric: () {
        return NumericInputField(
          hintText: specification.placeholder,
          labeltext: specification.title,
        );
      },
      email: () {
        return EmailInputField(
        );
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
      multiActiveResourceCheckbox: (String activeStructureCode, String titleKey, String? subtitleKey,) {
        return SelectResourceListInputField(
          labeltext: specification.title,
          valueActiveStructureId: '',
          titleKey: titleKey,
          subtitleKey: subtitleKey,
        );
      },
      singleActiveResourceSelection: (String activeStructureCode, String titleKey, String? subtitleKey) {
        return SelectOneResourceInputField(
          labeltext: specification.title,
          valueActiveStructureId: '',
          titleKey: titleKey,
          subtitleKey: subtitleKey,
        );
      },
      multiActiveResourceSelection: (String activeStructureCode, String titleKey, String? subtitleKey) {
        return SelectResourceListInputField(
          labeltext: specification.title,
          valueActiveStructureId: '',
          titleKey: titleKey,
          subtitleKey: subtitleKey,
        );
      },
      singleUserSelection: (String titleKey, String? subtitleKey) {
        return SelectOneUserInputField(
          labeltext: specification.title,
          titleKey: titleKey,
          subtitleKey: subtitleKey,
        );
      },
      multiUserSelection: (String titleKey, String? subtitleKey) {
        return SelectUserListInputField(
          labeltext: specification.title, 
          titleKey: titleKey,
          subtitleKey: subtitleKey,
        );
      },
      multiUserCheckbox: (String titleKey, String? subtitleKey) {
        return SelectUserListInputField(
          labeltext: specification.title, 
          titleKey: titleKey,
          subtitleKey: subtitleKey,
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