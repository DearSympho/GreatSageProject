function love.load()
    print("hello world")
    print("Great Sage Project: Initialized.")
    
    -- Basic VN State
    state = {
        text = "LÖVE Web Build (v15) confirmed.\n\nGreat Sage Project: Monitoring active.\nCORS test server added to docs/web.",
        font = love.graphics.newFont(24)
    }
end

function love.draw()
    love.graphics.setFont(state.font)
    love.graphics.printf(state.text, 0, love.graphics.getHeight() / 2 - 12, love.graphics.getWidth(), "center")
end
