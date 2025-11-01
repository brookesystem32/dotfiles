#!/usr/bin/env bash
#Screenshots
hyprctl dispatch focuswindow "class:zen"

grimblast copy active
{
  echo key k:109
} | dotoolc

hyprctl dispatch focuswindow "class:obsidian"
{
  echo key alt+tab
  sleep 1
  echo key ctrl+v
  echo key shift+k:28
} | dotoolc
