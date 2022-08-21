import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flamejam/assets/mini_sprite_library.dart';
import 'package:flamejam/game/bloc/game_cubit.dart';
import 'package:flamejam/game/components/components.dart';
import 'package:flamejam/game/helpers/helpers.dart';
import 'package:mini_sprite/mini_sprite.dart';

/// This portal will finish the game and show the "Win Screen" screen
class Portal extends BodyEntity {
  /// Create a Portal Entity
  Portal({required Vector2 initialPosition})
      : super(
          bodyComponent: _PortalBodyComponent()
            ..initialPosition = initialPosition,
        );

  /// Create a [Portal] Entity from the [MiniMap] Entry
  Portal.fromMapEntry({
    required MapEntry<MapPosition, Map<String, dynamic>> entry,
  }) : this(
          initialPosition: Vector2(
            entry.key.x.toDouble() * 16,
            entry.key.y.toDouble() * 16,
          ),
        );
}

class _PortalBodyComponent extends BodyComponent
    with InitialPosition, ContactCallbacks {
  _PortalBodyComponent()
      : super(
          renderBody: false,
          children: [
            SpriteComponent(
              sprite: MiniSpriteLibrary.sprites['door'],
              size: _spriteSize,
              anchor: Anchor.center,
              position: Vector2(_spriteSize.x * 0.05, 0),
            )
          ],
        );

  static final _spriteSize = Vector2.all(24);

  @override
  void preSolve(Object other, Contact contact, Manifold oldManifold) {
    super.preSolve(other, contact, oldManifold);
    if (other is Astronaut) contact.setEnabled(false);
  }

  @override
  void beginContact(Object other, Contact contact) {
    if (other is Astronaut) {
      readBloc<GameCubit, GameState>().nextLevel();
    }

    super.beginContact(other, contact);
  }

  @override
  Body createBody() {
    final fixtureDef = FixtureDef(
      PolygonShape()
        ..setAsBoxXY(
          (_spriteSize.x / 2) * 0.6,
          (_spriteSize.y / 2),
        ),
      userData: this,
    );
    final bodyDef = BodyDef(position: initialPosition);

    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }
}
