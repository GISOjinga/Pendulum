# Pendulum Simulator in Roblox

## About

This project simulates a pendulum in Roblox using Lua/Luau. It defines a `Pendulum` class and uses object-oriented programming principles to manage the pendulum's state and rendering.

## Features

- Simulates a pendulum swing based on real-world physics.
- Utilizes the pendulum equation for accurate motion.
- Object-oriented design for easy extendability.
  
## Getting Started

1. **Download the Script**: Download the `PendulumObject.lua` script file into your Roblox Studio environment.

2. **Run the Script**: Use the example script to show how to create a pendulum object

3. **Observe the Pendulum**: The pendulum's position will be printed in the console as it swings back and forth.

## Usage

You can adjust the pendulum properties by changing the initial variables within the `PendulumObject` class constructor.

- `angle`: The initial angle of the pendulum in radians.
- `length`: The length of the pendulum.
- `gravity`: The acceleration due to gravity.
- `time_step`: The time interval for the simulation.
- `simulation_time`: The total time for the simulation.

## Code Explanation

- `Pendulum.new()`: Constructor to initialize a new Pendulum object.
- `Pendulum:updatePendulum()`: Updates the pendulum's state using the pendulum equation.
- `Pendulum:drawPendulum()`: Draws the pendulum in the console.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

MIT
