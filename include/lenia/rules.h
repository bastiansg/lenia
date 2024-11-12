#pragma once
#include "gl_setup.hpp"
namespace Lenia {
    typedef struct Rule {
        u8 born;
        u8 survive;
        //float spawnProbability;
    } Rule;

    // typedef struct AnimalParams {
    //     f64 R;
    //     f64 T;
    //     f64 *beta;
    //     f64 mu;
    //     f64 sigma;
    //     f64 kn;
    //     f64 gn;
    // } AnimalParams;

    // typedef struct Animal {
    //     u32 W;
    //     u32 H;
    //     char *code;
    //     char *class;
    //     char *order;
    //     char *family;
    //     char *subfamily;
    //     char *full_name;
    //     AnimalParams *params;
    //     f64* cells;
    // } Animal;

    u32 pack_rule(Rule rule) {
        return (u32)(rule.born << 8 | rule.survive);
    }

    const Rule GameOfLife = {
        0b00000100,
        0b00000110
    };

    const Rule Anneal = {
        0b11101000,
        0b11110100
    };

    const Rule Diamoebae = {
        0b11110100,
        0b11110000
    };

    const Rule DayAndNight = {
        0b11100100,
        0b11101100
    };

    const Rule Flock = {
        0b00000100,
        0b00000011
    };

    const Rule Iceballs = {
        0b11110010,
        0b11110000
    };

    const Rule Coral = {
        0b00000100,
        0b11111000
    };

    const Rule Assimilation = {
        0b00011100,
        0b11110001
    };

    const Rule Bacteria = {
        0b00001100,
        0b00111000
    };

    const Rule Shrinking = {
        52,
        204
    };

    const Rule Static = {
        8,
        249
    };

    const Rule Star = {
        130,
        19
    };

    const Rule Void = {
        216,
        143
    };

    const Rule Collapse = {
        244,
        88
    };

    const Rule Crystals = {
        103,
        32
    };
}