#pragma once

#include <palladium>

namespace CN {
class ItemStack {
 public:
  ItemStack() {
    pAmount = 0;
    pBlock = 0;
    pMeta = 0;
  }

  ItemStack(PD::u16 b, PD::u8 m, PD::u8 n) {
    pAmount = n;
    pBlock = b;
    pMeta = m;
  }

  bool Empty() const { return !pAmount; }
  void Transfer(ItemStack* dst) {
    if ((pBlock == dst->pBlock && pMeta == dst->pMeta) || !dst->pAmount) {
      int n = std::min<PD::u8>(pAmount, 64 - dst->pAmount);
      pAmount -= n;
      dst->pAmount += n;
      dst->pBlock = pBlock;
      dst->pMeta = pMeta;
    }
    ItemStack tmp = *this;
    *this = *dst;
    *dst = tmp;
  }

  PD::u16 pBlock;
  PD::u8 pMeta;
  PD::u8 pAmount;
};
}  // namespace CN