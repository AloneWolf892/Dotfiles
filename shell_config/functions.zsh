#! /usr/bin/env zsh

fn vim(){
  nvim $1
}

fn lsports() {
  sudo lsof -i -P -n | rg LISTEN
}

fn restart_waybar() {
  pkill waybar && hyprctl dispatch exec waybar
}

fn mkcd() {
  mkdir $1 && cd $1
}
