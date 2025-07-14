Paddle = Class{}

function Paddle:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height

    -- mantém o rastreamento da velocidade da bola em x e y nas duas dimenções
    self.dy = 0
end

function Paddle:update(dt)
  if self.dy < 0 then
    -- math.max coloca um limite do quanto pode subir, menos o tamanho da raquete
    self.y = math.max(0, self.y + self.dy * dt)
  else
    -- math.min coloca um limite do quanto pode descer, menos o tamanho da raquete
    self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y + self.dy * dt)
  end
end

function Paddle:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end