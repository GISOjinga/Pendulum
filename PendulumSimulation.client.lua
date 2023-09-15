--!strict
--[[
    About: This script will call upon the PendulumSimulationObject and create the pendulum simulation
]]

-->> modules
local pendulum = require(script.Parent.PendulumSimulationObject)


-->> Create a pendulum object
local myPendulum = pendulum.new()

-->> Loop through time to update pendulum's state and draw it
for _ = 0, myPendulum.simulation_time, myPendulum.time_step do

	-->> updates and draws the pendulum
    myPendulum:updatePendulum() -- Update pendulum's state
    myPendulum:drawPendulum() -- Draw pendulum using the new angle
    
    -->> Wait for the next frame
    task.wait(myPendulum.time_step)  
end
