# RPI Basics

This repository serves as a reference for controlling basic components with a Raspberry Pi without relying on external libraries. It is designed to provide straightforward examples and code for interacting directly with hardware components.

## Directory Structure

- **build/**  
  Contains build files and compiled executables generated using the Makefile.

- **doc/**  
  Includes documentation related to the project, such as user manuals, architecture diagrams, and other technical references.

- **lib/**  
  Contains header files and any necessary internal libraries required for development and compilation.

- **src/**  
  Houses the main source code files used for implementing the various functionalities of the project.

- **test/**  
  Contains source code files used for testing individual components using the same header files.

- **Makefile**  
  A configuration file used to build the project. Each component has a dedicated build target, and a general target (`make`) is provided to compile the main program that tests all components.

---

## Supported Components

The repository includes examples and code for controlling the following components:

- **SG90 Servomotors**: Small and affordable servos commonly used in hobby projects.
- **Push Buttons**: Digital input for simple button press detection.
- **Generic GPIO Control**: Basic examples for reading from and writing to GPIO pins.

---

## Makefile Targets

The Makefile includes the following targets:

- **`make all`**: Builds the main program to test all supported components together.
- **`make sg90`**: Builds the program for controlling SG90 servomotors.
- **`make button`**: Builds the program for detecting push button presses.
- **`make gpio`**: Builds the program for general GPIO control.
- **`make clean`**: Removes all compiled files and build artifacts.

---

## Contact

For any questions or requests regarding this project, please contact the repository maintainer.
