#!/usr/bin/env bash

# switch to Games/pc directory
cd "$HOME"/Games/pc/

# unzipping .zip files
for i in *.zip;do
    unzip "$i" && rm "$i"
done

printf "\n\n zip files unzipped, creating symlinks...\n\n"


# creating symlinks to put games in GOG_Games directory in all wine prefixes

prefixes=("/home/evan/Games/lutris/gog/homeworld-remastered-collection", "/home/evan/.wine")

# Make sure current directory is still $HOME/Games/pc
cd "$HOME"/Games/pc/;

for i in *;do
    for p in "$prefixes";do
        sudo ln -s "$(pwd)"/"$i" "$p"/drive_c/GOG_Games/"$i" && printf "\n\n Linking '$i' to '$p'\n\n"
    done
done


# symlinks for .wine
for i in *;do sudo ln -s $(pwd)/"$i" $HOME/.wine/drive_c/GOG_Games/"$i";done


# Symlinks finished message followed by script finished message
printf "\n\n Symlinks created, games accessible from wine prefixes\n\n";
printf "\n\n All processes finished. Games prepared!!!\n\n";

