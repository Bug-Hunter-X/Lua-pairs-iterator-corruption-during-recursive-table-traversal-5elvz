local function foo(t)
  local function traverse(tbl)
    local keys = {}
    for k, _ in pairs(tbl) do
      table.insert(keys,k)
    end
    for _, k in ipairs(keys) do
      local v = tbl[k]
      if type(v) == "table" then
        traverse(v)
      end
    end
  end
  traverse(t)
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)