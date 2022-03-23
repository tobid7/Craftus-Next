# 0 "/home/tobi/Dokumente/Craftus-Next/source/world/Direction.c"
# 1 "/home/tobi/Dokumente/Craftus-Next/build//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/home/tobi/Dokumente/Craftus-Next/source/world/Direction.c"
# 1 "/home/tobi/Dokumente/Craftus-Next/include/world/Direction.h" 1
       

typedef enum {
    Direction_West,
    Direction_East,
    Direction_Bottom,
    Direction_Top,
    Direction_North,
    Direction_South,
    Direction_Invalid
} Direction;

typedef enum {
    Axis_X,
    Axis_Y,
    Axis_Z
}Axis;

extern int DirectionToOffset[7][3];
extern Direction DirectionOpposite[7];
extern Axis DirectionToAxis[7];
# 2 "/home/tobi/Dokumente/Craftus-Next/source/world/Direction.c" 2

int DirectionToOffset[7][3] = {{-1, 0, 0}, {1, 0, 0}, {0, -1, 0}, {0, 1, 0}, {0, 0, -1}, {0, 0, 1}, {0, 0, 0}};
Direction DirectionOpposite[7] = {Direction_East, Direction_West, Direction_Top, Direction_Bottom, Direction_South, Direction_North, Direction_Invalid};
Axis DirectionToAxis[7] = {Axis_X, Axis_X, Axis_Y, Axis_Y, Axis_Z, Axis_Z, Axis_X};
