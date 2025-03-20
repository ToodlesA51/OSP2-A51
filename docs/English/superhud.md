# SuperHUD

Based on the [CPMA SuperHud](https://playmorepromode.com/guides/cpma-super-hud) documentation, but different from it.

The hud configuration is saved in text files located in the `./osp/hud/` directory. The files must have the `.cfg` extension.

Control commands: `cg_shud, ch_file, reloadHUD`, more details in `commands.md`.

## Syntax

The syntax is similar to CPMA syntax:

```

ELEMENT
{
ELEMENT_COMMAND VALUE #comment
ELEMENT_COMMAND VALUE
}

# comment
ELEMENT { ELEMENT_COMMAND VALUE; ELEMENT_COMMAND VALUE; }

```

## Elements

Element - the basic part of the HUD. Elements are drawn in the order specified in the table.

| Element                       | Brief description                                            |
|-------------------------------|--------------------------------------------------------------|
| !DEFAULT                      | Default commands.                                            |
| PreDecorate                   | Drawing separators, etc.                                     |
| AmmoMessage                   | Low ammo/Out of ammo message.                                |
| AttackerIcon                  | Icon of the last person who attacked you                     |
| AttackerName                  | Nickname of the last person who attacked you                 |
| Chat1 - Chat16                | Chat lines. The message appears first in Chat1.              |
| FlagStatus_NME                | Enemy team flag status.                                      |
| FlagStatus_OWN                | Own team flag status.                                        |
| FollowMessage                 | "Following PlayerName" message.                              |
| FPS                           | FPS counter.                                                 |
| FragMessage                   | Message about received frag.                                 |
| GameTime                      | Game time.                                                   |
| ItemPickup                    | Name of the picked up item and game time.                    |
| ItemPickupIcon                | Image of the picked up item.                                 |
| LocalTime                     | Real time.                                                   |
| Name_NME                      | Name of the enemy or enemy team.                             |
| Name_OWN                      | Your name or team name.                                      |
| NetGraph                      | Lagometer.                                                   |
| NetGraphPing                  | Ping.                                                        |
| Obituary1 - Obituary8         | Obituary (death messages)                                    |
| PlayerSpeed ​                  ​| Player speed.                                                |
| Powerup1_icon - Powerup8_icon | Powerup icon.                                                |
| Powerup1_time - Powerup8_time | Remaining powerup time.                                      |
| RankMessage                   | Rank in the table. Visible when getting a frag.              |
| Score_Limit                   | Score limit.                                                 |
| Score_NME                     | Enemy/team or leading player's score.                        |
| Score_OWN                     | Own score or your team's score.                              |
| Specmessage                   | SPECTATOR message.                                           |
| StatusBar_ArmorBar            | Armor bar.                                                   |
| StatusBar_ArmorCount          | Armor counter.                                               |
| StatusBar_ArmorIcon           | Armor icon.                                                  |
| StatusBar_AmmoBar             | Ammo bar.                                                    |
| StatusBar_AmmoCount           | Ammo counter.                                                |
| StatusBar_AmmoIcon            | Ammo icon.                                                   |
| StatusBar_HealthBar           | Health bar.                                                  |
| StatusBar_HealthCount         | Health counter.                                              |
| StatusBar_HealthIcon          | Health icon.                                                 |
| TargetName                    | Player name in crosshair.                                    |
| TargetStatus                  | Teammate's health/armor.                                     |
| TeamCount_NME                 | Number of alive players on the enemy team (freeze only).     |
| TeamCount_OWN                 | Number of alive players on your team (freeze only).          |
| Team1-Team16                  | TeamOverlay.                                                 |
| VoteMessageWorld              | Vote string                                                  |
| WeaponList                    | List of available weapons.                                   |
| RewardIcons                   | Image of the received medal.                                 |
| RewardNumbers                 | Counter of received medals.                                  |
| PostDecorate                  | Drawing dividers, etc.                                       |
| Obituary1-Obituary8           | Obituary.                                                    |
| WarmupInfo                    | Countdown/"waiting for players".                             |
| GameType                      | Game mode (only during warmup).                              |
| Location                      | Message with the location name when it changes.              |

## Commands

| Command   | Values ​        ​| Brief description                                            |
|-----------|----------------|--------------------------------------------------------------|
| AlignH    | L/C/R          | Horizontal alignment left/center/right                       |
| AlignV    | T/C/B          | Vertical Alignment Top/Center/Bottom                         |
| BgColor   | r g b a        | Background color.                                            |
| Color     | r g b a        | Primary color.                                               |
| Color1    | r g b a        | Secondary color.                                             |
| Color     | T              | Team color.                                                  |
| Color     | E              | Enemy team color.                                            |
| Direction | L/R/T/B        | Direction: left->right/right->left/top->bottom/bottom->top.  |
| Doublebar |                | Double health/armor/ammo bar.                                |
| Fade      | r g b a        | Fade to this color.                                          |
| Fadedelay | milliseconds   | Fade speed.                                                  |
| Fill      |                | Fill with BgColor.                                           |
| Font      | name           | Font name.                                                   |
| FontSize  | w h            | Font size width and height.                                  |
| Image     | string         | Path to shader or image.                                     |
| Monospace |                | Use monospace printing.                                      |
| Rect      | x y w h        | Element coordinates and size.                                |
| Text      | string         | Text string.                                                 |
| Textalign | L/C/R          | Text alignment left/center/right.                            |
| Textstyle | flags          | Text flags. 1 - no shadow.                                   |
| Time      | milliseconds   | On-screen display time.                                      |
| Style     | flags          | Element style - number                                       |

## Explanations for some elements

### !DEFAULT

Used to set default command values ​​for subsequent elements. To cancel, use an empty element: `!DEFAULT {}`

### Chat1 - Chat16

The message first appears in Chat1 and shifts to the following elements as new messages arrive.

### WeaponList

Weapon list. The `Rect` command specifies the size of the icon of one weapon. The size of the text field is determined automatically based on the font size.
To select the list type (left/right/horizontal), use the `TextAlign` command.

### StatusBar_HealthBar StatusBar_ArmorBar StatusBar_AmmoBar

- Doublebar - enable double bar
- Direction - Direction of the bar

Only for health and armor:
- Style 1 - color depends on hp, 2 - both bars in one place, the color is set via color and color2,