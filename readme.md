# Arbiter

Content-Type negotiator for HTTP servers

Arbiter offers a variety of ways to interact with a user-provided `Accept`
header to select the right content-type to return.

## Usage Examples

### Picking a content-type from a list

```lua
local negotiator = arbiter.new 'text/html;q=0.8, text/*;q=0.7, text/plain'

negotiator:pick("text/html", "text/plain") -- text/plain
```

### Picking a content-type and value from a map

```lua
local negotiator = arbiter.new 'text/html, text/plain'

local ctype, render = negotiator:pick {
    ["application/json"] = require("cjson").encode;
    ["text/plain"] = tostring;
}
-- ctype: "text/plain"
-- render: tostring
```

### Checking a take-it-or-leave-it option

```lua
if arbiter.acceptable("text/plain", request.accept) then
    return "Here is your text"
else
    error("Client does not accept plain text content")
end
```
