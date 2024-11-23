#include "lenia/engine.hpp"
#include <iostream>

int main(void)
{
    Lenia::Core::Engine engine(1024, 1024, 10, Lenia::Core::Magma);
    while (engine.shouldRun())
        engine.update();

    return 0;
}