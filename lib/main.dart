import 'package:flutter/widgets.dart';
import 'package:flame/game.dart';
import 'components/space_shooter_game.dart';

void main() {
  final game = SpaceShooterGame();
  runApp(GameWidget(game: game));
}
