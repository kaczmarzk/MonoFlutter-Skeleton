import 'package:crew_clash/core/routing/routing.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RoutingModule {
  @singleton
  Routing get instance => Routing();
}
