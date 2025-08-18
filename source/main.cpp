#include <tme/tme.hpp>

int main() {
  TME::CoreEngine pCraftus;
  pCraftus.Run();
  pCraftus.~CoreEngine();
}