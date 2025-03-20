# OSP2-A51

This Quake 3 mod is an attempt to recover old OSP mod source codes and improve it.

Based on vanilla Q3 and OSP files analysis. 

Also used code from :

 - OSP2 from snems: https://github.com/snems/OSP2 
 - baseq3a from Cyrax: https://github.com/ec-/baseq3a
 - XQ3E: https://github.com/xq3e/engine, 
 - unlagged mod written by Nail Toronto 
 - Ratmod https://github.com/rdntcntrl/ratoa_gamecode

# A51 Changes

- Included English translated documentation.

# Known Issues

- ch_pickupitem - pickup string is not displaying when classic OSP1 hud is used.
- (FFA & Tourney) - scores are on top of lagometer when using Q3Comp Style status bars.
- ch_drawflagnames > 0 - scores are in the incorrect postion when using Q3Comp Style status bars.
- ch_drawflagnames - displays some name incorrectly.
- ch_crosshairnamesleft - bleeds into ammo numbers on some classic osp statusbars.
- OSP left sliding window MOTD's not display correctly on some servers.

# Features

- VQ3/Promode physics support
- CPMA like SuperHUD
- Proportional fonts
- Multilevel hitsounds and fragsound
- Crosshair decoration and animations
- Client side /mute for players

And many other small features

![alt text](https://github.com/snems/OSP2/blob/master/docs/shot.jpg?raw=true)

## Mod state

Only cgame now.


## Contacts

Telegram [channel](https://t.me/q3osp2).

Telegram [chat](https://t.me/q3_osp2).

## New commands

See [docs/commands.md](docs/commands.md)

Example config: OSP2.cfg inside mod.

## How to install

- Install Quake3 and OSP mod v1.03
- copy pack or library into `osp` folder

## How to build

Only linux qvm, other builds are not supported yet.

### Linux qvm

   `cd build/linux-qvm`

   `make` 

