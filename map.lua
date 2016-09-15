_map = {}

function _map:create(x, y, w)
  local obj = {}
  obj.field_w = w
  obj.field_h = obj.field_w / 1.66
  obj.x = x
  obj.y = y

  obj.map = {{0, 1, 0, 1, 0, 1, 0, 1, 0},
             {1, 0, 1, 0, 1, 0, 1, 0, 1},
             {0, 1, 0, 1, 0, 1, 0, 1, 0},
             {1, 0, 1, 0, 2, 0, 1, 0, 1},
             {0, 1, 0, 2, 0, 1, 0, 1, 0},
             {1, 0, 1, 0, 1, 0, 1, 0, 1},
             {0, 1, 0, 1, 0, 1, 0, 1, 0},
             {1, 0, 1, 0, 1, 0, 1, 0, 1},
             {0, 1, 0, 1, 0, 1, 0, 1, 0}}

  function obj:draw()
    for i = 1, 9 do
      for k = 1, 9 do
        if obj.map[i][k] == 1 then
          graphics.circle("line", k * obj.field_w - obj.field_w / 3, i * obj.field_h, obj.field_h, 6)
          graphics.print(i..":"..k, k * obj.field_w - 10, i * obj.field_h - 10)
        elseif obj.map[i][k] == 2 then
          graphics.circle("line", k * obj.field_w - obj.field_w / 3, i * obj.field_h, obj.field_h, 9)
          graphics.print(i..":"..k, k * obj.field_w - 10, i * obj.field_h - 10)
        end
      end
    end
  end

  setmetatable(obj, self)
  self.__index = self
  return obj
end
