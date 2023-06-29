import 'package:riverpod_study/repository/event_repository.dart';
import 'package:riverpod_study/model/event.dart';

class EventService {
  static Future<List<Event>> retrieveEventList() async {
    var eventList = await EventRepository.selectEventList();
    return eventList;
  }

  static Future<int> insertEvent(Event event) async {
    int result = await EventRepository.insertEvent(event);
    return result;
  }

  static Future<int> deleteEventList(int index) async {
    int result = await EventRepository.deleteEventList(index);
    return result;
  }

  static Future<int> selectEventCount() async {
    int result = await EventRepository.selectEventCount();
    return result;
  }

  static Future<List<Event>> selectLastEvent() async {
    var lastEvent = await EventRepository.selectLastEvent();
    return lastEvent;
  }
}
