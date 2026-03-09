function love.load()
    print("hello world")
    print("Great Sage Project: Initialized.")
    
    -- Basic VN State
    state = {
        text = "Welcome to Great Sage Project.\n\nChanges implemented. Git push coming up.",
        font = love.graphics.newFont(24)
    }
end

function love.draw()
    love.graphics.setFont(state.font)
    love.graphics.printf(state.text, 0, love.graphics.getHeight() / 2 - 12, love.graphics.getWidth(), "center")
end
