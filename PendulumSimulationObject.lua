--!strict
--[[
    About: This class will define a pendulum object and its behavior in Roblox
]]

-->> pendulum Class
local pendulum = {}
pendulum.__index = pendulum



-->> pendulum Constructor
function pendulum.new()
    local self = setmetatable({}, pendulum)
    
    -->> Initial Variables
    self.angle = math.pi / 4  -- starting angle in radians
    self.angular_velocity = 0  -- starting angular velocity
    self.gravity = 9.81  -- acceleration due to gravity
    self.length = 1  -- length of pendulum arm
    self.time_step = 0.1  -- time step for simulation
    self.simulation_time = 10  -- total simulation time
    
    -->> Return pendulum Object
    return self
end



-->> This method updates the pendulum's state
function pendulum:updatePendulum()
    local angular_acceleration = -self.gravity / self.length * math.sin(self.angle)  -- Calculate the angular acceleration using the pendulum equation
    
    -->> Update angular velocity and the angle
    self.angular_velocity = self.angular_velocity + angular_acceleration * self.time_step -- Update angular velocity using angular acceleration and time step
    self.angle = self.angle + self.angular_velocity * self.time_step -- Update angle using angular velocity and time step
    
    -->> Return updated angle and angular velocity
    return self.angle
end



-->> This method draws the pendulum
function pendulum:drawPendulum()
    local position = math.floor(20 * math.sin(self.angle) + 20)  -- Calculate the position of the pendulum bob
    local line = string.rep(" ", position) .. "O"  -- Create the line to draw the pendulum bob
    
    -->> Draw the pendulum
    print(line)
end



-->> Return pendulum Class
return pendulum
