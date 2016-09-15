require "map"
require "sets"

function love.load()
  map = _map:create()
end

function love.update(dt)
  update_mouse()
end

function love.draw()
  map:draw()
end
