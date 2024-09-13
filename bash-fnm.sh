echo "Works best with github.com/OleksiyRudenko/dev-env-git/cli-tune.sh

Adds listing of NodeJS instances managed by FNM on bash startup."

__bash_rc="echo NodeJS instances under FNM control:
eval "$(fnm env)"
fnm --version
fnm list
echo -e '\nCurrent NodeJS version:'
node -v
echo -e 'Project requirement:'
cat .node-version
fnm install
fnm use
node -v
"
cp ~/.bashrc ~/.bashrc.backup 2>/dev/null
echo -e "$__bash_rc" >> ~/.bashrc
