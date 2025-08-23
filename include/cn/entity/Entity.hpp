#pragma once

#include <palladium>

namespace TME {
/**
 * Entity class contains generic data
 * that maybe all entitys use.
 * Its is basically a baseclass for the rest
 */
class Entity {
 public:
  Entity() {}
  ~Entity() {}

  PD::fvec3 pPos;
  PD::fvec2 pRot;
  bool pOnGround;
  bool pJumping;
  // Only player variables (maybe get moved)
  bool pSprinting;
  bool pFlying;
  bool pCrouching;
  PD::fvec3 pView;
  /** Maybe move to Physics */
  PD::fvec3 pVelocity;
  float pSimStepAccum;  // ?

  PD::u8 pHp;
  PD::u8 pArmor;
  PD::u8 pOxygen;
};
}  // namespace TME