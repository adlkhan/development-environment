export EDITOR=vim

# Add Sublime Text to pasth
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# Start mvim in a way so that it does not report any useless errors
function mvim() {
    command mvim "$@" > /dev/null 2>&1
}

export PATH="/usr/local/opt/llvm/bin:$PATH"
