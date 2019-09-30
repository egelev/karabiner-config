# karabiner-config

This repository contains a set of configurations for [Karabiner-Elements](https://pqrs.org/osx/karabiner/)

Their purpose is to tweak a Mac keyboard to behave like a Windows/Linux one. Each config may be enabled/disabled separately. The are grouped by the applications they affect or by their relevance to each other.

**How to install the configs ?**
```
git clone https://github.com/egelev/karabiner-config.git
mkdir -p ~/config/karabiner/assets/complex_modifications/
cp karabiner-config/config/karabiner/assets/complex_modifications/*.json ~/config/karabiner/assets/complex_modifications/
```

**Why copying instead of symlinking the configs ?**

Have a look at [this issue](https://github.com/tekezo/Karabiner-Elements/issues/597).

**How to enable the configurations ?**

1. Open Karabiner-Elements
2. Select the 'Complex Modifications' tab
3. Click the 'Add Rule' button in the bottom left corner
4. Select the line describing the config you want to enable
5. Click the 'Enable' button

**How to disable the configurations ?**
1. Open Karabiner-Elements
2. Select the 'Complex Modifications' tab
3. Click the remove button for the configuration you want to disable. This won't delete the config. You will be able to re-enable it later.


All these configurations rely on the fact that **cmd** and **ctrl** are swapped and they modify the behaviour of **ctrl**.
To configure this use the following simple configs:

For all Keyboards:
![alt text](https://i.ibb.co/sPbhy91/Screenshot-2019-09-30-at-15-47-36.png "Right command to option")

For Apple internal keyboard:
![alt text](https://i.ibb.co/PrDSnTV/Screenshot-2019-09-30-at-16-00-11.png "Modifier keys")


In additon to these configs one may find useful to configure their Mac global keyboard shortcuts like this:
![alt text](https://i.ibb.co/qjZsc4X/Screenshot-2019-09-30-at-15-58-16.png "Mac keyboard shortucs")

Also, selecting **"Use Option as Meta key"** in the Terminal->Preferences->Profiles->Keyboard enables the **Option** key behave like the **Alt** key on Windows/Linux systems.
