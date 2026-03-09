function love.load()
    print("hello world")
    print("Great Sage Project: Initialized.")
    
    -- Basic VN State
    state = {
        text = "The Python web server has been initiated.\n\nGreat Sage Project: Ready for testing.",
        font = love.graphics.newFont(24)
    }
end

function love.draw()
    love.graphics.setFont(state.font)
    love.graphics.printf(state.text, 0, love.graphics.getHeight() / 2 - 12, love.graphics.getWidth(), "center")
end
