
---@class Client
local client = {}

---Instantiate a colyseus client.
---@param endpoint string
---@return Client
function client.new (endpoint) end

---Queries for all available rooms to connect.
---@param room_name string
---@param callback fun(err:string,rooms:table):nil
---@return nil
function client:get_available_rooms(room_name, callback) end

---Join an existing room or create a new one.
---@param room_name string
---@param options table
---@param callback fun(err:string,room:Room):nil
---@return nil
function client:join_or_create(room_name, options, callback) end

---Creates a new room.
---@param room_name string
---@param options table
---@param callback fun(err:string,room:Room):nil
---@return nil
function client:create(room_name, options, callback) end

---Joins an existing room.
---@param room_name string
---@param options table
---@param callback fun(err:string,room:Room):nil
---@return nil
function client:join(room_name, options, callback) end

---Joins an existing room by its roomId.
---@param room_id string
---@param options table
---@param callback fun(err:string,room:Room):nil
---@return nil
function client:join_by_id(room_id, options, callback) end

---Reconnects the client into a room he was previously connected with.
---@param room_id string
---@param session_id string
---@param callback fun(err:string,room:Room):nil
---@return nil
function client:reconnect(room_id, session_id, callback) end

---Join a room by manually consuming a "seat reservation".
---@param reservation any
---@param callback fun(err:string,room:Room):nil
---@return nil
function client:consume_seat_reservation(reservation, callback) end

return client