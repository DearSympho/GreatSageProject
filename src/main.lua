function love.load()
    print("hello world")
    print("Great Sage Project: Initialized.")
    
    -- Basic VN State
    state = {
        text = "LÖVE Web Build (v19) confirmed.\n\nGreat Sage Project: Monitoring active.\nStatus: Ready for Tasking.\n\n[Version 0.1.6]",
        font = love.graphics.newFont(24)
    }
end

function love.draw()
    love.graphics.setFont(state.font)
    love.graphics.printf(state.text, 0, love.graphics.getHeight() / 2 - 12, love.graphics.getWidth(), "center")
end