# VerticalNavigation

Moving in grids with screenreaders on Android devices has always been a pain. It doesn't really matter, if you're playing a chess game or just want to navigate between icons on your desktop, interestingly no screenreader is able to do action as basic as jump to the element directly below or above the currently focused item.

Therefore, for example in the above mentioned chess game, on a 8x8 grid, moving from C3 to C4 or C2 takes not one, but eight swipes. Similarly, travelling from A1 to h8 takes 63 swipes instead of 14, and if you have for some reason changed your mind on the way, you have to swipe all the tiles back to get to the original position.

This is not just exhausting, but also takes a lot of time and breaks the positional awareness, that the grid layout is trying to provide.

VerticalNavigation project solves this issue. It consists of two plugins, which together allow the user to move to elements above or below just by one swipe.

## Building

Getting things ready should be a rather smooth process:
1. Clone the repository, either wia the GitHub interface or:\
```git clone https://github.com/RastislavKish/VerticalNavigation```
2. In order to "compile" the plugins, simply package the content of their directories (NavigateDown, NavigateUp) as zip archives and change the extension to .ppk. The names you use will be used as pluginNames.

Every GitHub release contains also prepackaged .ppk files, which you can directly download and use.

## Installation and usage

After you have optained the .ppk files, all you need to do is to copy them to your device and open in JSR using your favourite files browser. A simple dialog will appear, asking for confirmation of the installation.
After you have successfully installed both plugins, you probably want to set them to get activated by gestures.
If you're not using gesture themes, you can do it as follows:
1. Open Jieshuo app and navigate to General settings.
2. Make sure that Use custom gestures checkbox is checked.
3. Navigate to Custom gesture settings menu and find the gesture you want to use for navigating down, for example swipe down.
4. After activating the item, select to assign a plugin and find NavigateDown in the list. After submitting, the gesture should be configured.
5. Repeat from step 3, now for navigation up. Swipe up is the recommended gesture in this case.

## Known limitations

The primary purpose of VerticalNavigation has been to make grid based games more accessible, and it has been successful in this area.

However, when it comes to general use, there are two major limitations to keep in mind:
* There is no mechanism for scrolling yet. Therefore, if the grid or list you want to navigate is not fully visible, the hidden items will be unreachable.
* There is no support for navigation in tables on web yet. HTML tables have a bit more complex structure than Android grids, which needs special approach.

both issues are known and planned to be resolved in future releases.

