export EDITOR=vim

# Start mvim in a way so that it does not report any useless errors
function mvim() {
    command mvim "$@" > /dev/null 2>&1
}

