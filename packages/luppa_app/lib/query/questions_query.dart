import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:luppa_app/database/local_database.dart';

/// Robotoff questions helper.
abstract class QuestionsQuery {
  const QuestionsQuery();

  Future<List<RobotoffQuestion>> getQuestions(
    final LocalDatabase localDatabase,
    final int count,
  );
}
