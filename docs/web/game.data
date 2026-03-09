-- Simple Visual Novel Engine in Love2D

local State = {
    SCENE = "scene",
    TEXT = "text",
    CHOICES = "choices"
}

local game = {
    currentScene = 1,
    currentText = 1,
    state = State.TEXT,
    scenes = {
        {
            text = {
                "Welcome to the Great Sage Project.",
                "This is a simple visual novel built with Love2D.",
                "It's designed to be collaborative and fun!",
                "Great Sage says: Knowledge is power."
            },
            background = {0.2, 0.2, 0.3},
            nextScene = 2
        },
        {
            text = {
                "You can change the story by editing the scripts.",
                "What would you like to see next?"
            },
            background = {0.3, 0.2, 0.2},
            nextScene = nil
        }
    }
}

function love.load()
    print("hello world - project update")
    print("Great Sage has arrived.")
    love.window.setTitle("Great Sage Project - Visual Novel")
    love.graphics.setBackgroundColor(unpack(game.scenes[game.currentScene].background))
    
    font = love.graphics.newFont(24)
    love.graphics.setFont(font)
end

function love.update(dt)
end

function love.draw()
    local scene = game.scenes[game.currentScene]
    love.graphics.clear(unpack(scene.background))
    
    -- Draw text box
    love.graphics.setColor(0, 0, 0, 0.7)
    love.graphics.rectangle("fill", 50, love.graphics.getHeight() - 150, love.graphics.getWidth() - 100, 100)
    
    love.graphics.setColor(1, 1, 1)
    local text = scene.text[game.currentText]
    love.graphics.printf(text, 70, love.graphics.getHeight() - 130, love.graphics.getWidth() - 140, "left")
    
    love.graphics.printf("Press SPACE to continue", 0, love.graphics.getHeight() - 30, love.graphics.getWidth(), "center")
end

function love.keypressed(key)
    if key == "space" then
        local scene = game.scenes[game.currentScene]
        if game.currentText < #scene.text then
            game.currentText = game.currentText + 1
        else
            if scene.nextScene then
                game.currentScene = scene.nextScene
                game.currentText = 1
                love.graphics.setBackgroundColor(unpack(game.scenes[game.currentScene].background))
            else
                -- End of game or loop
                game.currentScene = 1
                game.currentText = 1
                love.graphics.setBackgroundColor(unpack(game.scenes[game.currentScene].background))
            end
        end
    end
end
