import 'package:flame/components.dart';
import 'package:flutter_application_1/components/space_shooter_game.dart';

class PlayerComponent extends SpriteAnimationComponent
    with HasGameRef<SpaceShooterGame> {
  PlayerComponent({required super.position})
      : super(size: Vector2.all(64), anchor: Anchor.center);
  @override
  void onLoad() {
    animation = SpriteAnimation.fromFrameData(
        game.images.fromCache('player-sprite.png'),
        SpriteAnimationData.sequenced(
            amount: 4, stepTime: 0.25, textureSize: Vector2.all(16)));
  }

  void move(Vector2 delta) {
    position.add(delta);
  }
}
