import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame_behaviors/flame_behaviors.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flamejam/game/components/components.dart';
import 'package:flutter/services.dart';

/// Can be attached to a [Player] to make it move on keyboard inputs.
class ControlledMovementBehavior extends Behavior<Player>
    with ParentIsA<Player>, KeyboardHandler, HasGameRef<Forge2DGame> {
  /// constructor
  ControlledMovementBehavior({
    this.speed = 10,
  });

  /// The speed of the player
  final int speed;

  /// The velocity of the player
  final Vector2 velocity = Vector2(0, 0);

  @override
  void update(double dt) {
    super.update(dt);

    // rotate the player to have his feet on the ground where gravity points
    parent.body
      ..applyLinearImpulse(velocity.scaled(parent.body.mass))
      ..setTransform(
        parent.body.position,
        math.pi - gameRef.world.gravity.screenAngle() * -1,
      );
  }

  @override
  bool onKeyEvent(
    RawKeyEvent event,
    Set<LogicalKeyboardKey> keysPressed,
  ) {
    final isKeyDown = event is RawKeyDownEvent;

    if (event.logicalKey == LogicalKeyboardKey.keyA) {
      velocity.x = isKeyDown ? -1 : 0;
    } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
      velocity.x = isKeyDown ? 1 : 0;
    } else if (event.logicalKey == LogicalKeyboardKey.keyW) {
      velocity.y = isKeyDown ? -1 : 0;
    } else if (event.logicalKey == LogicalKeyboardKey.keyS) {
      velocity.y = isKeyDown ? 1 : 0;
    }

    return super.onKeyEvent(event, keysPressed);
  }
}
