# Lenia

<p align="center">
	<video src="resources/lenia_showcase.mp4" muted playsinline autoplay width="40%"></video>
</p>

This project is based on Lenia, the continuous cellular automaton created by Bert Wang-Chak Chan. The original description can be found in the paper _Lenia: Biology of Artificial Life_.
Chan also has his own Python implementation, which you should check out: https://github.com/Chakazul/Lenia

Lenia is a smooth, continuous variant of cellular automata. Instead of hard binary cells and rigid update rules, it evolves floating-point fields through a differentiable growth rule and a radial interaction kernel, producing persistent moving patterns that often look surprisingly lifelike.

This project is an interactive real-time Lenia application written in C++, CUDA, and OpenGL. It turns Lenia into an interactable simulation: you can load cataloged creatures, switch between species, draw into the world, stamp organisms into the field, and actively steer an animal by applying asymmetric perturbations while it moves.

## Example Animals

<p align="center">
<table>
	<tr>
		<th style="font-size:20px">Name</th>
		<th style="font-size:20px">Video</th>
	</tr>
	<tr>
		<td style="font-size:20px">Orbium Unicaudatus (Controlled via Keyboard)</td>
		<td><video src="resources/control.mp4"  muted playsinline autoplay width="360"></video></td>
	</tr>
	<tr>
		<td style="font-size:20px">Aurokronium Cavus</td>
		<td><video src="resources/aurokronium_cavus.mp4"  muted playsinline autoplay width="360"></video></td>
	</tr>
	<tr>
		<td style="font-size:20px">Decahelicium</td>
		<td><video src="resources/Decahelicium.mp4"  muted playsinline autoplay width="360"></video></td>
	</tr>
	<tr>
		<td style="font-size:20px">Decapteryx Arcus Labens</td>
		<td><video src="resources/decapteryx_arcus_labens.mp4"  muted playsinline autoplay width="360"></video></td>
	</tr>
	<tr>
		<td style="font-size:20px">Pentacaudokronium Cavus</td>
		<td><video src="resources/pentacaudokronium_cavus.mp4"  muted playsinline autoplay width="360"></video></td>
	</tr>
	<tr>
		<td style="font-size:20px">Pentaquadrium Metamorpha</td>
		<td><video src="resources/pentaquadrium_metamorpha.mp4"  muted playsinline autoplay width="360"></video></td>
	</tr>
	<tr>
		<td style="font-size:20px">Pentaurium Perlongus</td>
		<td><video src="resources/pentaurium_perlongus.mp4"  muted playsinline autoplay width="360"></video></td>
	</tr>
</table>
</p>

## What This Project Does

This implementation focuses on treating Lenia creatures less like passive simulations and more like controllable agents inside a responsive GPU application.

- Loads a large library of Lenia animals from [resources/animals_dim.csv](resources/animals_dim.csv) (These are collected from the original project)
- Builds each creature from its encoded pattern, kernel parameters, and taxonomy metadata
- Runs the simulation on a 1024x1024 field in real time
- Lets you cycle through animals, resize them, reset the world, and inspect live stats
- Supports direct editing with circular drawing and stencil placement modes
- Includes a control mode that uses the creature's direction of motion and center of mass so you can nudge it left or right while it is swimming across the toroidal world

## Interaction Model

The current application is keyboard-and-mouse driven and built around immediate visual feedback.

- `Left` / `Right` in normal mode: switch to the previous or next animal
- `C`: toggle control mode
- `Left` / `Right` in control mode: steer the current animal by injecting "zero"-mass orthogonal to its current movement vector
- `Up` / `Down`: change simulation scale (thanks to FFT, this is O(n log n), and not O(n^2), like in a traditional convolution)
- `R`: reset the current organism
- `P`: pause or resume
- `D`: circular draw mode
- `Q`: stencil placement mode using the selected animal
- Mouse wheel in draw mode: adjust draw radius
- Left mouse button: add cells
- Right mouse button: erase cells in circle mode
- `I`: show runtime stats and kernel previews
- `B`, `G`, `M`: toggle bounding boxes, grid, and center-of-mass overlays

The steering behavior is the distinctive part. The simulation continuously tracks center of mass and heading, then uses that direction vector to place perturbations to the left or right of the animal.

## Technical Overview

The project is built to keep almost all heavy work on the GPU.

### CUDA

CUDA handles the simulation core.

- The simulation state is stored in GPU-side buffers and updated every frame. These buffers are shared between OpenGL and CUDA.
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

## Mathmatical Background

## 1. Forward FFT of the field

The spatial field is transformed into frequency space.

$$
\hat{F}_t(k_x,k_y) =
\mathcal{F}\left\{F_t(x,y)\right\}
$$

## 2. Convolution in frequency domain

Using the convolution theorem, convolution becomes elementwise multiplication.

$$
\hat{G}(k_x,k_y) =
\hat{F}_t(k_x,k_y)\,\hat{K}(k_x,k_y)
$$

Note that $\hat{K}$ may be different for each animal.

## 3. Inverse FFT (back to spatial domain)

The filtered field is reconstructed via inverse transform.

$$
G(x,y) =
\mathcal{F}^{-1}\left\{\hat{G}(k_x,k_y)\right\}
$$

This corresponds to the spatial convolution

$$
G = F_t * K
$$

where $*$ is the convolution operator.

## 4. FFT shift and normalization

The result is normalized and shifted so the kernel center aligns with the grid center. If this weren't done, the image quadrants after the inverse FFT
would be arranged incorrectly. This can be seen in the Python example below, in the top-right corner.

$$
\tilde{G}(x,y) =
\operatorname{fftshift}\!\left(
\frac{1}{N}\,G(x,y)
\right)
$$

where $N$ is the number of grid cells.

## 5. Lenia growth function

Lenia applies a Gaussian growth rule.

$$
\begin{align}
\alpha(x,y) &= \max\!\left(0,\;1-\frac{\bigl(\tilde{G}(x,y)-\mu\bigr)^2}{9\sigma^2}\right) \\[6pt]
H(x,y) &= 2\,\alpha(x,y)^4 - 1 \\[6pt]
\end{align}


$$

Where $\mu$ and $\sigma$ are animal-specific constants.

## 6. Time integration

The field evolves using explicit Euler integration.

$$
F_{t+\Delta t}(x,y) =
\operatorname{clip}(F_t(x,y) + \Delta t \, H(x,y), 0, 1)
$$

Note: $\Delta t$ is usually a time constant. But in this simulation, $\Delta t$ is used to ensure the simulation updates in reasonable time intervals. Because we can reach framerates of over 1000FPS, $\Delta t$ needs to be set so that the simulation doesn't update too fast.

## 7. Layer statistics

Let the simulation domain be

$$
\Omega \subset \mathbb{R}^2
$$

After the field update, the code computes one set of summary statistics over the entire simulation domain rather than splitting the world into quadrants.

### Mass

$$
M =
\sum_{(x,y)\in \Omega}
F_{t+\Delta t}(x,y)
$$

### Linear first moment

Before applying toroidal correction, the code accumulates the ordinary mass-weighted position sum

$$
\mathbf{m}_{\mathrm{lin}} =
\sum_{(x,y)\in \Omega}
\begin{pmatrix}x \\ y\end{pmatrix}
F_{t+\Delta t}(x,y)
$$

and the corresponding linear center of mass is

$$
\mathbf{c}_{\mathrm{lin}} =
\frac{\mathbf{m}_{\mathrm{lin}}}{M}
$$

### Toroidal moments

Because the world wraps, the final center of mass is reconstructed from circular moments on each axis.

For a world of width $W$ and height $H$,

$$
\alpha_x = \tau \frac{x}{W},
\qquad
\alpha_y = \tau \frac{y}{H}
$$

with $\tau = 2\pi$.

The code accumulates

$$
C_x =
\sum_{(x,y)\in \Omega}
\cos(\alpha_x)\,F_{t+\Delta t}(x,y),
\qquad
S_x =
\sum_{(x,y)\in \Omega}
\sin(\alpha_x)\,F_{t+\Delta t}(x,y)
$$

$$
C_y =
\sum_{(x,y)\in \Omega}
\cos(\alpha_y)\,F_{t+\Delta t}(x,y),
\qquad
S_y =
\sum_{(x,y)\in \Omega}
\sin(\alpha_y)\,F_{t+\Delta t}(x,y)
$$

The wrapped center-of-mass coordinates are then recovered from

$$
\phi_x = \operatorname{atan2}(S_x, C_x),
\qquad
\phi_y = \operatorname{atan2}(S_y, C_y)
$$

mapping each angle back into the coordinate domain:

$$
c_x = \operatorname{wrap}\!\left(\frac{\phi_x}{\tau} W,\; W\right),
\qquad
c_y = \operatorname{wrap}\!\left(\frac{\phi_y}{\tau} H,\; H\right)
$$

If the toroidal moment is numerically too small, the implementation falls back to the linear center of mass.

### Bounding box

$$
B =
\operatorname{bbox}\!\left(
\{(x,y)\in \Omega \mid F_{t+\Delta t}(x,y) > 0\}
\right)
$$

---

## 8. Final layer summary

The resulting layer summary is therefore

$$
\text{LayerInfo} =
\left(
B,\;
M,\;
\mathbf{c},\;
\mathbf{C},\;
\mathbf{S}
\right)
$$

where

$$
\mathbf{c} =
\begin{pmatrix}
c_x \\
c_y
\end{pmatrix},
\qquad
\mathbf{C} =
\begin{pmatrix}
C_x \\
C_y
\end{pmatrix},
\qquad
\mathbf{S} =
\begin{pmatrix}
S_x \\
S_y
\end{pmatrix}
$$

---

## Overall update rule

The full update implemented by the CUDA path is

$$
\hat{F}_t = \mathcal{F}(F_t)
$$

$$
\hat{G} = \hat{F}_t \,\hat{K}
$$

$$
	ilde{G} =
\operatorname{fftshift}\!\left(
\frac{1}{N}\,
\mathcal{F}^{-1}(\hat{G})
\right)
$$

$$
H(x,y) =
2\,
\max\!\left(
0,\;
1-\frac{\bigl(\tilde{G}(x,y)-\mu\bigr)^2}{9\sigma^2}
\right)^4
-1
$$

$$
F_{t+\Delta t}(x,y) =
\operatorname{clip}\!\left(
F_t(x,y) + \Delta t\,H(x,y),
0,
1
\right)
$$

## Python Experiments

Before moving everything into CUDA, I used [resources/fft_numba.py](resources/fft_numba.py) to prototype the FFT pipeline and generate quick Matplotlib-based debug animations. That was substantially easier to inspect than debugging the same ideas inside CUDA kernels, and it helped validate padding, FFT multiplication, inverse transforms, and shift behavior before porting them to the GPU implementation.

<p align="center">
<video src="resources/videos/wall.mp4" muted autoplay playsinline width="50%"></video>
</p>

### Thrust

Thrust is used to express high-throughput GPU transforms and reductions cleanly.

- It converts host-side floating-point buffers into complex GPU buffers for FFT input
- It builds the precomputed FFT representation of each animal kernel
- It applies pointwise transforms on device memory during field updates and edit operations such as circular drawing
- It performs transform-reduce passes that summarize each frame into higher-level data like mass, bounding information, and toroidal moments

This is a good fit for Lenia because a lot of the work is data-parallel but not especially complicated.

### Why It Is Fast

- CUDA performs the numerical update on device memory
- cuFFT turns wide Lenia convolutions into efficient frequency-domain multiplications
- Thrust handles the elementwise transforms and reductions that would otherwise become custom kernels or CPU bottlenecks
- OpenGL renders directly from shared GPU buffers
- The CPU mainly orchestrates input, UI, and resource setup instead of touching the full simulation grid every frame

That architecture is what makes this project feel interactive instead of batch-oriented.

## Build Notes

This is a CMake project configured for C++20 and CUDA.

Requirements:

- A CUDA-capable NVIDIA GPU (>= CUDA Version 89, tested on a 4070Ti)
- CUDA Toolkit with cuFFT
- CMake 3.24+
- A C++20 compiler (tested on Microsoft's CL)
- OpenGL drivers on the host system

On Windows with Visual Studio and CMake, a typical flow is:

```powershell
cmake -S . -B build
cmake --build build --config Release
.\build\Release\lenia.exe
```

## Credits And Original Material

This project builds on the original Lenia work by Bert Wang-Chak Chan.

- Official Lenia page: <https://chakazul.github.io/lenia.html>
- Original paper: Bert Wang-Chak Chan, _Lenia: Biology of Artificial Life_, Complex Systems 28(3), 2019. <https://arxiv.org/abs/1812.05433>
- Original Lenia code and demos: <https://github.com/Chakazul/Lenia>
