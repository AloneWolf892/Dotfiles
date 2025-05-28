#! /usr/bin/env zsh

fn vim(){
  nvim $1
}

fn lsports() {
  sudo lsof -i -P -n | rg LISTEN
}

fn restart() {
  case "$1" in 
    "waybar")
      pkill waybar && hyprctl dispatch exec waybar;;
    
    "bluetooth")
      sudo systemctl restart bluetooth.service;;
    
    *)
      echo "Not a valid option";;
  esac
}

fn mkcd() {
  mkdir $1 && cd $1
}
