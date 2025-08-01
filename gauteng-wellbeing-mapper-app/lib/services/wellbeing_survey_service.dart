import 'package:uuid/uuid.dart';
import '../models/wellbeing_survey_models.dart';
import '../db/survey_database.dart';

class WellbeingSurveyService {
  static final WellbeingSurveyService _instance = WellbeingSurveyService._internal();
  factory WellbeingSurveyService() => _instance;
  WellbeingSurveyService._internal();

  /// Insert a new wellbeing survey response
  Future<int> insertWellbeingSurvey(WellbeingSurveyResponse survey) async {
    final db = await SurveyDatabase().database;
    
    final map = survey.toJson();
    // Convert DateTime to string for SQLite
    map['timestamp'] = survey.timestamp.toIso8601String();
    
    final id = await db.insert('wellbeing_survey_responses', map);
    print('[WellbeingSurveyService] Inserted wellbeing survey with id: $id');
    return id;
  }

  /// Get all wellbeing survey responses ordered by timestamp descending
  Future<List<WellbeingSurveyResponse>> getAllWellbeingSurveys() async {
    final db = await SurveyDatabase().database;
    final maps = await db.query(
      'wellbeing_survey_responses', 
      orderBy: 'timestamp DESC',
    );
    
    return List.generate(maps.length, (i) {
      return WellbeingSurveyResponse.fromJson(maps[i]);
    });
  }

  /// Get unsynced wellbeing survey responses for research users
  Future<List<WellbeingSurveyResponse>> getUnsyncedWellbeingSurveys() async {
    final db = await SurveyDatabase().database;
    final maps = await db.query(
      'wellbeing_survey_responses',
      where: 'is_synced = ?',
      whereArgs: [0],
      orderBy: 'timestamp ASC',
    );
    
    return List.generate(maps.length, (i) {
      return WellbeingSurveyResponse.fromJson(maps[i]);
    });
  }

  /// Mark a wellbeing survey as synced
  Future<void> markAsSynced(String surveyId) async {
    final db = await SurveyDatabase().database;
    await db.update(
      'wellbeing_survey_responses',
      {'is_synced': 1},
      where: 'id = ?',
      whereArgs: [surveyId],
    );
    print('[WellbeingSurveyService] Marked survey $surveyId as synced');
  }

  /// Get wellbeing surveys for export (both synced and unsynced)
  Future<List<WellbeingSurveyResponse>> getWellbeingSurveysForExport() async {
    final db = await SurveyDatabase().database;
    final maps = await db.query(
      'wellbeing_survey_responses',
      orderBy: 'timestamp ASC',
    );
    
    return List.generate(maps.length, (i) {
      return WellbeingSurveyResponse.fromJson(maps[i]);
    });
  }

  /// Delete all wellbeing survey responses (for testing/reset purposes)
  Future<void> deleteAllWellbeingSurveys() async {
    final db = await SurveyDatabase().database;
    await db.delete('wellbeing_survey_responses');
    print('[WellbeingSurveyService] Deleted all wellbeing surveys');
  }

  /// Get count of wellbeing surveys
  Future<int> getWellbeingSurveyCount() async {
    final db = await SurveyDatabase().database;
    final result = await db.rawQuery('SELECT COUNT(*) as count FROM wellbeing_survey_responses');
    return result.first['count'] as int;
  }

  /// Create a new wellbeing survey response with current timestamp and optional location
  /// Note: Input values are option indices (0="Yes", 1="No"), converted to scoring values (1="Yes", 0="No")
  /// Now supports optional responses - null means the user didn't answer that question
  static WellbeingSurveyResponse createResponse({
    int? cheerfulSpirits, // null means not answered
    int? calmRelaxed, // null means not answered
    int? activeVigorous, // null means not answered
    int? wokeRested, // null means not answered
    int? interestingLife, // null means not answered
    double? latitude,
    double? longitude,
    double? accuracy,
    String? locationTimestamp,
  }) {
    // Convert option indices to scoring values: 0 (Yes) -> 1 point, 1 (No) -> 0 points
    // null stays null (not answered)
    int? convertOptionToScore(int? optionIndex) => optionIndex == null ? null : (optionIndex == 0 ? 1 : 0);
    
    return WellbeingSurveyResponse(
      id: const Uuid().v4(),
      timestamp: DateTime.now(),
      cheerfulSpirits: convertOptionToScore(cheerfulSpirits),
      calmRelaxed: convertOptionToScore(calmRelaxed),
      activeVigorous: convertOptionToScore(activeVigorous),
      wokeRested: convertOptionToScore(wokeRested),
      interestingLife: convertOptionToScore(interestingLife),
      latitude: latitude,
      longitude: longitude,
      accuracy: accuracy,
      locationTimestamp: locationTimestamp,
      isSynced: false,
    );
  }
}
