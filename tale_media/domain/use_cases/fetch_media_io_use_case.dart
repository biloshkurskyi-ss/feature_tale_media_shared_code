import 'package:fairy_tales_world/common/data/models/paginated_response.dart';
import 'package:fairy_tales_world/common/domain/repositories/tale_media_repository.dart';
import 'package:fairy_tales_world/common/features/tale_media/tale_media.dart';

class FetchMediaIoUseCase {
  final TaleMediaRepository taleMediaRepository;

  FetchMediaIoUseCase({required this.taleMediaRepository});

  Future<PaginatedResponse<TaleMedia>> call({TaleMediaFetchParameters? parameters}) async {
    try {
      return await taleMediaRepository.fetchTaleMediasWithParameters(parameters: parameters);
    } catch (error) {
      throw Exception("Failed to fetch TaleMedia items: $error");
    }
  }
}