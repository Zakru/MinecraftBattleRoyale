# MinecraftBattleRoyale

A collection of data packs to add a custom battle royale game mode to
any Minecraft world!

## Installation

To install MCBR to any of your Minecraft worlds, you must first get the
desired datapack(s). Either click the green "Clone or download" button
on GitHub, or clone this repository using

    git clone https://github.com/Zakru/MinecraftBattleRoyale.git

Now that you have acquired the datapack files, copy the desired
datapack(s) from the repository root folder into the `datapacks` folder
of your world. The installation is completed by starting the server,
opening the world or using the `/reload` command in-game.

## Usage

First, find a location that has a good area for the gameplay around it
(a 511x511 block square). Once you found the desired location, make sure
all players are alive in adventure mode, and then run `/function
battleroyale:start` (requires operator privileges). The game will
automatically start once all plugins installed have completed their
preparation.

## The game mode

At first, the game starts with a 511x511 square-shaped area around the
point at which `battleroyale:start` was called. After a specific time
interval (default time to first shrink is 10 minutes) the play area goes
to 1023x1023, centers at a random point and starts shrinking back to
511x511, possibly forcing some players to move towards the new center.

After the play area has shrunk, there is another interval after which
the area shrinks to half its dimensions. This repeats with shortening
intervals until the play area is 7x7.

When the play area's dimensions are 7x7, it will slowly shrink to 1x1,
making other players' locations ultimately obvious. After a minute, if
the players have managed to avoid each other, the play area is removed
entirely and "sudden death" begins, slowly killing the last survivors.
