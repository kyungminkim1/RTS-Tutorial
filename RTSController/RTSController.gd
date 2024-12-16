extends Node3D

# Parameters for Camera Control
@export_range(0, 1000) var movement_speed: float = 64
@export_range(0, 1000) var rotation_speed: float = 5
@export_range(0, 1000, 0.1) var zoom_speed: float = 50
@export_range(0, 1000) var min_zoom: float = 32
@export_range(0, 1000) var max_zoom: float = 256
@export_range(0, 1000) var min_elevation_angle: float = 10
@export_range(0, 1000) var max_elevation_angle: float = 90
@export var edge_margin: float = 50
@export var allow_rotation: bool = true
@export var allow_zoom: bool = true
@export var allow_pan: bool = true

# Camera Nodes
@onready var camera = $Elevation/Camera3D
@onready var elevation_node = $Elevation

# Runtime State
var is_rotating: bool = false
var is_panning: bool = false
var last_mouse_position: Vector2
var zoom_level: float = 64
