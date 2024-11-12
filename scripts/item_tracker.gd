extends Node3D

var items = {}

signal item_was_removed(name: String, node: Node)
signal item_put_back(name: String, node: Node)

func _ready() -> void:
	item_was_removed.connect(AddItem)
	item_put_back.connect(RemoveItem)

func AddItem(name: String, node: Node) -> void :
	items[name] = Node

func RemoveItem(name: String) -> void:
	items.erase(name)

func GetItem(name: String) -> Node:
	return items[name]


func _on_body_entered(body: Node3D) -> void:
	body.get_node()
