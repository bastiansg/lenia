# Lenia

This project is based on Lenia, the continuous cellular automaton created by Bert Wang-Chak Chan. If you are looking for the original system, the best starting points are Chan's official Lenia page and the paper *Lenia: Biology of Artificial Life*.

Lenia is a smooth, continuous variant of cellular automata. Instead of hard binary cells and rigid update rules, it evolves floating-point fields through a differentiable growth rule and a radial interaction kernel, producing persistent moving patterns that often look surprisingly lifelike.

This repository is an interactive real-time Lenia application written in C++, CUDA, and OpenGL. It takes the original Lenia idea and pushes it toward direct manipulation: you can load cataloged creatures, switch between species, draw into the world, stamp organisms into the field, and actively steer an animal by applying asymmetric perturbations while it moves.

## What This Project Does

This implementation focuses on treating Lenia creatures less like passive simulations and more like controllable agents inside a responsive GPU application.

- Loads a large library of Lenia animals from [resources/animals_dim.csv](resources/animals_dim.csv)
- Builds each creature from its encoded pattern, kernel parameters, and taxonomy metadata
- Runs the simulation on a 1024x1024 field in real time
- Lets you cycle through animals, resize them, reset the world, and inspect live stats
- Supports direct editing with circular drawing and stencil placement modes
- Includes a control mode that uses the creature's direction of motion and center of mass so you can nudge it left or right while it is swimming across the toroidal world

In practice, that means this repo sits somewhere between an artificial life viewer, a sandbox, and a small experimental control interface for Lenia organisms.

## Interaction Model

The current application is keyboard-and-mouse driven and built around immediate visual feedback.

- `Left` / `Right`: switch to the previous or next animal
- `C`: toggle control mode
- `Left` / `Right` in control mode: steer the current animal by injecting mass beside its movement direction
- `Up` / `Down`: change simulation scale
- `R`: reset the current organism
- `P`: pause or resume
- `D`: circular draw mode
- `Q`: stencil placement mode using the selected animal
- Mouse wheel in draw mode: adjust draw radius
- Left mouse button: add cells
- Right mouse button: erase cells in circle mode
- `I`: show runtime stats and kernel previews
- `B`, `G`, `M`: toggle bounding boxes, grid, and center-of-mass overlays

The steering behavior is the distinctive part. The simulation continuously tracks center of mass and heading, then uses that direction vector to place perturbations to the left or right of the animal. Instead of issuing a symbolic command, you "push" the creature through its own dynamics.

## Technical Overview

The project is built to keep almost all heavy work on the GPU.

### CUDA

CUDA handles the simulation core.

- The simulation state is stored in GPU-side buffers and updated every frame
- Convolution is performed with cuFFT rather than direct spatial convolution, which keeps large-kernel Lenia updates practical on a 1024x1024 field
- A custom CUDA kernel applies the post-FFT update step, combines the inverse transform with the Lenia growth function, and writes the next state back into the simulation field
- The code also computes motion-related statistics such as mass and toroidal center of mass so the application can expose live control and diagnostics

The important design choice here is frequency-domain evolution: instead of looping over every cell and every kernel sample in the spatial domain, the code transforms the field once, multiplies by the precomputed organism kernel spectrum, and transforms back.

### OpenGL

OpenGL is used as both presentation layer and GPU data bridge.

- The field is backed by shader storage buffer objects and rendered directly through the graphics pipeline
- GLFW, GLAD, and ImGui provide the window, context, input handling, and overlay UI
- OpenGL textures are also used to preview the organism mask, padded kernel, and FFT magnitude in the interface
- CUDA/OpenGL interop lets the renderer and simulation share buffers without round-tripping field data through the CPU every frame

That interop path is what keeps the app responsive. The simulation writes GPU memory that the renderer can immediately visualize, so rendering the world is mostly a matter of drawing a fullscreen quad and overlaying UI.

### Thrust

Thrust is used to express high-throughput GPU transforms and reductions cleanly.

- It converts host-side floating-point buffers into complex GPU buffers for FFT input
- It builds the precomputed FFT representation of each animal kernel
- It applies pointwise transforms on device memory during field updates and edit operations such as circular drawing
- It performs transform-reduce passes that summarize each frame into higher-level data like mass, bounding information, and toroidal moments

This is a good fit for Lenia because a lot of the work is data-parallel but not especially complicated. Thrust keeps those operations short and readable while still compiling down to efficient GPU execution.

### Why It Is Fast

The performance story comes from combining these pieces rather than relying on any single library.

- CUDA performs the numerical update on device memory
- cuFFT turns wide Lenia convolutions into efficient frequency-domain multiplications
- Thrust handles the elementwise transforms and reductions that would otherwise become custom kernels or CPU bottlenecks
- OpenGL renders directly from shared GPU buffers
- The CPU mainly orchestrates input, UI, and resource setup instead of touching the full simulation grid every frame

That architecture is what makes this project feel interactive instead of batch-oriented.

## Build Notes

This is a CMake project configured for C++20 and CUDA.

Requirements:

- A CUDA-capable NVIDIA GPU
- CUDA Toolkit with cuFFT
- CMake 3.24+
- A C++20 compiler
- OpenGL drivers on the host system

On Windows with Visual Studio and CMake, a typical flow is:

```powershell
cmake -S . -B build
cmake --build build --config Release
.\build\Release\lenia.exe
```

The current CMake configuration targets CUDA architecture `89`, so you may need to adjust that if you are building on older hardware.

## Credits And Original Material

This project builds on the original Lenia work by Bert Wang-Chak Chan.

- Official Lenia page: <https://chakazul.github.io/lenia.html>
- Original paper: Bert Wang-Chak Chan, *Lenia: Biology of Artificial Life*, Complex Systems 28(3), 2019. <https://arxiv.org/abs/1812.05433>
- Original Lenia code and demos: <https://github.com/Chakazul/Lenia>

If you use this repository publicly, it is worth citing Chan's work directly because the taxonomy, underlying formulation, and broader artificial-life context all originate there.