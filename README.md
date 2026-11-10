# Terminal Sliding Mode Control of a BLDC Motor

Joint final project for the **Nonlinear Control** course, K. N. Toosi University of Technology, by Hossein Mosaffa and Vahid Davoodpour.

## My contribution
<!-- Replace with the truth, e.g. which controllers you designed, which Simulink models you built, which report sections you wrote. -->
I was responsible for: ...
My partner was responsible for: ...

## Overview
This project simulates and compares several sliding mode control techniques applied to a Maxon 30 W brushless DC (BLDC) motor in MATLAB/Simulink. The full report (in Persian) is included in the repository.

## Control methods

**Ordinary sliding mode control (SMC).** A first-order method with a linear sliding surface. Discontinuous switching forces the state onto the surface. It is robust to uncertainty and disturbances but causes chattering (high-frequency oscillation of the control signal).

**Higher-order sliding mode control (HOSMC).** Acts on higher derivatives of the sliding variable, for example the super-twisting algorithm. It keeps the robustness of ordinary SMC and reduces chattering, giving smoother control signals.

**Terminal sliding mode control (TSMC).** Uses a nonlinear sliding surface that gives finite-time convergence.
- *Basic (singular) TSMC:* the classic terminal surface, which can produce a singularity in the control signal in some regions of the state space.
- *Nonsingular TSMC:* a redesigned surface that avoids the singularity and keeps finite-time convergence.

## Repository contents
- `report/hosseinmosafa9719814_vahiddavoodpour9708814.pdf` and `.docx`: project report (Persian)
- `docs/maxon_30W_BLDC_datasheet.pdf`: motor datasheet
- `simulink/ordinary_sliding_mode.mdl`
- `simulink/higher_order_sliding.slx`
- `simulink/Terminal_smc_first_method.slx`
- `simulink/Terminal_smc_second_method.slx`
- `simulink/parameters.m`: motor and controller parameters
- `results/`: simulation figures

## Requirements
MATLAB with Simulink. Add your MATLAB release here, for example R2021a, since `.slx` files may not open in much older versions.

## Usage
1. Open MATLAB and set the `simulink/` folder as the current folder.
2. Run `parameters.m` to load the parameters into the workspace.
3. Open the model you want and press Run.

## Results
Add figures here, such as speed tracking and control signal for each method, with a one-line caption each.
