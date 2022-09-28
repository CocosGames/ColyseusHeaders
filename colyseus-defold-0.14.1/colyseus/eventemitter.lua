--
-- Based on https://github.com/wscherphof/lua-events/
--
---@class EventEmitter
local EventEmitter = {}

---Instantiate an EventEmitter.
---@param object any
---@return EventEmitter
function EventEmitter:new(object) end

---Listen to an event.
---@param event string
---@param listener fun(...)
---@return fun(...)
function EventEmitter:on (event, listener) end

---Remove listener to an event.
---@param event string
---@param listener fun(...)
---@return nil
function EventEmitter:off (event, listener) end

---Get all the listeners to an event.
---@param event string
---@return table
function EventEmitter:listeners (event) end

---Emit an event.
---@param event string
---@vararg any
---@return nil
function EventEmitter:emit (event, ...) end

return EventEmitter
