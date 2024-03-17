#!/bin/bash

echo "Do you want to add AutoCommit commands to your .zshrc? [y/N]"
read -r response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
    echo "source $(brew --prefix)/bin/gimCommands.sh" >> ~/.zshrc
    echo "AutoCommit commands have been added to your .zshrc. Please restart your terminal or run 'source ~/.zshrc'."
else
    echo "To use AutoCommit commands, add the following line to your .zshrc manually:"
    echo "source $(brew --prefix)/bin/gimCommands.sh"
fi

