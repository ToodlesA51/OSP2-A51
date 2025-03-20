# Text compiler

Compiles a text string into a sequence of commands.

Text string escape sequences:

- ^0-9,^a-z - set the text color, background color does not change
- ^b - blink option 1
- ^B - blink option 2
- ^F - show text for the first half of a second (at the time of compilation)
- ^f - show text for the second half of a second (at the time of compilation)
- ^X - set the shadow color
- ^N - cancel previous commands, except ^X. If used after ^X, makes the background color the text color, while the background color does not change.

## Command format

```
struct command_type {
OSP_TEXT_CMD_CHAR= 0, // print character
OSP_TEXT_CMD_STOP, // stop printing
OSP_TEXT_CMD_FADE, // set transparency level
OSP_TEXT_CMD_TEXT_COLOR, // set text color
OSP_TEXT_CMD_SHADOW_COLOR, // set background color
}

struct command
{
command_type type;
union
{
char character;
float fade;
vec4_t color;
}
}

```