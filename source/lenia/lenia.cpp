#include "engine.hpp"
#include <iostream>

#define SEARCH_DEBUG

int main(void)
{
    Lenia::Engine engine(1600, 900, 4096, 4096, 10, 0.1f);
    while (engine.shouldRun())
        engine.update();
    return 0;
}