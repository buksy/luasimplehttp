simplehttp = require "simplehttp"

local def = {}
def['url'] = ""
def['ssl_veryfy'] = false

http = simplehttp.newconnect(def)
--[[print (getmetatable(http))
local meta = getmetatable(http)
for k,v in pairs(meta) do
  print("    ", k, v)
end
]]
local a = ""
	if (http:get (function (val)
	--	print ("In lua callback")
		a = a .. tostring(val)
		-- print (tostring(val))
		return true
		end)) then 
	print (a)
else 
	print (http:getLastError())
end
--http:setBasicAuth ("", "")
