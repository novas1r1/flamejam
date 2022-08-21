import 'package:flame/components.dart';
import 'package:flamejam/game/components/components.dart';
import 'package:flamejam/game/components/platform/platform.dart';
import 'package:flamejam/game/components/spaceship_items/spaceship_item.dart';
import 'package:mini_sprite/mini_sprite.dart';

/// Holds all the maps
class MiniSpriteMap {
  /// a demo level

  static const firstLevel = '''
      [{"x":7,"y":14,"data":{"sprite":"barrel"}},{"x":8,"y":14,"data":{"sprite":"barrel"}},{"x":6,"y":14,"data":{"sprite":"barrel"}},{"x":1,"y":9,"data":{"sprite":"barrel"}},{"x":1,"y":8,"data":{"sprite":"barrel"}},{"x":7,"y":1,"data":{"sprite":"barrel"}},{"x":8,"y":1,"data":{"sprite":"barrel"}},{"x":9,"y":1,"data":{"sprite":"barrel"}},{"x":14,"y":7,"data":{"sprite":"barrel"}},{"x":14,"y":8,"data":{"sprite":"barrel"}},{"x":14,"y":9,"data":{"sprite":"barrel"}},{"x":13,"y":7,"data":{"sprite":"barrel"}},{"x":8,"y":7,"data":{"sprite":"barrel"}},{"x":7,"y":8,"data":{"sprite":"barrel"}},{"x":9,"y":8,"data":{"sprite":"barrel"}},{"x":15,"y":0,"data":{"sprite":"wall_corner_top_right"}},{"x":14,"y":0,"data":{"sprite":"wall_top"}},{"x":13,"y":0,"data":{"sprite":"wall_top"}},{"x":12,"y":0,"data":{"sprite":"wall_top"}},{"x":11,"y":0,"data":{"sprite":"wall_top"}},{"x":10,"y":0,"data":{"sprite":"wall_top"}},{"x":9,"y":0,"data":{"sprite":"wall_top"}},{"x":8,"y":0,"data":{"sprite":"wall_top"}},{"x":7,"y":0,"data":{"sprite":"wall_top"}},{"x":6,"y":0,"data":{"sprite":"wall_top"}},{"x":5,"y":0,"data":{"sprite":"wall_top"}},{"x":3,"y":0,"data":{"sprite":"wall_top"}},{"x":1,"y":0,"data":{"sprite":"wall_top"}},{"x":4,"y":0,"data":{"sprite":"wall_top"}},{"x":2,"y":0,"data":{"sprite":"wall_top"}},{"x":0,"y":0,"data":{"sprite":"wall_corner_top_left"}},{"x":0,"y":1,"data":{"sprite":"wall_left"}},{"x":0,"y":2,"data":{"sprite":"wall_left"}},{"x":0,"y":3,"data":{"sprite":"wall_left"}},{"x":0,"y":4,"data":{"sprite":"wall_left"}},{"x":0,"y":5,"data":{"sprite":"wall_left"}},{"x":0,"y":6,"data":{"sprite":"wall_left"}},{"x":0,"y":7,"data":{"sprite":"wall_left"}},{"x":0,"y":8,"data":{"sprite":"wall_left"}},{"x":0,"y":9,"data":{"sprite":"wall_left"}},{"x":0,"y":10,"data":{"sprite":"wall_left"}},{"x":0,"y":11,"data":{"sprite":"wall_left"}},{"x":0,"y":13,"data":{"sprite":"wall_left"}},{"x":0,"y":12,"data":{"sprite":"wall_left"}},{"x":0,"y":14,"data":{"sprite":"wall_left"}},{"x":2,"y":15,"data":{"sprite":"wall_bottom"}},{"x":0,"y":15,"data":{"sprite":"wall_corner_bottom_left"}},{"x":1,"y":15,"data":{"sprite":"wall_bottom"}},{"x":3,"y":15,"data":{"sprite":"wall_bottom"}},{"x":4,"y":15,"data":{"sprite":"wall_bottom"}},{"x":5,"y":15,"data":{"sprite":"wall_bottom"}},{"x":6,"y":15,"data":{"sprite":"wall_bottom"}},{"x":7,"y":15,"data":{"sprite":"wall_bottom"}},{"x":8,"y":15,"data":{"sprite":"wall_bottom"}},{"x":11,"y":15,"data":{"sprite":"wall_bottom"}},{"x":10,"y":15,"data":{"sprite":"wall_bottom"}},{"x":9,"y":15,"data":{"sprite":"wall_bottom"}},{"x":12,"y":15,"data":{"sprite":"wall_bottom"}},{"x":13,"y":15,"data":{"sprite":"wall_bottom"}},{"x":14,"y":15,"data":{"sprite":"wall_bottom"}},{"x":15,"y":15,"data":{"sprite":"wall_corner_bottom_right"}},{"x":15,"y":14,"data":{"sprite":"wall_right"}},{"x":15,"y":13,"data":{"sprite":"wall_right"}},{"x":15,"y":12,"data":{"sprite":"wall_right"}},{"x":15,"y":11,"data":{"sprite":"wall_right"}},{"x":15,"y":10,"data":{"sprite":"wall_right"}},{"x":15,"y":9,"data":{"sprite":"wall_right"}},{"x":15,"y":8,"data":{"sprite":"wall_right"}},{"x":15,"y":7,"data":{"sprite":"wall_right"}},{"x":15,"y":6,"data":{"sprite":"wall_right"}},{"x":15,"y":5,"data":{"sprite":"wall_right"}},{"x":15,"y":4,"data":{"sprite":"wall_right"}},{"x":15,"y":2,"data":{"sprite":"wall_right"}},{"x":15,"y":1,"data":{"sprite":"wall_right"}},{"x":15,"y":3,"data":{"sprite":"wall_right"}},{"x":2,"y":13,"data":{"sprite":"platform"}},{"x":3,"y":13,"data":{"sprite":"platform"}},{"x":4,"y":13,"data":{"sprite":"platform"}},{"x":5,"y":13,"data":{"sprite":"platform"}},{"x":6,"y":12,"data":{"sprite":"platform"}},{"x":7,"y":10,"data":{"sprite":"platform"}},{"x":8,"y":11,"data":{"sprite":"platform"}},{"x":9,"y":11,"data":{"sprite":"platform"}},{"x":9,"y":13,"data":{"sprite":"platform"}},{"x":10,"y":13,"data":{"sprite":"platform"}},{"x":12,"y":13,"data":{"sprite":"platform"}},{"x":13,"y":14,"data":{"sprite":"platform"}},{"x":11,"y":11,"data":{"sprite":"platform"}},{"x":10,"y":11,"data":{"sprite":"platform"}},{"x":6,"y":10,"data":{"sprite":"platform"}},{"x":5,"y":10,"data":{"sprite":"platform"}},{"x":3,"y":3,"data":{"sprite":"oxygen_bubble"}},{"x":3,"y":9,"data":{"sprite":"oxygen_bubble"}},{"x":14,"y":11,"data":{"sprite":"oxygen_bubble"}},{"x":10,"y":3,"data":{"sprite":"oxygen_bubble"}},{"x":9,"y":14,"data":{"sprite":"oxygen_bubble"}},{"x":7,"y":5,"data":{"sprite":"spike_ball"}},{"x":12,"y":14,"data":{"sprite":"platform"}},{"x":13,"y":13,"data":{"sprite":"door"}}]
  ''';

  static const secondLevel = '''
      [{"x":7,"y":14,"data":{"sprite":"barrel"}},{"x":8,"y":14,"data":{"sprite":"barrel"}},{"x":6,"y":14,"data":{"sprite":"barrel"}},{"x":1,"y":9,"data":{"sprite":"barrel"}},{"x":1,"y":8,"data":{"sprite":"barrel"}},{"x":7,"y":1,"data":{"sprite":"barrel"}},{"x":8,"y":1,"data":{"sprite":"barrel"}},{"x":9,"y":1,"data":{"sprite":"barrel"}},{"x":14,"y":7,"data":{"sprite":"barrel"}},{"x":14,"y":8,"data":{"sprite":"barrel"}},{"x":14,"y":9,"data":{"sprite":"barrel"}},{"x":13,"y":7,"data":{"sprite":"barrel"}},{"x":8,"y":7,"data":{"sprite":"barrel"}},{"x":7,"y":8,"data":{"sprite":"barrel"}},{"x":9,"y":8,"data":{"sprite":"barrel"}},{"x":15,"y":0,"data":{"sprite":"wall_corner_top_right"}},{"x":14,"y":0,"data":{"sprite":"wall_top"}},{"x":13,"y":0,"data":{"sprite":"wall_top"}},{"x":12,"y":0,"data":{"sprite":"wall_top"}},{"x":11,"y":0,"data":{"sprite":"wall_top"}},{"x":10,"y":0,"data":{"sprite":"wall_top"}},{"x":9,"y":0,"data":{"sprite":"wall_top"}},{"x":8,"y":0,"data":{"sprite":"wall_top"}},{"x":7,"y":0,"data":{"sprite":"wall_top"}},{"x":5,"y":0,"data":{"sprite":"wall_top"}},{"x":3,"y":0,"data":{"sprite":"wall_top"}},{"x":1,"y":0,"data":{"sprite":"wall_top"}},{"x":4,"y":0,"data":{"sprite":"wall_top"}},{"x":2,"y":0,"data":{"sprite":"wall_top"}},{"x":0,"y":0,"data":{"sprite":"wall_corner_top_left"}},{"x":0,"y":1,"data":{"sprite":"wall_left"}},{"x":0,"y":2,"data":{"sprite":"wall_left"}},{"x":0,"y":3,"data":{"sprite":"wall_left"}},{"x":0,"y":4,"data":{"sprite":"wall_left"}},{"x":0,"y":5,"data":{"sprite":"wall_left"}},{"x":0,"y":6,"data":{"sprite":"wall_left"}},{"x":0,"y":7,"data":{"sprite":"wall_left"}},{"x":0,"y":8,"data":{"sprite":"wall_left"}},{"x":0,"y":9,"data":{"sprite":"wall_left"}},{"x":0,"y":10,"data":{"sprite":"wall_left"}},{"x":0,"y":11,"data":{"sprite":"wall_left"}},{"x":0,"y":13,"data":{"sprite":"wall_left"}},{"x":0,"y":12,"data":{"sprite":"wall_left"}},{"x":0,"y":14,"data":{"sprite":"wall_left"}},{"x":2,"y":15,"data":{"sprite":"wall_bottom"}},{"x":0,"y":15,"data":{"sprite":"wall_corner_bottom_left"}},{"x":1,"y":15,"data":{"sprite":"wall_bottom"}},{"x":3,"y":15,"data":{"sprite":"wall_bottom"}},{"x":4,"y":15,"data":{"sprite":"wall_bottom"}},{"x":5,"y":15,"data":{"sprite":"wall_bottom"}},{"x":6,"y":15,"data":{"sprite":"wall_bottom"}},{"x":7,"y":15,"data":{"sprite":"wall_bottom"}},{"x":8,"y":15,"data":{"sprite":"wall_bottom"}},{"x":11,"y":15,"data":{"sprite":"wall_bottom"}},{"x":10,"y":15,"data":{"sprite":"wall_bottom"}},{"x":9,"y":15,"data":{"sprite":"wall_bottom"}},{"x":12,"y":15,"data":{"sprite":"wall_bottom"}},{"x":13,"y":15,"data":{"sprite":"wall_bottom"}},{"x":14,"y":15,"data":{"sprite":"wall_bottom"}},{"x":15,"y":15,"data":{"sprite":"wall_corner_bottom_right"}},{"x":15,"y":14,"data":{"sprite":"wall_right"}},{"x":15,"y":13,"data":{"sprite":"wall_right"}},{"x":15,"y":12,"data":{"sprite":"wall_right"}},{"x":15,"y":11,"data":{"sprite":"wall_right"}},{"x":15,"y":10,"data":{"sprite":"wall_right"}},{"x":15,"y":9,"data":{"sprite":"wall_right"}},{"x":15,"y":8,"data":{"sprite":"wall_right"}},{"x":15,"y":7,"data":{"sprite":"wall_right"}},{"x":15,"y":6,"data":{"sprite":"wall_right"}},{"x":15,"y":5,"data":{"sprite":"wall_right"}},{"x":15,"y":4,"data":{"sprite":"wall_right"}},{"x":15,"y":2,"data":{"sprite":"wall_right"}},{"x":15,"y":1,"data":{"sprite":"wall_right"}},{"x":15,"y":3,"data":{"sprite":"wall_right"}},{"x":2,"y":13,"data":{"sprite":"platform"}},{"x":3,"y":13,"data":{"sprite":"platform"}},{"x":4,"y":13,"data":{"sprite":"platform"}},{"x":5,"y":13,"data":{"sprite":"platform"}},{"x":6,"y":12,"data":{"sprite":"platform"}},{"x":7,"y":10,"data":{"sprite":"platform"}},{"x":8,"y":11,"data":{"sprite":"platform"}},{"x":9,"y":11,"data":{"sprite":"platform"}},{"x":9,"y":13,"data":{"sprite":"platform"}},{"x":10,"y":13,"data":{"sprite":"platform"}},{"x":12,"y":13,"data":{"sprite":"platform"}},{"x":13,"y":14,"data":{"sprite":"platform"}},{"x":11,"y":11,"data":{"sprite":"platform"}},{"x":10,"y":11,"data":{"sprite":"platform"}},{"x":6,"y":10,"data":{"sprite":"platform"}},{"x":5,"y":10,"data":{"sprite":"platform"}},{"x":3,"y":3,"data":{"sprite":"oxygen_bubble"}},{"x":3,"y":9,"data":{"sprite":"oxygen_bubble"}},{"x":14,"y":11,"data":{"sprite":"oxygen_bubble"}},{"x":10,"y":3,"data":{"sprite":"oxygen_bubble"}},{"x":9,"y":14,"data":{"sprite":"oxygen_bubble"}},{"x":7,"y":5,"data":{"sprite":"spike_ball"}},{"x":12,"y":14,"data":{"sprite":"platform"}},{"x":5,"y":2,"data":{"sprite":"spaceship_wrench"}},{"x":6,"y":2,"data":{"sprite":"spaceship_tank"}},{"x":7,"y":2,"data":{"sprite":"spaceship_computer"}},{"x":6,"y":0,"data":{"sprite":"wall_top"}},{"x":5,"y":4,"data":{"sprite":"door"}}]
  ''';

  static const thirdLevel = '''
      [{"x":7,"y":14,"data":{"sprite":"barrel"}},{"x":8,"y":14,"data":{"sprite":"barrel"}},{"x":6,"y":14,"data":{"sprite":"barrel"}},{"x":1,"y":9,"data":{"sprite":"barrel"}},{"x":1,"y":8,"data":{"sprite":"barrel"}},{"x":7,"y":1,"data":{"sprite":"barrel"}},{"x":8,"y":1,"data":{"sprite":"barrel"}},{"x":9,"y":1,"data":{"sprite":"barrel"}},{"x":14,"y":7,"data":{"sprite":"barrel"}},{"x":14,"y":8,"data":{"sprite":"barrel"}},{"x":14,"y":9,"data":{"sprite":"barrel"}},{"x":13,"y":7,"data":{"sprite":"barrel"}},{"x":8,"y":7,"data":{"sprite":"barrel"}},{"x":7,"y":8,"data":{"sprite":"barrel"}},{"x":9,"y":8,"data":{"sprite":"barrel"}},{"x":15,"y":0,"data":{"sprite":"wall_corner_top_right"}},{"x":14,"y":0,"data":{"sprite":"wall_top"}},{"x":13,"y":0,"data":{"sprite":"wall_top"}},{"x":12,"y":0,"data":{"sprite":"wall_top"}},{"x":11,"y":0,"data":{"sprite":"wall_top"}},{"x":10,"y":0,"data":{"sprite":"wall_top"}},{"x":9,"y":0,"data":{"sprite":"wall_top"}},{"x":8,"y":0,"data":{"sprite":"wall_top"}},{"x":7,"y":0,"data":{"sprite":"wall_top"}},{"x":5,"y":0,"data":{"sprite":"wall_top"}},{"x":3,"y":0,"data":{"sprite":"wall_top"}},{"x":1,"y":0,"data":{"sprite":"wall_top"}},{"x":4,"y":0,"data":{"sprite":"wall_top"}},{"x":2,"y":0,"data":{"sprite":"wall_top"}},{"x":0,"y":0,"data":{"sprite":"wall_corner_top_left"}},{"x":0,"y":1,"data":{"sprite":"wall_left"}},{"x":0,"y":2,"data":{"sprite":"wall_left"}},{"x":0,"y":3,"data":{"sprite":"wall_left"}},{"x":0,"y":4,"data":{"sprite":"wall_left"}},{"x":0,"y":5,"data":{"sprite":"wall_left"}},{"x":0,"y":6,"data":{"sprite":"wall_left"}},{"x":0,"y":7,"data":{"sprite":"wall_left"}},{"x":0,"y":8,"data":{"sprite":"wall_left"}},{"x":0,"y":9,"data":{"sprite":"wall_left"}},{"x":0,"y":10,"data":{"sprite":"wall_left"}},{"x":0,"y":11,"data":{"sprite":"wall_left"}},{"x":0,"y":13,"data":{"sprite":"wall_left"}},{"x":0,"y":12,"data":{"sprite":"wall_left"}},{"x":0,"y":14,"data":{"sprite":"wall_left"}},{"x":2,"y":15,"data":{"sprite":"wall_bottom"}},{"x":0,"y":15,"data":{"sprite":"wall_corner_bottom_left"}},{"x":1,"y":15,"data":{"sprite":"wall_bottom"}},{"x":3,"y":15,"data":{"sprite":"wall_bottom"}},{"x":4,"y":15,"data":{"sprite":"wall_bottom"}},{"x":5,"y":15,"data":{"sprite":"wall_bottom"}},{"x":6,"y":15,"data":{"sprite":"wall_bottom"}},{"x":7,"y":15,"data":{"sprite":"wall_bottom"}},{"x":8,"y":15,"data":{"sprite":"wall_bottom"}},{"x":11,"y":15,"data":{"sprite":"wall_bottom"}},{"x":10,"y":15,"data":{"sprite":"wall_bottom"}},{"x":9,"y":15,"data":{"sprite":"wall_bottom"}},{"x":12,"y":15,"data":{"sprite":"wall_bottom"}},{"x":13,"y":15,"data":{"sprite":"wall_bottom"}},{"x":14,"y":15,"data":{"sprite":"wall_bottom"}},{"x":15,"y":15,"data":{"sprite":"wall_corner_bottom_right"}},{"x":15,"y":14,"data":{"sprite":"wall_right"}},{"x":15,"y":13,"data":{"sprite":"wall_right"}},{"x":15,"y":12,"data":{"sprite":"wall_right"}},{"x":15,"y":11,"data":{"sprite":"wall_right"}},{"x":15,"y":10,"data":{"sprite":"wall_right"}},{"x":15,"y":9,"data":{"sprite":"wall_right"}},{"x":15,"y":8,"data":{"sprite":"wall_right"}},{"x":15,"y":7,"data":{"sprite":"wall_right"}},{"x":15,"y":6,"data":{"sprite":"wall_right"}},{"x":15,"y":5,"data":{"sprite":"wall_right"}},{"x":15,"y":4,"data":{"sprite":"wall_right"}},{"x":15,"y":2,"data":{"sprite":"wall_right"}},{"x":15,"y":1,"data":{"sprite":"wall_right"}},{"x":15,"y":3,"data":{"sprite":"wall_right"}},{"x":2,"y":13,"data":{"sprite":"platform"}},{"x":3,"y":13,"data":{"sprite":"platform"}},{"x":4,"y":13,"data":{"sprite":"platform"}},{"x":5,"y":13,"data":{"sprite":"platform"}},{"x":6,"y":12,"data":{"sprite":"platform"}},{"x":7,"y":10,"data":{"sprite":"platform"}},{"x":8,"y":11,"data":{"sprite":"platform"}},{"x":9,"y":11,"data":{"sprite":"platform"}},{"x":9,"y":13,"data":{"sprite":"platform"}},{"x":10,"y":13,"data":{"sprite":"platform"}},{"x":12,"y":13,"data":{"sprite":"platform"}},{"x":13,"y":14,"data":{"sprite":"platform"}},{"x":11,"y":11,"data":{"sprite":"platform"}},{"x":10,"y":11,"data":{"sprite":"platform"}},{"x":6,"y":10,"data":{"sprite":"platform"}},{"x":5,"y":10,"data":{"sprite":"platform"}},{"x":3,"y":3,"data":{"sprite":"oxygen_bubble"}},{"x":3,"y":9,"data":{"sprite":"oxygen_bubble"}},{"x":14,"y":11,"data":{"sprite":"oxygen_bubble"}},{"x":10,"y":3,"data":{"sprite":"oxygen_bubble"}},{"x":9,"y":14,"data":{"sprite":"oxygen_bubble"}},{"x":7,"y":5,"data":{"sprite":"spike_ball"}},{"x":12,"y":14,"data":{"sprite":"platform"}},{"x":5,"y":2,"data":{"sprite":"spaceship_wrench"}},{"x":6,"y":2,"data":{"sprite":"spaceship_tank"}},{"x":7,"y":2,"data":{"sprite":"spaceship_computer"}},{"x":6,"y":0,"data":{"sprite":"wall_top"}},{"x":5,"y":4,"data":{"sprite":"door"}}]
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
        case 'platform':
          component = Platform.fromMapEntry(entry: entry);
          break;
        case 'barrel':
          component = Barrel.fromMapEntry(
            entry: entry,
          );
          break;
        case 'door':
          component = Portal.fromMapEntry(entry: entry);
          break;
        case 'oxygen_bubble':
          component = Bubble.fromMapEntry(entry: entry);
          break;
        case 'spike_ball':
          component = SpikeBall.fromMapEntry(entry: entry);
          break;
        case 'wall_corner_top_left':
          component = Wall.fromMapEntry(
            spriteName: 'wall_corner_top_left',
            entry: entry,
            wallDirection: WallDirection.top_left,
          );
          break;
        case 'wall_corner_top_right':
          component = Wall.fromMapEntry(
            spriteName: 'wall_corner_top_right',
            entry: entry,
            wallDirection: WallDirection.top_right,
          );
          break;
        case 'wall_corner_bottom_right':
          component = Wall.fromMapEntry(
            spriteName: 'wall_corner_bottom_right',
            entry: entry,
            wallDirection: WallDirection.bottom_right,
          );
          break;
        case 'wall_corner_bottom_left':
          component = Wall.fromMapEntry(
            spriteName: 'wall_corner_bottom_left',
            entry: entry,
            wallDirection: WallDirection.bottom_left,
          );
          break;
        case 'wall_left':
          component = Wall.fromMapEntry(
            spriteName: 'wall_left',
            entry: entry,
            wallDirection: WallDirection.left,
          );
          break;
        case 'wall_right':
          component = Wall.fromMapEntry(
            spriteName: 'wall_right',
            entry: entry,
            wallDirection: WallDirection.right,
          );
          break;
        case 'wall_top':
          component = Wall.fromMapEntry(
            spriteName: 'wall_top',
            entry: entry,
            wallDirection: WallDirection.top,
          );
          break;
        case 'wall_bottom':
          component = Wall.fromMapEntry(
            spriteName: 'wall_bottom',
            entry: entry,
            wallDirection: WallDirection.bottom,
          );
          break;
        case 'spaceship_wrench':
          component = SpaceshipItem.fromMapEntry(
            entry: entry,
            itemType: InventoryItemType.spaceshipWrench,
          );
          break;
        case 'spaceship_computer':
          component = SpaceshipItem.fromMapEntry(
            entry: entry,
            itemType: InventoryItemType.spaceshipComputer,
          );
          break;
        case 'spaceship_tank':
          component = SpaceshipItem.fromMapEntry(
            entry: entry,
            itemType: InventoryItemType.spaceshipFuelTank,
          );
          break;
        default:
          continue;
      }

      children.add(component);
    }

    return children;
  }
}
