import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flamejam/game/components/components.dart';
import 'package:flamejam/game/components/portal/portal.dart';
import 'package:mini_sprite/mini_sprite.dart';

/// Holds all the maps
class MiniSpriteMap {
  /// a demo level
  static const demoLevel = '''
      [{"x":7,"y":14,"data":{"sprite":"building_block_dynamic"}},{"x":8,"y":14,"data":{"sprite":"building_block_dynamic"}},{"x":6,"y":14,"data":{"sprite":"building_block_dynamic"}},{"x":1,"y":9,"data":{"sprite":"building_block_dynamic"}},{"x":1,"y":8,"data":{"sprite":"building_block_dynamic"}},{"x":7,"y":1,"data":{"sprite":"building_block_dynamic"}},{"x":8,"y":1,"data":{"sprite":"building_block_dynamic"}},{"x":9,"y":1,"data":{"sprite":"building_block_dynamic"}},{"x":14,"y":7,"data":{"sprite":"building_block_dynamic"}},{"x":14,"y":8,"data":{"sprite":"building_block_dynamic"}},{"x":14,"y":9,"data":{"sprite":"building_block_dynamic"}},{"x":13,"y":7,"data":{"sprite":"building_block_dynamic"}},{"x":8,"y":7,"data":{"sprite":"building_block_dynamic"}},{"x":7,"y":8,"data":{"sprite":"building_block_dynamic"}},{"x":9,"y":8,"data":{"sprite":"building_block_dynamic"}},{"x":15,"y":0,"data":{"sprite":"building_block_static"}},{"x":14,"y":0,"data":{"sprite":"building_block_static"}},{"x":13,"y":0,"data":{"sprite":"building_block_static"}},{"x":12,"y":0,"data":{"sprite":"building_block_static"}},{"x":11,"y":0,"data":{"sprite":"building_block_static"}},{"x":10,"y":0,"data":{"sprite":"building_block_static"}},{"x":9,"y":0,"data":{"sprite":"building_block_static"}},{"x":8,"y":0,"data":{"sprite":"building_block_static"}},{"x":7,"y":0,"data":{"sprite":"building_block_static"}},{"x":6,"y":0,"data":{"sprite":"building_block_static"}},{"x":5,"y":0,"data":{"sprite":"building_block_static"}},{"x":3,"y":0,"data":{"sprite":"building_block_static"}},{"x":1,"y":0,"data":{"sprite":"building_block_static"}},{"x":4,"y":0,"data":{"sprite":"building_block_static"}},{"x":2,"y":0,"data":{"sprite":"building_block_static"}},{"x":0,"y":0,"data":{"sprite":"building_block_static"}},{"x":0,"y":1,"data":{"sprite":"building_block_static"}},{"x":0,"y":2,"data":{"sprite":"building_block_static"}},{"x":0,"y":3,"data":{"sprite":"building_block_static"}},{"x":0,"y":4,"data":{"sprite":"building_block_static"}},{"x":0,"y":5,"data":{"sprite":"building_block_static"}},{"x":0,"y":6,"data":{"sprite":"building_block_static"}},{"x":0,"y":7,"data":{"sprite":"building_block_static"}},{"x":0,"y":8,"data":{"sprite":"building_block_static"}},{"x":0,"y":9,"data":{"sprite":"building_block_static"}},{"x":0,"y":10,"data":{"sprite":"building_block_static"}},{"x":0,"y":11,"data":{"sprite":"building_block_static"}},{"x":0,"y":13,"data":{"sprite":"building_block_static"}},{"x":0,"y":12,"data":{"sprite":"building_block_static"}},{"x":0,"y":14,"data":{"sprite":"building_block_static"}},{"x":2,"y":15,"data":{"sprite":"building_block_static"}},{"x":0,"y":15,"data":{"sprite":"building_block_static"}},{"x":1,"y":15,"data":{"sprite":"building_block_static"}},{"x":3,"y":15,"data":{"sprite":"building_block_static"}},{"x":4,"y":15,"data":{"sprite":"building_block_static"}},{"x":5,"y":15,"data":{"sprite":"building_block_static"}},{"x":6,"y":15,"data":{"sprite":"building_block_static"}},{"x":7,"y":15,"data":{"sprite":"building_block_static"}},{"x":8,"y":15,"data":{"sprite":"building_block_static"}},{"x":11,"y":15,"data":{"sprite":"building_block_static"}},{"x":10,"y":15,"data":{"sprite":"building_block_static"}},{"x":9,"y":15,"data":{"sprite":"building_block_static"}},{"x":12,"y":15,"data":{"sprite":"building_block_static"}},{"x":13,"y":15,"data":{"sprite":"building_block_static"}},{"x":14,"y":15,"data":{"sprite":"building_block_static"}},{"x":15,"y":15,"data":{"sprite":"building_block_static"}},{"x":15,"y":14,"data":{"sprite":"building_block_static"}},{"x":15,"y":13,"data":{"sprite":"building_block_static"}},{"x":15,"y":12,"data":{"sprite":"building_block_static"}},{"x":15,"y":11,"data":{"sprite":"building_block_static"}},{"x":15,"y":10,"data":{"sprite":"building_block_static"}},{"x":15,"y":9,"data":{"sprite":"building_block_static"}},{"x":15,"y":8,"data":{"sprite":"building_block_static"}},{"x":15,"y":7,"data":{"sprite":"building_block_static"}},{"x":15,"y":6,"data":{"sprite":"building_block_static"}},{"x":15,"y":5,"data":{"sprite":"building_block_static"}},{"x":15,"y":4,"data":{"sprite":"building_block_static"}},{"x":15,"y":2,"data":{"sprite":"building_block_static"}},{"x":15,"y":1,"data":{"sprite":"building_block_static"}},{"x":15,"y":3,"data":{"sprite":"building_block_static"}},{"x":2,"y":13,"data":{"sprite":"building_block_static"}},{"x":3,"y":13,"data":{"sprite":"building_block_static"}},{"x":4,"y":13,"data":{"sprite":"building_block_static"}},{"x":5,"y":13,"data":{"sprite":"building_block_static"}},{"x":6,"y":12,"data":{"sprite":"building_block_static"}},{"x":7,"y":10,"data":{"sprite":"building_block_static"}},{"x":8,"y":11,"data":{"sprite":"building_block_static"}},{"x":9,"y":11,"data":{"sprite":"building_block_static"}},{"x":9,"y":13,"data":{"sprite":"building_block_static"}},{"x":10,"y":13,"data":{"sprite":"building_block_static"}},{"x":12,"y":13,"data":{"sprite":"building_block_static"}},{"x":13,"y":14,"data":{"sprite":"building_block_static"}},{"x":11,"y":11,"data":{"sprite":"building_block_static"}},{"x":10,"y":11,"data":{"sprite":"building_block_static"}},{"x":6,"y":10,"data":{"sprite":"building_block_static"}},{"x":5,"y":10,"data":{"sprite":"building_block_static"}},{"x":11,"y":14,"data":{"sprite":"portal"}}]
      ''';
}

/// {@template assets.MiniMapCreate}
/// Creates [Component]s from a [MiniMap].
/// {@endtemplate}
extension MiniMapCreate on MiniMap {
  /// {@macro assets.MiniMapCreate}
  List<Component> create() {
    final children = <Component>[];
    for (final entry in objects.entries) {
      final spriteName = entry.value['sprite'];

      late final Component component;
      switch (spriteName) {
        case 'building_block_static':
          component = Box.fromMapEntry(
            entry: entry,
            bodyType: BodyType.static,
          );
          break;
        case 'building_block_dynamic':
          component = Box.fromMapEntry(
            entry: entry,
            bodyType: BodyType.dynamic,
          );
          break;
        case 'portal':
          component = Portal.fromMapEntry(entry: entry);
          break;
        default:
          continue;
      }

      children.add(component);
    }

    return children;
  }
}
