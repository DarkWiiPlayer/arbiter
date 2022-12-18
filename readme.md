# Arbiter

Server-side content type negotiation module for Lua HTTP applications

```lua
local arbiter = require 'arbiter'

local negotiator = arbiter.new 'text/html;q=0.8, text/*;q=0.7, text/plain'

negotiator:pick("text/html", "text/plain") -- text/plain
```
