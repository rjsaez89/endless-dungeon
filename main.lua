local Map = require 'core/map'
function love.load()
    map = Map:new(5, 5)
  x = 100
  y = 500
  playerImg = love.graphics.newImage('assets-1/player/base/octopode_1.png')

  floorTile = love.graphics.newImage('assets-1/dungeon/floor/cage_0.png')
  cobalt = love.graphics.newImage('assets-1/dungeon/floor/black_cobalt_9.png')
--altar     = love.graphics.newImage('altar-asset.png')
template = { --a 3 x 3 map with the altar texture in the middle
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, altar, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
           }


map = Map:new(template)

walls = { --a 3 x 3 map with the altar texture in the middle
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, 'nil', floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
             {floorTile, floorTile, floorTile, floorTile, floorTile, floorTile},
           }


wallMap = Map:new(walls)

end




function love.update(dt)

  function love.update(dt)
    if love.keyboard.isDown('up') then
      if collide:cc(x, y - 5, 64, 64) == false then
        y = y - 5
      end
    end
    if love.keyboard.isDown('down') then
      if collide:cc(x, y + 5, 64, 64) == false then
        y = y + 5
      end
    end
    if love.keyboard.isDown('right') then
      if collide:cc(x + 5, y, 64, 64) == false then
        x = x + 5
      end
    end
    if love.keyboard.isDown('left') then
      if collide:cc(x - 5, y , 64, 64) == false then
        x = x - 5
      end
    end
  end
  if love.keyboard.isDown('left') then
    x = x - 1
  end
  if love.keyboard.isDown('down') then
    y = y + 1
  end
  if love.keyboard.isDown('up') then
    y = y - 1
  end

end





function love.draw()
    map:draw()
    wallMap:draw()
  love.graphics.print('wasupp, world!', 0, 0)
  love.graphics.draw(playerImg, x, y)
end
