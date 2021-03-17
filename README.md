# Pokemon Yellow Redux

This project was forked from a modified disassembly of Pokemon Yellow:
https://github.com/dannye/pokeyellow-gen-II

## Setup

This is to supplement the documentation from the parent repo, as some of its dependencies are 
out of date.

You will need to be able to invoke the make command to build this project, if you are on linux 
you should be chillin, if you are on windows, go checkout Cygwin or MinGW

* https://www.cygwin.com/
* http://mingw-w64.org/doku.php

Create a python 2 virtual evironment, upgrade your pip, and then run:
    
    pip install pypng

Next go to the rgbds repo here:

* https://github.com/gbdev/rgbds/releases/tag/v0.2.5

And install the project (using version <= 3.0 is necessary for compatibility of the assembler)

*Note on windows, you can simply take the zipped executables and add them to a folder on your path*

Clone this repo to a separate location to build the base game:

    git clone --recursive https://github.com/pret/pokeyellow
    cd pokeyellow

Take a copy of the common "Pokemon Yellow (U) [C][!].gbc" (you can easily find this online) 
and move it to the root of pokeyellow under the name "baserom.gbc".

Then run:

    make


If all is well, a pokeyellow.gbc file should appear in the tall grass of the base directory.

*pokeyellow.gbc is a playable base version of the game, but it lacks the gen 2 sprites*

Now you should be ready to move the valid pokeyellow.gbc to the poke-yellow-redux root 
directory under the name "baserom.gbc"

Then once again run:

    make

This should generate a working ROM with the gen2 sprites. 

# Hold up, I thought this was a Redux?

Yep! I will be slowly working to modify the pokemon of the base game to give a fresh playing 
experience with a better difficulty curve! This will be built on top of the gen2 repaint of 
pokemon yellow, just to help increase the playability. 

# Goals

I want to reimaging the gen 1 pokemon scene to have more diverse and competitive typing, as well 
as reworking the stats to make every pokemon viable for the whole game. When playing through the 
classic games, I always end up with some variation of the same 10 pokemon on my final teams - 
unless I played a Nuzlocke or forced myself to use less powerful pokemon. So the goal is to be 
more fair to all of the pokemon in gen1 and give each of them a viable play style. 

Additionally, the difficulty of opponents will be increased to make playthroughs more interesting. 

Current goals for the Redux:

* Retyping of classic pokemon (Gen 1 types only), especially those with terrible defensive typing
* Respec stats, try to create greater parity between all pokemon
    * Boost the stats of "early game" pokemon
    * Boost the stats of pokemon without evolutions
    * Boost the stats of 1st stage pokemon, but reduce the boost from evoution
        - this prevents evolutionless pokemon from having a major early game advantage
    * Factor in that the special stat is essentially a combined spAtk and spDef
* Redesign the movepool so that there is greater type diversity and parity 
    * Give some love to the bug and dragon types
    * Remove all 1HKO moves and bugged moves such as wrap
* Overhaul movesets and greatly increase the number of availble moves to a given pokemon 
    * *This will need to be explored, I dont know if expanding a moveset will cause instability*
    * Create post-stone evolution movesets that are different from pre-stone
* Reassign the wild pokemon availble on routes
    * Create greater type-affinity to certain locations
    * Improve diversity in available pokemon at each location
    * Ensure that you can truly catch em all
    * Make less pokemon constrained to end game locations to create greater options early on
* Redesign the TM pool
    * This generation had a lot of TMs that were only learnable by a small number of pokes
    * Add more interesting moves to TMs
    * Bonus: Make a regional TM available at each city's shop
* Make gym battles more demanding
    * You should feel like you earned that badge
* Bonus: Mix up some of the in-game trades
* Bonus: Remove all trade requirements for evolution
* Considering: Make stone evolutions less necessary, but more interesting - i.e. less stat boosts 
but greater change in typing and different moveset paths
* Considering: Making fresh water available in cerulean/vermillion city to open up the game more 
and allow a less linear approach to the gyms

*I'm also considering implementing gendered pokes, with type and stat diferences between them to*
*help mix things up, this depends on how stable the additional memory spaces are in the pokedex,*
*i.e. putting missigno to work*
