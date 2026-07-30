# KorosProject

## Requirements

- **UndertaleModTool v0.9.1.0 or later** (Windows GUI version recommended)
- A legitimate copy of **Undertale for Windows** (`data.win`)

> `data.win` is **not** committed. Everyone keeps their own local copy of the vanilla game file and applies the mod on top of it.

## Applying the Mod (Importing Assets into data.win)

### First-time setup

1. Copy your vanilla `data.win` somewhere safe as a backup.
1. 1. it is recommended to also create a `data-template.win` to load the project from.
2. Clone this repository to your local machine.

### loading the project

1. Once you open the UndertaleModTool, go to Project -> Open project and follow the dialog
2. Dialog will promt you to choose a project first: choose the project.json from the repository
3. Second choice is the **source** `data.win`, choose the `data-template.win` for this one.
4. Third comes the **destination** `data.win`. For ease of debuging, choose `data.win`.

This process loads everything that has been properly saved before, including previously added sprites and backgrounds.

### Importing sprites

Sprites are imported using UTMT's built-in `ImportGraphicsAdvanced.csx` script:

1. Go to **Scripts → Resource Importers → ImportGraphicsAdvanced.csx**.
2. Point the script at the `sprites/` folder inside your local clone of this repository.
3. Backgrounds are handled seperately, so remember to put backgrounds into `backgrounds/` and have to fit within 2048x2048 pixels
4. The script will import all subfolders automatically, matching them to existing sprite assets by folder name.
5. Once complete, go to **File → Save** to write the changes back to `data.win`.

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