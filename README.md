中文 | [English](READEME.EN.md)

![](https://visit-count.vercel.app/api/count?id=KiritaniAyaka.AutoHJKL)

---

# AutoHJKL

AutoHJKL 是一个使用 AutoHotkey 编写的脚本。它的主要功能是为 CapsLock 键赋予额外的功能。

AutoHJKL 集成了一些咱个人使用的功能，也保留了扩展能力，如果你会 AutoHotkey，也可以为你自己的脚本绑定热键。它有一定的灵活性与可扩展性。

## 名字

由于最初只是用于在 HJKL 键上绑定方向键的脚本，又是使用 AutoHotkey 开发，因此命名为 AutoHJKL。

# 如何使用

你有两种方式使用该脚本：如果你不了解什么是 AutoHotkey，建议使用发布版本；如果你是 AutoHotkey 开发者，建议使用环境运行脚本。

不论通过哪种方式来使用，都建议你使用管理员身份运行此脚本，以防止在某些 UI 界面中脚本失效。

## 使用发布版本

如果你在 GitHub 页面中看到了 Release，则可以在 Release 处下载二进制文件。（.exe）

## 使用环境运行

首先你需要一个 [AutoHotkey](https://www.autohotkey.com/) 来运行这个脚本，由于脚本使用的语法限制，你只能使用 [AutoHotkey1.1](https://www.autohotkey.com/download/ahk-install.exe) 来运行此脚本。（**不要使用正在 Beta 阶段的 AutoHotkey v2 版本，也不要使用过时的 1.0 版本**）

在安装好 AutoHotkey 环境后，右键 AutoHJKL.ahk 文件，选择 `Run Script` 即可。

# 基础使用

使用 <kbd>CapsLock</kbd> 键加上以下按键来触发对应的功能。

许多的快捷键都有一定的规律，也有的组合键是从 Windows 操作系统的快捷键中推出的，因此你不必死记硬背对应的按键。

|按键|功能|备注|
|:-:|:-:|:-:|
|<kbd>H</kbd> <kbd>J</kbd> <kbd>K</kbd> <kbd>L</kbd>|`←` `↓` `↑` `→`||
|<kbd>Shift</kbd> + <kbd>H</kbd> <kbd>J</kbd> <kbd>K</kbd> <kbd>L</kbd>|选中 `←` `↓` `↑` `→`|可以配合 <kbd>Ctrl</kbd> 键选中一词|
|<kbd>U</kbd> <kbd>I</kbd> <kbd>O</kbd> <kbd>P</kbd>|<kbd>PageUp</kbd> <kbd>Home</kbd> <kbd>End</kbd> <kbd>PageDown</kbd>||
|<kbd>Shift</kbd> + <kbd>U</kbd> <kbd>I</kbd> <kbd>O</kbd> <kbd>P</kbd>|选中 <kbd>PageUp</kbd> <kbd>Home</kbd> <kbd>End</kbd> <kbd>PageDown</kbd>||
|<kbd>W</kbd> <kbd>A</kbd> <kbd>S</kbd> <kbd>D</kbd>|移动鼠标 `↑ ` `← ` `↓`  `→`||
|<kbd>Q</kbd> <kbd>E</kbd>|`鼠标左键` `鼠标右键`||
|<kbd>R</kbd> <kbd>F</kbd>|`鼠标滚轮 ↑` `鼠标滚轮 ↓`||
|<kbd>Shift</kbd> + <kbd>R</kbd>、<kbd>Shift</kbd> + <kbd>F</kbd>|`鼠标滚轮 ←` `鼠标滚轮 →`||
|<kbd>T</kbd>|回车 <kbd>Enter</kbd>|可以配合 <kbd>Shift</kbd> 键|
|<kbd>B</kbd>|退格 <kbd>Backspace</kbd>||
|<kbd>Shift</kbd> + <kbd>B</kbd>|删除一行||
|<kbd>Ctrl</kbd> + <kbd>B</kbd>|删除一个单词|单词的界限受操作系统与编辑器影响|

# 高级使用

## 剪贴板

使用 <kbd>CapsLock</kbd> + <kbd>X</kbd> <kbd>C</kbd> <kbd>V</kbd> 任意一键，然后在 3 秒内按 <kbd>0</kbd> - <kbd>9</kbd> 数字键即可。

<kbd>X</kbd> 表示剪切；<kbd>C</kbd> 表示复制；<kbd>V</kbd> 表示粘贴。

例如：

按下 <kbd>CapsLock</kbd> + <kbd>X</kbd> 后，再按 <kbd>1</kbd> 表示 `剪切`(因为按下的组合是 <kbd>X</kbd>) 内容到剪贴板 `1`。

> ~~注意： AutoHJKL 的剪贴版功能依赖于系统的剪贴板，因此在使用时会覆盖系统剪贴板内容。~~ (从 v0.2 开始不再覆盖)
> 剪贴板保存在 AutoHJKL 根目录下的 clipboard 中，重启不影响剪贴板数据。

## 窗口绑定

### 绑定

按下 <kbd>CapsLock</kbd> + <kbd>Alt</kbd> + <kbd>W</kbd> 后，然后在 3 秒内按 <kbd>0</kbd> - <kbd>9</kbd> 数字键即可将当前活动窗口绑定到对应数字上。

### 激活

按下 <kbd>CapsLock</kbd> + <kbd>Alt</kbd> + <kbd>S</kbd> 后，然后在 3 秒内按 <kbd>0</kbd> - <kbd>9</kbd> 数字键即可将绑定过的窗口激活。

> 注意：绑定的窗口 ID 将保存在根目录下的 window 目录中，重新加载脚本不影响已绑定的窗口，重启系统也不会。
> 但如果程序发现已绑定的窗口被关闭，则会删除保存的绑定记录。

### 置顶窗口

按下 <kbd>CapsLock</kbd> + <kbd>Alt</kbd> + <kbd>T</kbd> 置顶当前焦点的窗口。

### 隐藏与显示

按下 <kbd>CapsLock</kbd> + <kbd>Alt</kbd> + <kbd>H</kbd> 隐藏当前焦点的窗口。

按下 <kbd>CapsLock</kbd> + <kdb>Alt</kdb> + <kbd>D</kbd> 显示所有被隐藏的窗口。

## AltTab 增强

按下 <kbd>Alt</kbd> + <kbd>Tab</kbd> 键呼出 Task Switcher，松开 <kbd>Tab</kbd> 键并按住 <kbd>Alt</kbd> 键。此时可以使用 <kbd>W</kbd> <kbd>A</kbd> <kbd>S</kbd> <kbd>D</kbd> (或者 <kbd>H</kbd> <kbd>J</kbd> <kbd>K</kbd> <kbd>L</kbd>) 键来移动你的焦点；按 <kbd>C</kbd> 关闭当前焦点的窗口。

## 重启脚本

<kbd>CapsLock</kbd> + <kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>R</kbd> 即可重启脚本。（非调试用户脚本时通常不需要重启）

# 其他快捷功能

## 打开 Cmd / Terminal / Powershell

按 <kbd>Z</kbd> 打开 Windows Terminal。

按 <kbd>Alt</kbd> + <kbd>Z</kbd> 打开 Cmd。

按 <kbd>Ctrl</kbd> + <kbd>Z</kbd> 打开 Powershell。

如果程序可以在当前焦点的窗口上找到路径，则会从该路径打开 Cmd / Terminal 。

# 其他快捷键映射

> 下列映射均省略了 <kbd>CapsLock</kbd> 键。

|按键|映射|备注|
|:-:|:-:|:-:|
|<kbd>Alt</kbd> + <kbd>R</kbd>|<kbd>F2</kbd>|如果你有 F2 键，这可能对你来说没什么用|
