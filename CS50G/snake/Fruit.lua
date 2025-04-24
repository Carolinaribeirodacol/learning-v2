Fruit = Class{}

function Fruit:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height

    -- mantém o rastreamento da velocidade da bola em x e y nas duas dimenções
    -- O "and" é como se fosse "?", exemplo: math.random(2) == 1 ? 100 : -100
    self.dy = math.random(2) == 1 and -100 or 100
    self.dx = math.random(2) == 1 and math.random(-80, -100) or -math.random(80, 100)
end

-- Reseta a bola para o meio da tela, e define uma nova direção aleatória
-- para a bola, tanto em x quanto em y
function Fruit:reset()
    self.x = math.random(2) == 1 and 100 or -100
    self.y = math.random(-50, 50)

    -- self.dy = math.random(2) == 1 and 100 or -100
    -- self.dx = math.random(-50, 50)
end

-- Atualiza a posição da bola, de acordo com a velocidade dela em x e y
-- e o delta time, que é o tempo entre os frames
-- O delta time é importante para que a velocidade da bola seja a mesma
-- independente da taxa de frames por segundo, ou seja, mesmo que o jogo
-- rode em um computador mais lento ou mais rápido, a bola vai se mover
-- na mesma velocidade
function Fruit:update(dt)
    self.x = self.x + self.dx * dt
    self.y = self.y + self.dy * dt
end

function Fruit:collides(snake)
    -- verifica se a bola colidiu com a raquete    
    if self.x > snake.x + snake.width or snake.x > self.x + self.width then
        return false
    end

    if self.y > snake.y + snake.height or snake.y > self.y + self.height then
        return false
    end

    return true
end

function Fruit:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end