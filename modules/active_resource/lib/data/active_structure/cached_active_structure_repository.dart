import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:fpdart/fpdart.dart' show Either, TaskEither;
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain.dart'
    show
        ActiveField,
        ActiveStructure,
        ActiveStructureFailure,
        ActiveStructureRepository;
import 'active_structure_storage.dart';

final class CachedActiveStructureRepository
    implements ActiveStructureRepository {
  
  final ActiveStructureRepository _activeStructureRepository;
  final CachedActiveStructureStorage _storage;

  CachedActiveStructureRepository({
    required ActiveStructureRepository activeStructureRepository,
    required CachedActiveStructureStorage storage,
  })  : _activeStructureRepository = activeStructureRepository,
        _storage = storage;

  @override
  TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructureByCode(String code) {
    return TaskEither.tryCatch(
      ()  {
        return _storage.readActiveStructureByCode(code);
      },
      (error, stackTrace) => ActiveStructureFailure.fromError(
        error,
      ),
    ).flatMap<ActiveStructure>(
      (cachedResult) => 
        cachedResult != null
          ? TaskEither.right(cachedResult)
          : _activeStructureRepository.getActiveStructureByCode(code)
    );
  }

  @override
  TaskEither<ActiveStructureFailure, List<ActiveStructure>>
      getActiveStructureList() {
        await SharedPreferences.getInstance();
    return TaskEither.tryCatch(
      () async {
        final activeStructureList =
            await _apiClient.getActiveStructureList().then(
                  (value) => value.map(_mapResponse).toList(),
                );
        for (final activeStructure in activeStructureList) {
          await _storage.writeActiveStructure(
            activeStructure,
          );
        }

        return activeStructureList;
      },
      (error, stackTrace) => ActiveStructureFailure.fromError(
        error,
      ),
    );
  }

  ActiveStructure _mapResponse(
    api.ActiveStructureResponse response,
  ) {
    return ActiveStructure(
      code: response.code,
      id: response.id,
      title: response.title,
      fields: response.fields
          .map(
            (e) => ActiveField(
              id: e.id,
              key: e.key,
              type: e.type,
              title: e.title,
              order: e.order,
              placeholder: '',
              description: '',
            ),
          )
          .toList(),
    );
  }
}
