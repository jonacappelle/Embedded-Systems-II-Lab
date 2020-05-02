// Team Turn Table - The Things Network - Decoder
// Decodes Lora payload example: 75 0E B2 91 41
// ----------------------------------
// |Bytes	|Content		|Example|
// ----------------------------------
// |00		|playerIdPrefix	|r		|
// |01-03	|playerId		|0963217|
// |04		|score			|65		|
// ----------------------------------

function Decoder(bytes, port) {
	// Decoded structure
	var decoded = {};
	decoded.playerId = [];
	decoded.playerScore = [];
	
	// Temporary variables, will be put together to decoded.playerId
	var playerIdPrefix = "";
	var playerId = "";
	
	// Decode playerIdPrefix (student/employee number); 1 byte
	playerIdPrefix = String.fromCharCode(bytes[0]);
	
	// Decode playerId (student/employee number); 3 bytes
	playerId = String((bytes[1] << 16) + (bytes[2] << 8) + bytes[3]);

	// Add zeroes in front of playerId to match the standard 
	for (i = 0; i < 7 - playerId.length; i++){
	  playerId = "0" + playerId;
	}
	
	// Add playerIdPrefix to student/employee number
	decoded.playerId = playerIdPrefix + playerId;
	
	// Decode playerScore; 1 byte
	decoded.playerScore = bytes[4];
  return decoded;
}