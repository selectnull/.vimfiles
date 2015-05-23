original_pwd=`pwd`
vimfiles_root=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $vimfiles_root

function usage {
    echo "manage.sh [-i plugin-git-url] [-u plugin-git-url] [-h]"
    echo "manages vim config"
    echo
    if [ "$1" == "full" ]; then
        echo "    -i plugin-git-url      Installs a plugin"
        echo "    -u [plugin]            Updates a plugin (or all of them)"
        echo "    -h                     This help"
        echo
    fi
}


function install_plugin {
    plugin=$1
}

function update_all_plugins {
    for d in .vim/bundle/*; do cd $d; git pull; cd $vimfiles_root; done
}

# process command line switches
while getopts "i:uh" opt; do
    case $opt in
        i)
            cd .vim/bundle/
            git clone $OPTARG
            ;;
        u)
            update_all_plugins;;
        h) usage full;;
    esac
done

shift $(($OPTIND - 1))

cd $original_pwd
