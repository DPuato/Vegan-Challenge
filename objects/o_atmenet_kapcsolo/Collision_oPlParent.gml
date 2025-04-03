// The code is "if room=roomName {room_goto(roomName)}"
// The room=roomName is to check if you are in the correct room.
// The room_goto(roomName) is the room you are going to be sent if the player is in te correct room.
if room=rLevel1 {room_goto(rLevel2)}
if room=rLevel2 {room_goto(rLevel3)}
// If the room is equal to level 1, then go to level 2. You can change the rooms to anything you want.
// To go from level 2 to level 3 the code would be "if room=rLevel2 {room_goto(rLevel3)}".
