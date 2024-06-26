import 'util.dart';

Future<void> usersCount() async {
  try {
    int count = await fetchUsersCount();
    print(count);
  } catch (e) {
    print('Error: $e');
  }
}
