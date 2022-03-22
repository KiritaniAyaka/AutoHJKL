[中文](README.md) | English

![](https://visit-count.vercel.app/api/count?id=KiritaniAyaka.AutoHJKL)

---

# AutoHJKL

AutoHJKL is a tools scripted via AutoHotkey. Its main feature is endure extra function to CapsLock key.

AutoHJKL contains some features for personal use. And you can script your personal features for it. It has seom flexibility and scalability.

## About name

It's a script binding HJKL keys to arrow keys at first and it's scripted via AutoHotkey. So I named it AutoHJKL.

# How to run

You have two ways to run this script: Use release version if you don't know what is AutoHotkey; Or run script via AutoHotkey environment if you are AutoHotkey developer.

## Use release version

You can download release binary file on GitHub if you can see the GitHub Release page. (.exe)

## Run script via environment

Firstly, you need a [AutoHotkey](https://www.autohotkey.com/) to run this script. You can only use [AutoHotkey1.1](https://www.autohotkey.com/download/ahk-install.exe) because of the sytax used. (**Don't use AutoHotkey v2 cause it's still in Beta. And do not use deprecated 1.0 version too**)

Right click AutoHJKL.ahk file and choose `Run Script` after install AutoHotkey environment.

# Basic Usage

Use <kbd>CapsLock</kbd> plus the following keys to trigger features.

Many shortcut keys have certain rules. Some key combination is derived from the OS like Windows, so you do not have to memorize them.

|Keys|Features|Comment|
|:-:|:-:|:-:|
|<kbd>H</kbd> <kbd>J</kbd> <kbd>K</kbd> <kbd>L</kbd>|`←` `↓` `↑` `→`||
|<kbd>Shift</kbd> + <kbd>H</kbd> <kbd>J</kbd> <kbd>K</kbd> <kbd>L</kbd>|Select `←` `↓` `↑` `→`|Can take effect with <kbd>Shift</kbd> to select a word.|
|<kbd>U</kbd> <kbd>I</kbd> <kbd>O</kbd> <kbd>P</kbd>|<kbd>PageUp</kbd> <kbd>Home</kbd> <kbd>End</kbd> <kbd>PageDown</kbd>||
|<kbd>Shift</kbd> + <kbd>U</kbd> <kbd>I</kbd> <kbd>O</kbd> <kbd>P</kbd>|Select <kbd>PageUp</kbd> <kbd>Home</kbd> <kbd>End</kbd> <kbd>PageDown</kbd>||
|<kbd>W</kbd> <kbd>A</kbd> <kbd>S</kbd> <kbd>D</kbd>|Move mouse `↑ ` `← ` `↓`  `→`||
|<kbd>Q</kbd> <kbd>E</kbd>|`Mouse Left Click` `Mouse Right Click`||
|<kbd>R</kbd> <kbd>F</kbd>|`Mouse Wheel ↑` `Mouse Wheel ↓`||
|<kbd>Shift</kbd> + <kbd>R</kbd>、<kbd>Shift</kbd> + <kbd>F</kbd>|`Mouse Wheel ←` `Mouse Wheel →`||
|<kbd>T</kbd>|<kbd>Enter</kbd>|Can take effect with <kbd>Shift</kbd> .|
|<kbd>B</kbd>|<kbd>Backspace</kbd>||
|<kbd>Shift</kbd> + <kbd>B</kbd>|Delete a line||
|<kbd>Ctrl</kbd> + <kbd>B</kbd>|Delete a word|The edge of a word is decided by OS and Editor|

# Advance Usage

## Clipboard

Use <kbd>CapsLock</kbd> + <kbd>X</kbd> <kbd>C</kbd> <kbd>V</kbd> , then press number key <kbd>0</kbd> - <kbd>9</kbd>.

<kbd>X</kbd> means Cut; <kbd>C</kbd> means Copy; <kbd>V</kbd> means Paste.

For example：

After press <kbd>CapsLock</kbd> plus <kbd>X</kbd> , press <kbd>1</kbd> means `Cut`(cause press <kbd>X</kbd>) to Clipboard `1`。

> ~~Note: The Clipboard feature was based on System Clipboard so that will cover the content of System Clipboard~~ (Not applicable after v0.2)
> The Clipboard saved at `clipboard` directory of script root dir, reboot/reload does not affect clipboard data.

## Window Bind

### Bind

After press <kbd>CapsLock</kbd> + <kbd>Alt</kbd> + <kbd>W</kbd> , then press <kbd>0</kbd> - <kbd>9</kbd> in 3sec to bind current active window to the number you pressed.

### Active

After press <kbd>CapsLock</kbd> + <kbd>Alt</kbd> + <kbd>S</kbd> , then press <kbd>0</kbd> - <kbd>9</kbd> in 3sec to active the window you binded.

> Note: The id of binded window saved at `window` directory of root dir, reload script and reboot system does not affect window binded.
> But the binding records will be deleted if the script found window binded was closed.

### Hide and show

Press <kbd>CapsLock</kbd> + <kbd>Alt</kbd> + <kbd>H</kbd> to hide the focused window.

Press <kbd>CapsLock</kbd> + <kdb>Alt</kdb> + <kbd>D</kbd> to show all hidden windows.

## AltTab Enhance

Press down <kbd>Alt</kbd> + <kbd>Tab</kbd> to call out Windows TaskSwitcher, release <kbd>Tab</kbd> and keep pressing <kbd>Alt</kbd> . Then you can use <kbd>W</kbd> <kbd>A</kbd> <kbd>S</kbd> <kbd>D</kbd> (Or <kbd>H</kbd> <kbd>J</kbd> <kbd>K</kbd> <kbd>L</kbd>) to move your focus; Press <kbd>C</kbd> to close the window which has focus.

## Reload Script

Press <kbd>CapsLock</kbd> + <kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>R</kbd> to Reload script. (Usually not required unless debugging user script)

# Other shortcut functions

## Open Cmd / Terminal / Powershell

Press <kbd>Z</kbd> to open Windows Terminal.

Press <kbd>Alt</kbd> + <kbd>Z</kbd> to open Cmd.

Press <kbd>Ctrl</kbd> + <kbd>Z</kbd> to open Powershell.

If the program can find a path on your focus window, Cmd / Terminal will open at this path.

# Other keymaps

> The keymap below are omitted <kbd>CapsLock</kbd> key.

|Keys|Map|Comment|
|:-:|:-:|:-:|
|<kbd>Alt</kbd> + <kbd>R</kbd>|<kbd>F2</kbd>|If you have F2 key, it may be useless for you|
