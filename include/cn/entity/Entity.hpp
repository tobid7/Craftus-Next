#pragma once

#include <palladium>

namespace CN {
/**
 * Entity class contains generic data
 * that maybe all entitys use.
 * Its is basically a baseclass for the rest
 */
class Entity {
 public:
  Entity() {}
  ~Entity() {}

  bool IsOnGround() const { return pOnGround; }
  bool IsJumping() const { return pJumping; }

  PD::fvec3 pPos;
  PD::fvec2 pRot;
  bool pOnGround;
  bool pJumping;

  PD::fvec3 pView;
  /** Maybe move to Physics */
  PD::fvec3 pVelocity;
  float pSimStepAccum;  // ?

  PD::u8 pHp;
  PD::u8 pArmor;
  PD::u8 pOxygen;
};
}  // namespace CN