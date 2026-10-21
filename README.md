# ModusToolbox™ Machine Learning ExecuTorch Asset

## Overview

The ml-executorch asset provides the ExecuTorch runtime integration for Infineon PSOC™ Edge microcontrollers.

It packages the embedded inference libraries, headers, and source files required to run PyTorch ExecuTorch models on target devices.

This asset is intended to be used together with the ModusToolbox™ ML Middleware Library, which exposes the application-facing APIs.

## What is Provided

* Pre-compiled .a object archives for:
    - ExecuTorch core runtime
    - ARM CMSIS-NN kernel library
    - ExecuTorch extension runner
    - ARM Ethos-U Backend Delegate
    - ExecuTorch Portable Kernels
* Source files required for ARM Cortex-M targets
    - ARM Memory Allocator (`source/COMPONENT_ML_EXECUTORCH/arm_memory_allocator.cpp`)
    - ARM Ethos-U Backend Delegate (`source/COMPONENT_ML_EXECUTORCH/EthosUBackend.cpp`)
    - ARM Vela Command Stream Parser (`source/COMPONENT_ML_EXECUTORCH/VelaBinStream.cpp`)
* ExecuTorch Header files
* ModusToolbox Build Configuration (`library.mk`)

## Requirements

* [ModusToolbox™ software](https://www.infineon.com/design-resources/development-tools/sdk/modustoolbox-software) v3.8 or greater
* ModusToolbox™ ML Middleware Library v3.5.0 or greater
* ModusToolbox™ ML CoreTools v3.4.0 or greater for model export/generation flows
* Programming Languages: C, C++
* Associated Parts: See "Supported Device Family" section below.

## Supported Device Family

* [PSOC™ Edge](https://www.infineon.com/cms/en/product/microcontroller/32-bit-psoc-arm-cortex-microcontroller/32-bit-psoc-edge-arm/)

## Supported Toolchains

* GNU Arm® Embedded Compiler 14.2 (`GCC_ARM`)

## Quick Start

The ml-executorch asset is available as a ModusToolbox™ asset. Use the following GitHub link: [https://github.com/infineon/ml-executorch](https://github.com/infineon/ml-executorch).

You can add a dependency file (MTB format) under the `deps` folder or use the Library Manager to add it to your application. It is available under Library > Machine Learning > ml-executorch.

This library can be configured using the following options:

**Required**

- `COMPONENTS+=ML_EXECUTORCH`: Include ExecuTorch sources in build

**Optional**

- `DEFINES+=ET_LOG_DISABLED`:  Suppress ExecuTorch logging information entirely
- `DEFINES+=ET_MIN_LOG_LEVEL=<level>`: Log level used by ExecuTorch interpreter, where `<level>` is one one of: `Fatal`, `Error`, `Info`, `Debug`. Has no effect when `ET_LOG_DISABLED` is provided.

### Adding the asset

The asset can be added to a project in either of the following ways:

* add a dependency file (MTB format) into the `deps` folder;
* use the Library Manager. It is available under Libraries > Machine Learning > ml-executorch.

### Using the asset

1. Add both `ml-executorch` and `ml-middleware` to the application.
2. Select the ExecuTorch backend in the middleware integration (`COMPONENT_ML_EXECUTORCH`).
3. Generate ExecuTorch-compatible model artifacts with ML CoreTools and include the generated model and data files expected by the middleware integration.
4. Build the application against the middleware APIs that wrap the ExecuTorch runtime.

Refer to the ml-middleware documentation for the application-facing model initialization, execution, and data-streaming APIs.

## Licensing

The packaged ExecuTorch baseline is licensed under the BSD-style license included in [LICENSE](./LICENSE).

This asset also contains or references third-party software in the bundled upstream tree under `executorch/`. Those third-party components remain governed by their own applicable licenses. Review the license files shipped in the relevant subdirectories and the release package notices when preparing a distribution.

## More information

* [ExecuTorch Asset Release Notes](./RELEASE.md)
* [ModusToolbox™ Machine Learning Design Support](https://www.infineon.com/cms/en/design-support/tools/sdk/modustoolbox-software/modustoolbox-machine-learning/)
* [ModusToolbox™ ML Middleware Library](../ml-middleware/README.md)
* [Upstream ExecuTorch Project](https://github.com/pytorch/executorch)
* [Infineon Technologies AG](https://www.infineon.com)

---
© 2026, Infineon Technologies AG or an affiliate of Infineon Technologies AG.
