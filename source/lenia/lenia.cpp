#include "engine.hpp"
#include <iostream>

#define SEARCH_DEBUG

int main(void)
{
    Lenia::Engine engine(1024, 1024, 10, 100, Lenia::Magma);
    while (engine.shouldRun())
        engine.update();
    return 0;
}