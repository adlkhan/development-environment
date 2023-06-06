export EDITOR=code

# Start mvim in a way so that it does not report any errors
function mvim() {
    command mvim "$@" > /dev/null 2>&1
}

