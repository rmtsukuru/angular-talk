#! /bin/bash

# Useful function for pretty printing
function print_centered() {
  declare -i width text_width available_width

  width=$(tput cols)
  text_width=$(echo $1 | wc -m)
  available_width=$(expr $width - $text_width)
  left=$(expr $available_width / 2)

  padding=""
  for i in $(seq 1 $left);
  do
    padding=$padding" "
  done

  echo "$padding$1"
}

function show_page() {
  open -a "Google Chrome" $1
}

### START ###

# Greeting
clear
print_centered "AngularJS - \"HTML, Enhanced\""
print_centered "by J3RN"
read

clear
print_centered "First, jQuery..."
read

vim basic/jquery.html
show_page "basic/jquery.html"

clear
print_centered "Alright, fair..."
print_centered "What does Angular have?"
read

vim -O basic/index.html basic/done.index.html
show_page "basic/index.html"

clear
print_centered "What the... MAGIC!?!?"
read

clear
print_centered "Let's add some functionality!"
read

vim -O projects/index.html projects/done.index.html
show_page "projects/index.html"

clear
print_centered "Alright, on to the Javascript..."
read

vim -O projects/projects.js projects/done.projects.js
show_page "projects/index.html"
