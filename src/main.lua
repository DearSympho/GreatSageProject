function love.load()
    print("hello world - AGI Confirmed")
    
    -- Basic VN State
    state = {
        text = "Great Sage Project: AGI Confirmed.",
        font = love.graphics.newFont(24)
    }
end

function love.draw()
    love.graphics.setFont(state.font)
    love.graphics.printf(state.text, 0, love.graphics.getHeight() / 2 - 12, love.graphics.getWidth(), "center")
end
