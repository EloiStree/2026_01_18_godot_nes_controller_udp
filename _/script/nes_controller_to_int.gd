# class name It allows other script ot refert to it
class_name NesControllerToInt extends Node

@export_group("Input use in S2W NES")
@export var button_a:int = 1300
@export var button_b:int = 1301
@export var button_menu_left:int = 1309
@export var button_menu_right:int = 1308
@export var button_arrow_up:int = 1331
@export var button_arrow_right:int = 1333
@export var button_arrow_down:int = 1335
@export var button_arrow_left:int = 1337

@export var use_print_debugging:bool

signal on_integer_to_send_requested(integer_action:int)

#region GENERIC METHODE
func send_integer(integer_to_send:int):
	if use_print_debugging:
		print("Send Integer: ", integer_to_send)
	on_integer_to_send_requested.emit(integer_to_send)

func press_key(key_press_value:int):
	send_integer(key_press_value)

func release_key(key_press_value:int):
	send_integer(key_press_value + 1000)

func stroke_key_no_delay(key_press_value:int):
	press_key(key_press_value)
	release_key(key_press_value)

func set_down_up_key(key_press_value:int, value_down_up:bool):
	if value_down_up:
		press_key(key_press_value)
	else:
		release_key(key_press_value)
#endregion

#region BUTTON_A
func press_a():
	press_key(button_a)

func release_a():
	release_key(button_a)

func stroke_a_no_delay():
	stroke_key_no_delay(button_a)

func set_down_up_key_a(value_down_up:bool):
	set_down_up_key(button_a, value_down_up)
#endregion
#region BUTTON_B
func press_b():
	press_key(button_b)

func release_b():
	release_key(button_b)

func stroke_b_no_delay():
	stroke_key_no_delay(button_b)

func set_down_up_key_b(value_down_up:bool):
	set_down_up_key(button_b, value_down_up)
#endregion
#region MENU_LEFT
func press_menu_left():
	press_key(button_menu_left)

func release_menu_left():
	release_key(button_menu_left)

func stroke_menu_left_no_delay():
	stroke_key_no_delay(button_menu_left)

func set_down_up_key_menu_left(value_down_up:bool):
	set_down_up_key(button_menu_left, value_down_up)
#endregion
#region MENU_RIGHT
func press_menu_right():
	press_key(button_menu_right)

func release_menu_right():
	release_key(button_menu_right)

func stroke_menu_right_no_delay():
	stroke_key_no_delay(button_menu_right)

func set_down_up_key_menu_right(value_down_up:bool):
	set_down_up_key(button_menu_right, value_down_up)
#endregion
#region ARROW_UP
func press_arrow_up():
	press_key(button_arrow_up)

func release_arrow_up():
	release_key(button_arrow_up)

func stroke_arrow_up_no_delay():
	stroke_key_no_delay(button_arrow_up)

func set_down_up_key_arrow_up(value_down_up:bool):
	set_down_up_key(button_arrow_up, value_down_up)
#endregion
#region ARROW_RIGHT
func press_arrow_right():
	press_key(button_arrow_right)

func release_arrow_right():
	release_key(button_arrow_right)

func stroke_arrow_right_no_delay():
	stroke_key_no_delay(button_arrow_right)

func set_down_up_key_arrow_right(value_down_up:bool):
	set_down_up_key(button_arrow_right, value_down_up)
#endregion
#region ARROW_DOWN
func press_arrow_down():
	press_key(button_arrow_down)

func release_arrow_down():
	release_key(button_arrow_down)

func stroke_arrow_down_no_delay():
	stroke_key_no_delay(button_arrow_down)

func set_down_up_key_arrow_down(value_down_up:bool):
	set_down_up_key(button_arrow_down, value_down_up)
#endregion


#region ARROW_LEFT
func press_arrow_left():
	press_key(button_arrow_left)

func release_arrow_left():
	release_key(button_arrow_left)

func stroke_arrow_left_no_delay():
	stroke_key_no_delay(button_arrow_left)

func set_down_up_key_arrow_left(value_down_up:bool):
	set_down_up_key(button_arrow_left, value_down_up)
#endregion
