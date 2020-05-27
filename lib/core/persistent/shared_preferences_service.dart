import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class SharedPreferencesService {
  Future<int> incrementCounter() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    int counter = (sp.getInt("counter") ?? 0) + 1;
    await sp.setInt("counter", counter);
    return counter;
  }
}
