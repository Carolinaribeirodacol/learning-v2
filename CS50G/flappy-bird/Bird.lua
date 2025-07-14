Bird = Class{}

local GRAVITY = 20

function Bird:init()
  self.image = love.graphics.newImage('bird.png')
  self.width = self.image:getWidth()
  self.height = self.image:getHeight()

  self.x = VIRTUAL_WIDTH / 2 - self.width / 2
  self.y = VIRTUAL_HEIGHT / 2 - self.height / 2

  -- Y velocity; gravity
  self.dy = 0
end

function Bird:update(dt)
  -- Aplica a gravidade à velocidade Y do pássaro
  self.dy = self.dy + GRAVITY * dt

  if love.keyboard.wasPressed('space') then
    -- Se a tecla de espaço for pressionada, o pássaro sobe
    self.dy = -5
  end

  -- Aplica a velocidade atual para a posição Y do pássaro
  self.y = self.y + self.dy
end

function Bird:render()
  love.graphics.draw(self.image, self.x, self.y)
end