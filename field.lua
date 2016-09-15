_field = {}

function _field:create(position)
  local obj = {}
  obj.field_w = 50
  obj.filed_h = 50

  obj.map = {}
  for i = 1, 10 do
    obj.map[i] = {}
    for k = 1, 10 do
      obj.map[i][k] = 0
    end
  end

  function obj:draw()
    for i = 1, 10 do
      for k = 1, 10 do
        graphics.circle("line", i * , y, radius, segments )
      end
    end
  end

  setmetatable(obj, self)
  self.__index = self
  return obj
end
