_class = {}

function _class:create()
  local obj = {}

  setmetatable(obj, self)
  self.__index = self
  return obj
end
