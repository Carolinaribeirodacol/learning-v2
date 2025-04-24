Snake = Class{}

SNAKE_SPEED = 50

function Snake:init(x, y, width, height)
  self.x = x
  self.y = y
  self.dx = 0 -- -1, 0 ou 1 (-1: esquerda, 0: parado, 1: direita)
  self.dy = 0 -- -1, 0 ou 1 (-1: cima, 0: parado, 1: baixo)
  self.width = width
  self.height = height
end

function Snake:update(dt)
  if self.dx > 0 then
    self.x = self.x + SNAKE_SPEED * dt
  elseif self.dx < 0 then
    self.x = self.x - SNAKE_SPEED * dt
  end

  if self.dy > 0 then
    self.y = self.y + SNAKE_SPEED * dt
  elseif self.dy < 0 then
    self.y = self.y - SNAKE_SPEED * dt
  end

  if love.keyboard.isDown('d') and self.dx == 0 then
    self.dx = 1
    self.dy = 0
  elseif love.keyboard.isDown('a') and self.dx == 0 then
    self.dx = -1
    self.dy = 0
  elseif love.keyboard.isDown('w') and self.dy == 0 then
    snake.dy = -1
    snake.dx = 0
  elseif love.keyboard.isDown('s') and self.dy == 0 then
    snake.dy = 1
    snake.dx = 0
  end
end

function Snake:collides(fruit)
  -- verifica se a cobra/player colidiu com a fruta

  if self.x > fruit.x + fruit.width or fruit.x > self.x + self.width then
      return false
  end

  if self.y > fruit.y + fruit.height or fruit.y > self.y + self.height then
      return false
  end

  return true
end

function Snake:render()
  love.graphics.printf('dx: ' .. tostring(self.dx), 0, 20, 50, 'center')
  love.graphics.printf('dy: ' .. tostring(self.dy), 0, 30, 50, 'center')
  love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end