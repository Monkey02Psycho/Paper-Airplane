extends CanvasLayer


func _ready():
	pass

func update_score(score):
	$Test.text = str(score)

