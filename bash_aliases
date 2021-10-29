function gitcl() {
    if [[ $1 == jqfx_core ]]; then
        shift
        git clone git@bitbucket.org:jqfx/jqfx_core.git $@
    fi
}

function gitco() {
    if [[ $# -ne 2 ]]; then
        echo incorrect number of arguments, expected 2, given $#
    elif [[ $1 == feature ]]; then
        git checkout -b feature/${USER}/$2
    elif [[ $1 == bugfix ]]; then
        git checkout -b bugfix/${USER}/$2
    elif [[ $1 == hotfix ]]; then
        git checkout -b hotfix/${USER}/$2
    else
        echo wrong arguments $@
    fi
}

function startup() {
    sudo mount -t drvfs Z: /mnt/jquant
    ls /mnt/jquant
    sudo service ssh restart
}


