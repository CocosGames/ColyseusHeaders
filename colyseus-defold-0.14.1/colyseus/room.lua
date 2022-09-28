
---@class Room:EventEmitter
Room = {}

---The current room's state.
---@type any
Room.state = any

---Unique identifier for the current connected client.
---@type string
Room.sessionId = any

---The unique idenfitier of the room.
---@type string
Room.id = any

---Name of the room handler.
---@type string
Room.name = any

---Instantiate a colyseus room.
---@param name string
---@return Room
function Room.new(name) end

---This event is triggered when the server sends a message directly to the client, or via broadcast.
---@param type string
---@param handler fun(message:any):nil
---@return fun(message:any):nil
function Room:on_message(type, handler) end

---Disconnect client from the room.
---@param consented boolean|nil
---@return nil
function Room:leave(consented) end

---Send a type of message to the room handler.
---@param message_type string|number
---@param message table
---@return nil
function Room:send (message_type, message) end

return Room
