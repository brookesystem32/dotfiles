#!/bin/bash
cd /home/brooke/Desktop/obsidianVaults/ankiFlashcards/
read -p "Yo where's the file located at? $(pwd): " input_file
temp_file=$(mktemp)

while IFS= read -r line; do
  if [[ $line == *"#flashcard"* ]]; then

    echo -e "\n   Translating..."

    orig_translation=$(echo "$line" | sed "s/#flashcard//")
    translation=$(echo "$orig_translation" | trans -b)

    echo -e "\n   Replacing..."

    echo "$orig_translation($translation) #flashcard" >>"$temp_file"
    echo -e "\n   Finished translating $line!\n"

  else
    echo "$line" >>"$temp_file"
  fi

done <"$input_file"

mv "$temp_file" "$input_file"
echo "She never crossed your mind."
