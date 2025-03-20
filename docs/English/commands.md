# Changes in commands

---

cg_enemyModelColors
cg_teamModelColors
cg_playerModelColors

The color of the corresponding model. The model must have the pm skin.
Colors have priority over the `color1,color2,cg_enemyColors` commands

Argument:

`XXX` - head/torso/legs, colors as in the color1 command, for example `cg_enemyModelColors 222`

`RRGGBBRRGGBBRRGGBB` head/torso/legs, rgb hex colors, for example `cg_enemyModelColors 00FF0000FF0000FF00`

---

cg_enemyModelColorsUnique

Sets a unique (almost) color for the enemy model.

`0` disabled

`1` head

`2` torso

`4` legs

---

cg_enemyRailColors
cg_teamRailColors
cg_playerRailColors

Rail colors.
Colors take precedence over `color1,color2` commands

Argument:

`XX` - core/rings, colors as in color1 command, for example `cg_enemyRailColors 22`

`RRGGBBRRGGBB` core/rings, rgb hex colors, for example `cg_enemyRailColors 00FF0000FF00`

---

cg_enemyFrozenColor
cg_teamFrozenColor
cg_playerFrozenColor

Colors of frozen player.

Argument:

`X` - color as in color1 command, for example `cg_enemyFrozenColor 2`

`RRGGBB` rgb hex color, for example `cg_enemyFrozenColor 00FF00`

---

cg_zoomTime 0-2000

Zoom change time, ms.

---

cg_zoomSensitivityAuto

Mouse sensitivity change mode during zoom.

`0` manual

`1` automatic

---

cg_zoomSensitivityMultiplier

Sensitivity multiplier during zoom, if manual change mode is set.

The final sensitivity is `sensitivity` * `cg_zoomSensitivityMultiplier`.

---

cg_projectileNudge 0/1

Missile/plasma rendering lag compensation. Draws projectiles slightly ahead, as the server sees them.

`0` disabled

`1` enemy projectiles

`2` friendly projectiles

`3` enemy and friendly projectiles

---

cg_delag 0|1|2|4

If enabled, will draw shots to the predicted point, not where the crosshair points.

Purely a visual effect, does not affect how the server processes the shot.

`0` disabled

`1` LG and RG

`2` LG only

`4` RG only

---
cg_predictStepOffset 0/1

Smoothing when going up a step.

`0` off

`1` on

---

cg_spectGlow 0/1

Player highlighting in spectator mode.

`0` off

`1` on

---

cg_spectOrigModel 0/1

Use original player model in spectator mode.

`0` off

`1` on

---

cg_fragSound 0..N

Sound when frag is received.

`0` off

`1` built-in sound

`2` Sounds with number 2 and higher are absent, available for customization. Sound file should have path `sound/feedback/fragSoundN.wav`
where N is corresponding sound number, for example: `sound/feedback/fragSound2.wav`.

---

cg_damageKick 0/1

Camera shake when taking damage. This command is in OSP 1.03, but it didn't work there.

`0` off

`1` on

---

cg_drawTimer 0/1/2

Whether to show the timer

`0` off

`1` on, top right

`2` on, top center

---

cg_drawCenterMessages

Display messages in the center of the screen, alternative to cg_centerTime

`0` off

`1` on

---

cg_drawGun 0/1/2/3

Whether to show the weapon

`0` off

`1` show

`2` show static (no animation of movement)

`3` show with transparent shader, static

---

cg_gunColor <color>

Color for cg_drawGun 3

---

cg_gunOpaque 0-1

Strength opacity

`0` not visible

`1` visible at 100%

---

cg_lightningHide 0/1

Hides your shaft beam.

`0` off

`1` on

---

cg_lightningHideCrosshair 0/1

Hides the crosshair when using the shaft.

`0` off

`1` on

---

cg_lightningSilent 0/1

Disables the hit sound when using the shaft.

`0` off

`1` on

---

cg_lightningHitsoundRateFix 0/1

Fixes the hitsound sound for LG with non-multiple sv_fps settings.

`0` off

`1` on

---

cg_altLightning 0-15

Advanced shaft beam rendering settings.

`0` No change

`1` No change

`2` Thin shaft beam.

`3-15` For customization. Shaders
`lightningBoltNew3..lightningBoltNew15`/`lightningBoltNewNoPicMip3..lightningBoltNewNoPicMip15` are used.
If there is no shader, then the shader as in `cg_altLightning 0` is used.

---

cg_drawCrosshairGauntlet -1..9
cg_drawCrosshairMachinegun -1..9
cg_drawCrosshairShotgun -1..9
cg_drawCrosshairGrenadeLauncher -1..9
cg_drawCrosshairRocketLauncher -1..9
cg_drawCrosshairLightning -1..9
cg_drawCrosshairRailgun -1..9
cg_drawCrosshairPlasmagun -1..9
cg_drawCrosshairBFG -1..9

Individual sights for each weapon.

`-1` sight will not change

`0-9` sight number

---

cg_crosshairAspectRatioFix 0/1

Correction of sight proportions.

---

cg_noLeadSounds 0/1

Disables voice notification of leadership for non-team modes.

`0` notification is present

`1` notification is not present

---

cg_noTeamChatBeep 0/1

Disables sound when receiving team messages.

`0` sound is present

`1` sound is not present

---

cg_teamRails 0/1

Scans railgun tracks.
Value 2 no longer works.

`0` normal color

`1` red/blue

---

cg_hideScores 0/1

Disable scoreboard for XQ3E client to prevent double rendering.

`0` off

`1` on

---

cg_deadBodyBlack 0/1/2/3

Player corpses turn gray.

`0` off

`1` light gray

`2` gray

`3` dark gray

---

cg_simpleItems 2

Added value 2 - visually enlarges and slightly raises some 2d items.

---

crossnext
crossprev
crossdecornext
crossdecorprev

Switches crosshair or decor to the next or previous option.

---

cg_shud 0/1

Enables superhud.

---

ch_file

Name of the configuration file for superhud. The file must be located in the hud directory and have the extension '.cfg'.
The name is specified without the path and extension. For example, for the file 'hud/myconfig.cfg' you need to specify 'myconfig'.

---

reloadHUD

Reread the superhud configuration.

---

cg_chatEnable 0..3

Disables messages in the console.

`0` All disabled

`1` General messages enabled.

`2` Command messages enabled.

`3` General and command messages enabled.

---

cg_shudChatEnable 0..3

Disables messages in superhud.

`0` Disabled all

`1` Enabled general messages.

`2` Enabled team messages.

`3` Enabled general and team messages.

---

cg_playersXID 0/1/2

Add XID calculated based on player configuration to player nicknames.
After changing, vid_restart must be executed.

`0` Disabled

`1` Always added.

`2` Only added for duplicate nicknames and empty nicknames.

---

playersid

Display a list of players with additional information.

---

clientconfig

Display client configuration.

---

mute <player ID>
unmute <player ID>

Block messages from a player with a specific nickname. The current player ID must be specified as an argument.

The player ID can be obtained by entering the command without an argument.
The list of blocked players is saved in the chatfilter.txt file and can be edited in a text editor.

---

showfont <font name>

Show all font characters on the screen. The argument is the font name, for example sansman.

Entering without parameters disables font display.

---

cg_hitsounds -1/0/1/2

Different hitsound pitch depending on the amount of damage. There are 4 threshold values ​​at which the pitch changes: 25, 50, 75, 100.

`-1` No sound

`0` No pitch change

`1` The higher the damage, the lower the pitch.

`2` The higher the damage, the higher the pitch.

---

cg_stackHitSounds 0/1

Stacking damage for hitsound.

`0` disabled

`1` enabled

---

cg_healthLow, cg_healthMid

Threshold levels when the armor/health amount color will change.

---

cg_healthColorLevels 0/1

Use threshold levels when the armor/health amount color will change.

`0` do not use, colors as in VQ3

`1` use

---

ch_crosshairDecor 0..26

Draws decor around the crosshair.

`0` disabled

`1..N` decor number

---

ch_crosshairDecorSize 0..N

Size of decor.

---

ch_crosshairColor <color> ch_crosshairDecorColor <color>

Color of the crosshair or decor.

---

ch_crosshairRotate45 0/1 ch_crosshairDecorRotate45 0/1

Rotates the crosshair or decor by 45 degrees.

`0` disabled

`1` enabled

---

ch_crosshairAction 0..7 ch_crosshairDecorAction 0..7

Adds effects to decor or crosshair. Bitmask, effects can be combined.

`0` disabled

`1` Pulses when hitting a target. Does not work if `cg_crosshairPulse` is enabled.

`2` Invisible, but appears when hitting a target

`4` Changes color when hitting a target. Does not work if `cg_crosshairHealth` is enabled.

---

ch_crosshairActionColor <color> ch_crosshairDecorActionColor <color>

Action color of the crosshair or decor at action 4.

---

ch_crosshairActionScale 0.1-10 ch_crosshairDecorActionScale 0.1-10

Magnification factor of the crosshair or decor at action 1.

---

ch_crosshairActionTime 50-1000 ch_crosshairDecorActionTime 50-1000

Action time of the crosshair or decor at action 1,2.

---

ch_crosshairOpaque 0..1 ch_crosshairDecorOpaque 0..1

Transparency of the crosshair or decor.

---

ch_crosshairAutoScale 0..1

Reduce the size of the crosshair depending on the distance.

---

cg_damageDraw 0..2

Animation when taking damage

`0` disabled

`1` blood.

`2` pointer.

---

cg_damageSound 0..1

Sound when taking damage

`0` no sound

`1` sound

---

cg_teamFrozenFoe 0..1

Show snowflake in freezeTag mode

`0` normal foe tag

`1` snowflake if frozen

---

cg_unfreezeAlert 0..1

Play warning after unfreezing in freezeTag mode

`0` no sound

`1` sound

---

cg_damageIndicatorOpaque 0..1

Pointer opacity when `cg_damageDraw 2`

---

cg_damageIndicatorScale 0..1

Pointer size when `cg_damageDraw 2`

---

+shudchat

Force show chat in superhud.

---

cg_dlightGauntlet <color>
cg_dlightGL <color>
cg_dlightLG <color>
cg_dlightMG <color>
cg_dlightPG <color>
cg_dlightRG <color>
cg_dlightRL <color>
cg_dlightSG <color>
cg_dlightBFG <color>

Sets the tint of dynamic lighting for weapons

---

cg_conObituaries 0/1

Output of kill/defrost messages to console.

`0` is not output

`1` is output

---

ch_fragMessage
cg_fallKick
cg_smokegrowth_gl
cg_smokeradius_gl
cg_smokegrowth_rl
cg_smokeradius_rl
cg_smoke_sg

These commands were unlocked for VQ3 mode, the effect of the commands themselves did not change.

---

menu*
cg_float
cg_drawDecals
decal*
cg_defferPlayers
cg_teamChatsOnly
cg_chatDisable

Not working and no plans to restore.
