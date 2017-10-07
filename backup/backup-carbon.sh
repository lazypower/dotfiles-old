set -ex
# This depends on the duplicity ACD backup package
# https://github.com/breunigs/duplicity-amazondrive


function execute_backup {
    duplicity \
    --exclude $HOME/Cloud \
    --exclude $HOME/Downloads \
    --exclude $HOME/Trash \
    $HOME \
    file:///media/charles/Transcend/carbon

    #ad:///Backups/Makoto
}

