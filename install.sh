#!/bin/bash

# Pfad des Skripts ermitteln
script_dir=$(dirname "$(realpath "$0")")

# Symlinks für skripte und target erstellen
ln -s "$script_dir/scripts/"  "$script_dir/../scripts"
ln -s "$script_dir/target/" "$script_dir/../target"
