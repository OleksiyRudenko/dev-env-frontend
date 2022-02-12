echo "Works best with github.com/OleksiyRudenko/dev-env-git/cli-tune.sh

Adds listing of NodeJS instances managed by NVM on bash startup."

__bash_rc="echo NodeJS instances under NVM control:
nvm list
echo -e '\nCurrent NodeJS version:'
node -v"
cp ~/.bashrc ~/.bashrc.backup 2>/dev/null
echo -e "$__bash_rc" >> ~/.bashrc
