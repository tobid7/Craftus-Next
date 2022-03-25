# Craftus-Next <a href="https://github.com/Tobi-D7/Craftus-Next/actions?query=workflow%3A%22Build+Craftus-Next%22">
   <img src="https://img.shields.io/github/workflow/status/Tobi-D7/Craftus-Next/Build%20Craftus-Next.svg?logo=github&style=for-the-badge" height="22" alt="Build status on GitHub Actions"></a>&nbsp;
### There are Dev builds available at (https://github.com/NPI-D7/nightlys/releases/) but they are unstable. They can crash or something so downloading at youre own risk.
A more updated version of the Craftus Minecraft Clone
# Step 1
Port the ge to c++ using Npi for 2D and 3D graphics.

# Original Redme
Custom version of craftus that intends to clone minecraft 1.16.5

Releases aren't going to be too common (hrr drr, changed a variable name, make a release just for it)

To build from source, it's like building any other 3ds homebrew app. Just run make and if you've got devkitpro setup right, it'll give you craftus.3dsx

You'll need a hacked system that can load homebrew for this to run (citra is good for testing but i haven't been able to get most of the controls working there)


Craftus Redisigned is a modified version of Craftus Reloaded : https://github.com/RSDuck/craftus_reloaded.


After launching it for the first time, you can change the controls in `sd:/craftus_redesigned/options.ini`.
You can also change the settings in `sd:/craftus_redesigned/options.ini`.

## Controls

| Category | Action | OLD 3DS | NEW 3DS |
| ------------- | ------------- | ------------- | ------------- |
| Blocks | Place Block | L | ZL |
| Blocks | Break Block | R | ZR |
|  |  |  |  |
| Move | Forward | Circle Pad (Up) | Circle Pad (Up) |
| Move | Backward | Circle Pad (Down) | Circle Pad (Down) |
| Move | Left | Circle Pad (Left) | Circle Pad (Left) |
| Move | Right | Circle Pad (Right) | Circle Pad (Right) |
| Move | Jump | DPad (Up) | A/B/DPad (Up) |
| Move | Shift | DPad (Down) | Y/X/DPad (Down) |
|  |  |  |  |
| Camera | Up | X | C-Stick (Up) |
| Camera | Down | B | C-Stick (Down) |
| Camera | Left | Y | C-Stick (Left) |
| Camera | Right | A | C-Stick (Right) |
|  |  |  |  |
| Inventory | Switch Block | DPad (Left) | L/DPad (Left) |
| Inventory | Switch Block | DPad (Right) | R/DPad (Right) |
|  |  |  |  |
| Commands | Open Console | Select | Select |
|  |  |  |  |
| Menu | Back | Start | Start |


# Credits
* ag_0815 for fixing audio
* Onixiya for his more updated version of craftus redesigned
* People in the nintendo homebrew discord server willing to answer stupid questions
* KosmicDev for better y spawning code
* GamesSanti who made Craftus Redesigned
* RSDuck who made Craftus and Craftus Reloaded
* People who made 3DS homebrew possible
    * Especially smea for 3dscraft which is good place for ~~stealing ideas~~ inspiration
    * Contributors of the 3dbrew.org wiki and ctrulib
    * Fincs for citro3d
    * More people I forgot about, even though I extended this list multiple times
* Tommaso Checchi, for his [culling algorithm](https://tomcc.github.io/2014/08/31/visibility-1.html), orginally developed for the use in MC PE
* Of course all other MC devs, how could I forget them?
* All people who worked on the libraries Craftus is depending on(see the dependencies folder)
