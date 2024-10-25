import 'package:fairy_tales_world/common/domain/enums/subscription_level.dart';
import 'package:fairy_tales_world/common/features/tale_media/domain/entities/tale_media.dart';
import 'package:fairy_tales_world/shared/domain/entities/content_state.dart';

TaleMedia createTaleMedia(String id, String title) {
  return TaleMedia(
    id: id,
    title: title,
    taleRootId: 'root_$id',
    contentState: ContentState.active,
    lastModifiedTime: DateTime.now(),
    languageId: 'en',
    subscriptionLevel: SubscriptionLevel.free,
    index: 0,
  );
}

bool taleMediaEqualsIgnoringTime(TaleMedia a, TaleMedia b) {
  return a.id == b.id &&
      a.title == b.title &&
      a.taleRootId == b.taleRootId &&
      a.contentState == b.contentState &&
      a.languageId == b.languageId &&
      a.subscriptionLevel == b.subscriptionLevel &&
      a.index == b.index;
}