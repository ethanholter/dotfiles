#!/bin/bash

# idempotent - yes

# Add execution privileges to all of the scripts
for file in "scripts"/*.sh; do
    if [ -f "$file" ] && [ -x "$file" ]; then
        echo "$file already has execution privileges."
    elif [ -f "$file" ]; then
        chmod +x "$file"
        echo "Added execution privileges to $file."
    fi
done

# Create user bin directory
if ! [ -d "${HOME}/bin" ]; then
    mkdir ~/bin
    PATH="${HOME}/bin:${PATH}"
fi

# add ~/bin dir to path if not present in bashrc already
if ! grep -qF "PATH=\"${HOME}/bin:\${PATH}\"" ~/.bashrc; then
    echo "PATH=\"${HOME}/bin:\${PATH}\"" >> ~/.bashrc
fi

echo Done
