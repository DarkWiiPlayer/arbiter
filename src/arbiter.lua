--- Object representation of a parsed accept header
--- @class arbiter
--- @field private accept string The original `accept` header
local arbiter = {}

arbiter.__index = arbiter

--- Escapes all the special pattern characters in a string
--- @param pattern string A string to escape
local function patescape(pattern)
	return pattern:gsub('[%^%$%(%)%%%.%[%]%+%-%?%*]', function(char) return '%'..char end)
end

--- Takes a content type string and turns the string into patterns to match said type(s)
--- @param accept string A single content-type
local function pattern(accept)
	local s, t = accept.s, accept.type
	if s == 1 then
		return '.+/.+'
	elseif s == 2 then
		return "^" .. patescape(t:match('^[^/]+/'))..".+"
	elseif s == 3 then
		return "^" .. patescape(t).."$"
	end
end

--- @class accepted
--- @field q number The corresponding Q-value
--- @field s number The specificity of the mime type
--- @field type string The full mime-type as a string

--- Parses an "accept" header and returns its entries.
-- Values are returned as: `{q = <Q-Value>, s = <Specificity>, type = <content type>}`
-- where specificity can be 1 for `*/*`, 2 for `<type>/*` or 3 for `<type>/<subtype>`
--- @param accept string The full HTTP Accept header
function arbiter.new(accept)
	local new = setmetatable({ accept=accept }, arbiter)

	for param in accept:gmatch('[^, ]+') do
		local m, n = param:match("([^/]+)/([^;]+)")
		local s = m == '*' and 1 or n == '*' and 2 or 3
		local q = tonumber(param:match(';q=([%d.]+)')) or 1
		table.insert(new, {q=q, s=s, type=m..'/'..n})
	end

	--- @param a accepted
	--- @param b accepted
	table.sort(new, function(a, b)
		return a.q > b.q
			or a.q == b.q and a.s>b.s
			or a.q == b.q and a.s == b.s and a.type < b.type
	end)

	for i, value in ipairs(new) do
		new[i].pattern = pattern(value)
	end

	return new
end

--- Picks the client's preferred content type from a list.
-- When given a list of strings as arguments or in a sequence, the best match will be returned.
-- When given a table, the keys will be treated as content types
-- and the selected type will be returned along with its corresponding value.
--- @param available string[]|string List of available content types
--- @param ... string
--- @return string|unknown|nil
--- @return string|unknown|nil
function arbiter:pick(available, ...)
	if type(available) == "string" then
		return self:pick({available, ...})
	end

	if type(available[1]) == "string" then
		for _, entry in ipairs(self) do
			for _, name in ipairs(available) do
				if name:find(entry.pattern) then
					return name
				end
			end
		end
	else
		for _, entry in ipairs(self) do
			for name, value in pairs(available) do
				if name:find(entry.pattern) then
					return name, value
				end
			end
		end
	end
	return nil, "Content type negotiation failed for '"..self.accept.."'"
end

return arbiter
