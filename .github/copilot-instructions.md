# AI Coding Agent Instructions for the Wildlands Project

Welcome to the Wildlands project! This document provides essential guidance for AI coding agents to be productive in this codebase. It outlines the architecture, workflows, conventions, and integration points specific to this project.

---

## Project Overview

The Wildlands project is a Godot-based game with the following key components:

1. **Scenes**:
   - Located in the `scenes/` directory.
   - Organized into subdirectories like `entities/`, `interface/`, and `main/`.
   - Each `.tscn` file represents a scene, often paired with a `.gd` script for logic.

2. **Scripts**:
   - Found in the same directories as their corresponding scenes.
   - Use Godot's GDScript for game logic.
   - Scripts are attached to nodes in `.tscn` files and manage their behavior.

3. **Assets**:
   - Stored in the `assets/` directory.
   - Includes textures, tilesets, and other visual resources.

4. **Autoloads**:
   - Scripts in the `autoload/` directory are globally accessible singletons.
   - Examples: `inventory.gd` and `resource.gd`.

---

## Key Developer Workflows

### Running the Game
- Open the project in the Godot Editor.
- Press the play button to run the game.

### Debugging
- Use the Godot Editor's built-in debugger to inspect nodes, signals, and variables.
- Add `print()` statements in GDScript for quick debugging.

### Testing
- Currently, no automated tests are defined. Testing is manual through gameplay.

---

## Project-Specific Conventions

1. **Node Naming**:
   - Nodes are named descriptively (e.g., `InventoryButton`, `PanelContainer`).
   - Scripts use `@onready` variables to reference child nodes (e.g., `@onready var inventory_panel = $PanelContainer`).

2. **Signal Connections**:
   - Signals are connected programmatically using `connect()` in the `_ready()` function.
   - Example:
     ```gdscript
     hud.connect("inventory_button_pressed", Callable(self, "_on_inventory_button_pressed"))
     ```

3. **Visibility Management**:
   - Nodes like `Inventory` and `PanelContainer` manage their visibility using the `visible` property.
   - Visibility toggling is encapsulated in functions like `toggle_visibility()`.

4. **Scene Instancing**:
   - Scenes are instanced dynamically or referenced in the main scene tree.
   - Example: `Hud` and `Inventory` are instances in `interface.tscn`.

---

## Integration Points

1. **Godot Engine**:
   - The project relies on Godot's scene system, signals, and scripting capabilities.

2. **Global State**:
   - Managed through autoload scripts (e.g., `inventory.gd`).

3. **Cross-Component Communication**:
   - Signals are the primary method for communication between nodes.
   - Example: `Hud` emits `inventory_button_pressed`, which is handled by `Interface` to toggle the inventory.

---

## Examples of Important Patterns

### Signal Emission and Handling
- **Emitter** (`hud.gd`):
  ```gdscript
  signal inventory_button_pressed

  func _ready():
      inventory_button.pressed.connect(on_inventory_button_pressed)

  func on_inventory_button_pressed():
      emit_signal("inventory_button_pressed")
  ```

- **Receiver** (`interface.gd`):
  ```gdscript
  func _ready():
      hud.connect("inventory_button_pressed", Callable(self, "_on_inventory_button_pressed"))

  func _on_inventory_button_pressed():
      inventory.toggle_visibility()
  ```

### Visibility Management
- **Encapsulation in `inventory.gd`**:
  ```gdscript
  func toggle_visibility():
      if not self.visible:
          self.visible = true
      inventory_panel.visible = not inventory_panel.visible
  ```

---

## Expectations for AI Responses

When generating responses for this project, follow these guidelines:

1. **Clarity and Conciseness**:
   - Provide clear and concise explanations.
   - Avoid unnecessary jargon or overly verbose descriptions.

2. **Context Awareness**:
   - Always consider the current state of the codebase and the user's active file.
   - Reference specific files, nodes, or scripts when relevant.
   - Read both .gd and .tscn files to gain the maximum amount of context

3. **Actionable Suggestions**:
   - Offer actionable steps or code snippets to address the user's request.
   - Ensure suggestions align with the project's conventions and patterns.

4. **Debugging Assistance**:
   - When issues arise, suggest debugging steps with clear instructions.
   - Include relevant debug logs or checks to help identify the problem.

5. **Future-Proofing**:
   - Consider potential future changes or extensions to the codebase.
   - Suggest solutions that are maintainable and scalable.

6. **Respect Project Conventions**:
   - Follow the project's established patterns for signals, visibility management, and scene organization.
   - Avoid introducing practices that deviate from the documented conventions.

7. **Avoid**
   - Do not edit any files that is not `.gd` extension as this may cause issues in the Godot editor.

---

This document will evolve as the project grows. If you encounter any gaps or inconsistencies, please update this file to help future contributors and AI agents!
