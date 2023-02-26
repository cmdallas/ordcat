#!/usr/bin/env bash

# Install iterm shell integration
curl -L https://iterm2.com/misc/install_shell_integration_and_utilities.sh | bash

installationDir="${HOME}/.local/bin"
mkdir "$installationDir"
echo "Downloading and installing ordcat to ${installationDir}"
curl -Ssl "https://raw.githubusercontent.com/cmdallas/ordcat/main/ordcat" > "$installationDir""/ordcat" && chmod +x "$installationDir""/ordcat"

printf "\n"
echo "⚠️ Add ${installationDir} to your PATH"