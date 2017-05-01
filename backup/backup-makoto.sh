set -ex
# This depends on the duplicity ACD backup package
# https://github.com/breunigs/duplicity-amazondrive


function execute_backup {
    duplicity \
    --exclude $HOME/Cloud \
    --exclude $HOME/.ssh \
    --exclude $HOME/.sesame \
    --exclude $HOME/Downloads \
    --exclude $HOME/Trash \
    $HOME \
    ad:///Backups/Makoto
}

