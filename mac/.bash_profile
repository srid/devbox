
export PATH=~/.local/bin:~/go/bin:$PATH

# Powerline: https://github.com/justjanne/powerline-go#bash
function _update_ps1() {
    PS1="$(powerline-go -modules venv,user,ssh,cwd,perms,git,hg,jobs,exit,root -error $?)"
}
if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# exa https://github.com/ogham/exa
alias l=exa

# Automatically added by the Platform.sh CLI installer
export PATH="/Users/srid/.platformsh/bin:$PATH"
. '/Users/srid/.platformsh/shell-config.rc' 2>/dev/null || true
