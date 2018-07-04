if ! (( ${+ZFUNCS_PATH} )); then
    export ZFUNCS_PATH=$HOME/zfuncs
fi

if [[ ! -d $ZFUNCS_PATH ]]; then
    mkdir -p $ZFUNCS_PATH
fi

export fpath=($ZFUNCS_PATH $fpath)
for file in $(find $ZFUNCS_PATH ! -name '_*' -type f)
do
    autoload -U $file
done

autoload -U $(dirname $0:a)/zfuncs
