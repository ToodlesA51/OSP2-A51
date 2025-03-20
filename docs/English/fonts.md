# Font system

The font system is based on [baseq3a](https://github.com/ec-/baseq3a).
The main difference between these fonts is automatic resolution selection and support for proportional (not monospaced) fonts.

In addition to the classic q3 graphic font file, a configuration file is used.
Configuration files are located in the `gfx/2d` directory and have the cfg extension.

File format:

```
// img <font image> <threshold>, up to 4 entries allowed
img "gfx/2d/bigchars_64.tga" 48
img "gfx/2d/bigchars_32.tga" 22
img "gfx/2d/bigchars_16.tga" 0
// fnt <width> <height> <char width> <char height>
fnt 1024 1024 64 64
// <ch> <x0> <y0> <x1> <w> <s1> <s2>
0 0 0 24 16 6 6
1 64 0 4 56 4 4
2 128 0 4 56 4 4
```

## `img <font image> <threshold>`

Here you specify the font file and the minimum height when it can be used. For each specific font size, the maximum file with the maximum possible extension will be selected.

## `fnt <width> <height> <char width> <char height>`

The resolution of the entire graphic file in pixels and the size of the field of one character.

## `<ch> <x0> <y0> <x1> <w> <s1> <s2>`

- `ch` - the character number.
- `<x0> <y0>` - the coordinates of the character field in the file.
- `<x1> <w>` - the offset to the beginning of the character and its width inside the character field (for proportional printing).
- `<s1> <s2>` - how many empty pixels to leave on the left and right when printing (for proportional printing).

## Font Generator

You can use the `util/q3font.py` script to create a configuration file. This script requires situational modifications and does not give a final result, but it significantly simplifies the creation of new fonts.