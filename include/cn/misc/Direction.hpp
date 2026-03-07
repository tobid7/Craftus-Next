#pragma once

#include <palladium>

namespace CN {
class Direction {
 public:
  enum Axis {
    X,
    Y,
    Z,
  };
  enum Dir {
    West,
    East,
    Bottom,
    Top,
    North,
    South,
    Invalid,
  };
  Direction() {}
  Direction(Dir dir) : pDir(dir) {}
  ~Direction() {}

  operator Dir() const { return pDir; }

  static Direction Opposite(Dir dir) {
    return Direction((Dir)((dir % 2 == 0) ? dir + 1 : dir - 1));
  }
  Direction Opposite() {
    return Direction((Dir)((pDir % 2 == 0) ? pDir + 1 : pDir - 1));
  }
  PD::fvec3 ToOffset() {
    switch (pDir) {
      case West:
        return PD::fvec3(-1, 0, 0);
        break;
      case East:
        return PD::fvec3(1, 0, 0);
        break;
      case Bottom:
        return PD::fvec3(0, -1, 0);
        break;
      case Top:
        return PD::fvec3(0, 1, 0);
        break;
      case North:
        return PD::fvec3(0, 0, -1);
        break;
      case South:
        return PD::fvec3(0, 0, 1);
        break;

      default:
        return 0;
        break;
    }
  }
  static Axis ToAxis(const Direction& dir) {
    switch (dir) {
      case West:
      case East:
        return X;
      case Bottom:
      case Top:
        return Y;
      case North:
      case South:
        return Z;
      default:
        return X;
        break;
    }
  }

  Dir pDir = Invalid;
};
}  // namespace CN

typedef enum {
  Direction_West,
  Direction_East,
  Direction_Bottom,
  Direction_Top,
  Direction_North,
  Direction_South,
  Direction_Invalid
} Direction;

typedef enum { Axis_X, Axis_Y, Axis_Z } Axis;

extern int DirectionToOffset[7][3];
extern Direction DirectionOpposite[7];
extern Axis DirectionToAxis[7];

int DirectionToOffset[7][3] = {{-1, 0, 0}, {1, 0, 0}, {0, -1, 0}, {0, 1, 0},
                               {0, 0, -1}, {0, 0, 1}, {0, 0, 0}};
Axis DirectionToAxis[7] = {Axis_X, Axis_X, Axis_Y, Axis_Y,
                           Axis_Z, Axis_Z, Axis_X};