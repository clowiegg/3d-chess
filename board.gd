extends Node3D

enum {PAWN, BISHOP, KNIGHT, ROOK, QUEEN, KING}
var array = []

func _ready():
	for i in range(8):
		var subarray = []
		subarray.resize(8)
		subarray.fill(null)
		array.append(subarray)
	
	# Pawns
	for file in range(8):
		array[1][file] = Piece.new(PAWN,0)
		array[6][file] = Piece.new(PAWN,1)
		
	# Other Black Pieces
	array[7] = [
		Piece.new(ROOK,1),
		Piece.new(KNIGHT,1),
		Piece.new(BISHOP,1),
		Piece.new(KING,1),
		Piece.new(QUEEN,1),
		Piece.new(KNIGHT,1),
		Piece.new(BISHOP,1),
		Piece.new(ROOK,1),
	]
	
	# Other White Pieces
	array[0] = [
		Piece.new(ROOK,0),
		Piece.new(KNIGHT,0),
		Piece.new(BISHOP,0),
		Piece.new(KING,0),
		Piece.new(QUEEN,0),
		Piece.new(KNIGHT,0),
		Piece.new(BISHOP,0),
		Piece.new(ROOK,0),
	]
	
	for rank in [0,1,6,7]:
		for file in range(8):
			array[rank][file].position = Vector3(rank - 3.5, 1, file - 3.5)
			add_child(array[rank][file])
				
