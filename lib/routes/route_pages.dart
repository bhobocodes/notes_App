import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:notes_app/routes/routes_name.dart';

import '../note/notes.dart';
import '../views/home_screen.dart';

class RoutePages{
  static List<GetPage<dynamic>> ? routes = [
    GetPage(
      name: RouteNames.name,
      page: () => HomeScreen(),
    ),

    GetPage(
      name: RouteNames.noteScreen,
      page: () => NoteScreen(),
    )
  ];
}