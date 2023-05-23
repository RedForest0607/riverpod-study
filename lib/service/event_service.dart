import 'package:riverpod_study/repository/event_repository.dart';
import 'package:riverpod_study/model/event.dart';

class EventService {
  static Future<List<Event>> retrieveEventList() async {
    var eventlist = await EventRepository.selectEventList();
    return eventlist;
  }
}
