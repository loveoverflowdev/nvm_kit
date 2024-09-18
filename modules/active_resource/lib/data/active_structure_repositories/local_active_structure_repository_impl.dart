import 'dart:convert';

import 'package:active_resource/domain.dart';
import 'package:active_resource/active_resource.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class LocalActiveStructureRepositoryImpl
    implements LocalActiveStructureRepository {
  final SharedPreferences _sharedPreferences;
  static const String _namespaceKey = 'active_structure@';

  LocalActiveStructureRepositoryImpl({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  @override
  TaskEither<ActiveStructureFailure, dynamic> clearAll() {
    // TODO: implement clearAll
    throw UnimplementedError();
  }

  @override
  TaskEither<ActiveStructureFailure, ActiveStructure?>
      readActiveStructureByCode(
    String code,
  ) {
    return readActiveStructureList().map(
      (activeStructureList) {
        final index = activeStructureList.indexWhere((e) => e.code == code);
        if (index == -1) return null;
        return activeStructureList[index];
      },
    );
  }

  @override
  TaskEither<ActiveStructureFailure, ActiveStructure?> readActiveStructureById(
    String id,
  ) {
    return readActiveStructureList().map(
      (activeStructureList) {
        final index = activeStructureList.indexWhere((e) => e.id == id);
        if (index == -1) return null;
        return activeStructureList[index];
      },
    );
  }

  @override
  TaskEither<ActiveStructureFailure, List<ActiveStructure>>
      readActiveStructureList() {
    return TaskEither.tryCatch(
      () {
        return Future.value(
          _sharedPreferences
                  .getStringList(
                    '${_namespaceKey}list',
                  )
                  ?.map(
                    (e) => ActiveStructure.fromJson(jsonDecode(e)),
                  )
                  .toList() ??
              [],
        );
      },
      (error, stackTrace) => ActiveStructureFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
    );
  }

  @override
  TaskEither<ActiveStructureFailure, bool> writeActiveStructureList(
    List<ActiveStructure> activeStructureList,
  ) {
    return TaskEither.tryCatch(
      () {
        final jsonStringList = [
          for (final activeStructure in activeStructureList)
            jsonEncode(activeStructure.toJson()),
        ];
        return _sharedPreferences.setStringList(
          '${_namespaceKey}list',
          jsonStringList,
        );
      },
      (error, stackTrace) => ActiveStructureFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
    );
  }
}
