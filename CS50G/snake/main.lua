push = require 'push'
Class = require 'class'

require 'Snake'
require 'Fruit'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

-- SNAKE_SPEED = 200

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    love.window.setTitle('Snake')

    math.randomseed(os.time())

    smallFont = love.graphics.newFont('font.ttf', 8)
    largeFont = love.graphics.newFont('font.ttf', 16)

    love.graphics.setFont(smallFont)

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })

    snake = Snake(VIRTUAL_WIDTH / 2 - 2, VIRTUAL_HEIGHT / 2 - 2, 4, 4)

    -- Tamanho da tela, dividido por 2, menos o valor da metade do tamanho da fruta.
    fruit = Fruit(VIRTUAL_WIDTH / 2 - 2, VIRTUAL_HEIGHT / 2 - 2, 4, 4)

    gameState = 'start'
end

function love.update(dt)
    if gameState == 'start' then
        -- if snake:collides(fruit) then
        --     -- deletar fruta e criar outra
        --     -- aumentar a cobra
        --     snake.width = snake.width + 5
        --     fruit = Fruit(math.random(0, VIRTUAL_WIDTH - 4), math.random(0, VIRTUAL_HEIGHT - 4), 4, 4)
        -- end
    end

    -- if gameState == 'play' then
    --     ball:update(dt)
    -- end

    snake:update(dt)
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    elseif key == 'enter' or key == 'return' then
        gameState = 'start'
    end
end

function love.draw()
    push:apply('start')

    love.graphics.clear(40 / 255, 45 / 255, 52 / 255, 255 / 255)

    love.graphics.setFont(smallFont)

    if gameState == 'start' then
        love.graphics.setFont(smallFont)
        love.graphics.printf('Helcome to Snake!', 0, 10, VIRTUAL_WIDTH, 'center')
        love.graphics.printf('Press Enter to begin', 0, 20, VIRTUAL_WIDTH, 'center')
    end

    snake:render()
    -- fruit:render()

    displayFps()

    push:apply('end')

end

-- Função para exibir os FPS na tela
function displayFps()
    love.graphics.setFont(smallFont)
    love.graphics.setColor(0, 255, 0, 255)
    love.graphics.print('FPS: ' .. tostring(love.timer.getFPS()), 10, 10)
end
