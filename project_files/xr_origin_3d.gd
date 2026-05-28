extends XROrigin3D

@export var move_speed: float = 2.5
@export var deadzone: float = 0.15

@onready var xr_camera: XRCamera3D = $XRCamera3D
@onready var left_ctrl: XRController3D = $LeftController
@onready var right_ctrl: XRController3D = $RightController

# Zmienna do blokady ciągłego obrotu (wymóg na 4.5)
var can_snap_turn: bool = true 

func _physics_process(delta: float) -> void:
	# --- 1. RUCH PŁYNNY (Lewy drążek - Ocena 4.0) ---
	var dir := Vector3.ZERO

	var fwd := -xr_camera.global_transform.basis.z
	fwd.y = 0.0 # Blokada latania w górę
	fwd = fwd.normalized()
	
	var right := xr_camera.global_transform.basis.x
	right.y = 0.0
	right = right.normalized()

	var v_left: Vector2 = left_ctrl.get_vector2("thumbstick")
	if v_left.length() < deadzone:
		v_left = Vector2.ZERO

	dir += fwd * (-v_left.y) + right * (v_left.x)

	if dir.length() > 0.0:
		global_translate(dir.normalized() * move_speed * delta)
		
	# --- 2. OBRÓT SKOKOWY (Prawy drążek - Ocena 4.5) ---
	var v_right: Vector2 = right_ctrl.get_vector2("thumbstick")
	
	# Jeśli gracz mocno wychyli prawy drążek (powyżej 50%)
	if abs(v_right.x) > 0.5:
		if can_snap_turn: # Jeśli obrót nie jest zablokowany
			if v_right.x > 0:
				rotate_y(deg_to_rad(-45.0)) # Skok o 45 stopni w prawo
			else:
				rotate_y(deg_to_rad(45.0))  # Skok o 45 stopni w lewo
			# ZAKŁADAMY BLOKADĘ (wymóg na 4.5)
			can_snap_turn = false 
			
	# ZDEJMUJEMY BLOKADĘ, dopiero gdy gracz puści drążek (wróci do środka)
	elif abs(v_right.x) < deadzone:
		can_snap_turn = true
