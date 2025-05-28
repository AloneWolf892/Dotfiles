#! /usr/bin/env zsh

fn vim(){
  nvim $1
}

fn lsports() {
  sudo lsof -i -P -n | rg LISTEN
}

fn restart() {
  opt=('waybar' 'bluetooth')

  case "$1" in 
    $opt[1])
      pkill waybar && hyprctl dispatch exec waybar;;
    
    $opt[2])
      sudo systemctl restart bluetooth.service;;

    "options")
      print -l $opt;;

    *)
      echo "Not a valid option";;
  esac
}

fn mkcd() {
  mkdir $1 && cd $1
}
