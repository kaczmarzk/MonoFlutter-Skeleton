import 'package:injectable/injectable.dart';
import 'package:skeleton/core/routing/routing.dart';

@module
abstract class RoutingModule {
  @singleton
  Routing get instance => Routing();
}
