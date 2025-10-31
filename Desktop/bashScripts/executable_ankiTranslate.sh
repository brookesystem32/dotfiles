#!/usr/bin/env bash

hyprctl dispatch focuswindow "class:obsidian"

{
  echo key k:1
  echo key y
  echo key y
} | dotool

wl-paste | trans -b | xargs | tr -d '\n' | wl-copy
{
  echo key i
  echo key alt+tab
  sleep 1
  echo key ctrl+v
} | dotool

#Screenshots
./ankiScreenshot.sh
