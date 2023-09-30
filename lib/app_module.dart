import 'package:flutter_modular/flutter_modular.dart';

import 'core/routers.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => Routers.routers;
}
