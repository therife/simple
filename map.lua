_map = {}

function _map:create()
  local obj = {}
  obj.field_w = 50
  obj.filed_h = 50

  obj.map = {}
  for i = 1, 10 do
    obj.map[i] = {}
    for k = 1, 10 do
      if (i + k) % 2 ~= 0 then
        obj.map[i][k] = 1
      else
        obj.map[i][k] = 0
      end
    end
  end

  function obj:draw()
    for i = 1, 9 do
      for k = 1, 9 do
        if obj.map[i][k] == 1 then
          graphics.circle("line", i * 50, k * 30, 30, 6)
          graphics.print(i..":"..k, i * 50 - 10, k * 30 - 10)
        end
      end
    end
  end

  setmetatable(obj, self)
  self.__index = self
  return obj
end
