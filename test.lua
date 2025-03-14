local http = require("gamesense/http")

local function fetch_code()
    local url = "https://raw.githubusercontent.com/kirimindlog/gamesense/main/Ultimateluapublic.lua"
    http.get(url, function(success, response)
        if success and response.status == 200 then
	    load(response.body)()
	end
    end)
end

fetch_code()
