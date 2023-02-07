#!/bin/bash

find . -name '*.h' -o -name '*.hpp' -o -name '*.hh' -o -name '*.ino' -o -name '*.cpp' -o -name '*.c' -o -name '*.cxx' -o -name '*.inl' | while read file; do
  if [[ "$file" != *"json.hpp" ]]; then
    echo "Formatting $file..."
    clang-format -i --style=LLVM $file
  fi
done
