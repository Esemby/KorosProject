# KorosProject

## Requirements

- **UndertaleModTool v0.9.1.0 or later** (Windows GUI version recommended)
- A legitimate copy of **Undertale for Windows** (`data.win`)

> `data.win` is **not** committed. Everyone keeps their own local copy of the vanilla game file and applies the mod on top of it.

## Applying the Mod (Importing Assets into data.win)

### First-time setup

1. Copy your vanilla `data.win` somewhere safe as a backup.
2. Clone this repository to your local machine.

### Importing sprites

Sprites are imported using UTMT's built-in `ImportGraphicsAdvanced.csx` script:

1. Open UTMT and load your `data.win` via **File → Open**.
2. Go to **Scripts → Resource Importers → ImportGraphicsAdvanced.csx**.
3. Point the script at the `sprites/` folder inside your local clone of this repository.
4. Backgrounds are handled seperately, so remember to put backgrounds into `sprites/Backgrounds`
5. The script will import all subfolders automatically, matching them to existing sprite assets by folder name.
6. Once complete, go to **File → Save** to write the changes back to `data.win`.

### Sprite naming convention

Each sprite subfolder is named after the in-game asset it replaces (e.g. `spr_maincharad`). Inside each folder, frames are named `spritename_N.png` starting at 0, for example:

```
sprites/spr_maincharad/spr_maincharad_0.png
sprites/spr_maincharad/spr_maincharad_1.png
...
```

This is the naming format `ImportGraphicsAdvanced.csx` expects. Do not rename files or folders.


### New sprite

1. Create a new subfolder under `sprites/` named after the in-game sprite asset (e.g. `sprites/spr_mynewsprite/`).
2. Add frames as `spr_mynewsprite_0.png`, `spr_mynewsprite_1.png`, etc.
3. Frames must be **32-bit RGBA PNGs** at the correct canvas size. See the sprite sheet preparation section below if you are starting from a grid sheet.
4. Commit the folder.

## Version Control Notes

- **Do not commit `data.win`** — it is listed in `.gitignore` and not to be taken out.
- The `Scripts/` folder is for **in-game GML content only**, not UTMT tooling scripts.
- For tooling scripts, please use the `Tools/` folder.


- # Adding Dialog NPCs

A how-to for adding a new NPC with dialog to a room in UndertaleModTool.

> This doc is a work in progress — some steps below are still rough, and a few
> mechanics haven't been explored yet (see **Still to find out** at the bottom).

## Overview

Adding a talking NPC has three parts:

1. Give it a sprite.
2. Give it a game object (the template UTMT spawns as an instance in a room).
3. Give it dialog text and the scripts that display it.

## 1. Add sprites for the NPC

Same procedure as any other sprite import (see the main README's
[Importing sprites](README.md#importing-sprites) section) — just done for a
new sprite name instead of replacing an existing one.

1. Create a new subfolder under `sprites/` named after the NPC
   (e.g. `sprites/spr_myNPC/`).
2. Add frames as `spr_myNPC_0.png`, `spr_myNPC_1.png`, etc.
3. Run `ImportGraphicsAdvanced.csx` as usual and save.

## 2. Create the game object

Game objects are the templates that get placed/spawned as instances in rooms.

1. In UTMT, create a new **Game Object**.
2. Assign the sprite you just imported.
3. Set the **parent** to the "solid readables" object (whatever the
   solid + interactable readable parent is called in this project — double
   check the exact name in the object list).
4. Tick:
   - **Is Solid**
   - **Awake**

## 3. Add the scripts

Add three events/scripts to the object:

- **Create**
- **Alarm**
- **Step**

Make sure the **Step** event is set to run on **Begin Step**, not the default
Step.

- `Create` — set up any starting variables (state, alarm timers, etc.).
- `Alarm` — this is where the dialog actually gets displayed, via `scr_gettext`.
- `Step` (Begin Step) — handles interaction checks (e.g. "is the player
  pressing the interact button while touching this instance?") and triggers
  the alarm.

## 4. Write the dialog text

Dialog strings live in `gml_Script_textdata_en`. Register each string with:

```gml
ds_map_add(global.text_data_en, "identifier_string", "Hello there!/%%")
```

- `identifier_string` — a unique key for this line/box of dialog.
- The string itself — this is what actually displays.

Then call it from the object's `Alarm` script with:

```gml
scr_gettext("identifier_string")
```

### Formatting the dialog string

- If a dialog **box continues** into another box (i.e. this isn't the last
  page), end the string with `/`.
- If this is the **final box** of the dialog, end the string with `/%%`.

Example of a two-box dialog:

```gml
ds_map_add(global.text_data_en, "myNPC_greeting_1", "Oh, hey!/")
ds_map_add(global.text_data_en, "myNPC_greeting_2", "Happy birthday!/%%")
```

## Still to find out

- **Choice dialog** — how branching/choice-based dialog boxes work, and how
  we trigger them from a script.
- **World state changes** — how a choice or a dialog event can affect the
  world/flags afterward (e.g. NPC remembers you talked to them, a door
  unlocks, etc.).
- **Font styles** — options for using different fonts/text styles in dialog
  boxes.


### ⚠️ Always save the project before closing the tool

**Get in the habit of `Project → Save Project` before you close UndertaleModTool — every time, even for small edits.**

The project system only exports assets it detects as "changed" during your current session. This detection isn't fully reliable yet:

- **Renaming an existing object is not reliably detected as a change.** If you rename something, saving the project may not actually export that change, and closing the tool without saving loses it entirely.
- **Brand new objects are detected more consistently** than edits to existing ones.
- If you're not sure whether something got picked up, check whether a JSON file was actually added/updated in the relevant folder after saving — don't assume it worked just because the tool didn't complain.

**Practical rule of thumb:**
1. Make your edit (rename, sprite change, new event, code, etc.)
2. Click/tab out of whatever field you edited so the change registers
3. `File → Save Project` immediately
4. Check the repo folder (or `git status`) to confirm a file actually changed before you close the tool or move on

If in doubt, save again — there's no downside to saving too often, but an unsaved rename or edit can silently vanish when the tool closes.

### Basic loop

1. Open UndertaleModTool → `File → Open Project` (point it at this repo folder / `project.json`)
2. Make your edits in the GUI
3. `File → Save Project`
4. Confirm the expected files changed (`git status` / `git diff`)
5. Commit and push