import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'player_component.dart';
import 'package:flame/components.dart';

class SpaceShooterGame extends FlameGame with PanDetector {
  SpaceShooterGame();
  late PlayerComponent player;
  late final CameraComponent cameraComponent;

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    await images.loadAll([
      'house-tileset.png',
      'player-sprite.png',
    ]);
    cameraComponent = CameraComponent(world: world);
    cameraComponent.viewfinder.anchor = Anchor.topLeft;
    addAll([cameraComponent, world]);
    player = PlayerComponent(position: Vector2(128, canvasSize.y - 70));
    world.add(player);
  }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    super.onPanUpdate(info);
    player.move(info.delta.global);
  }
}
