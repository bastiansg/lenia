#include "engine.hpp"
#include <iostream>

#define SEARCH_DEBUG



int main(void)
{
    Lenia::Engine engine(32, 32, 1, Lenia::Magma);
    while (engine.shouldRun())
        engine.update();
    return 0;
}