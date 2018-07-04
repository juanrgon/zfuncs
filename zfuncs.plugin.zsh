if ! (( ${+ZFUNCS_PATH} )); then
    ZFUNCS_PATH=$HOME/zfuncs
fi

if [[ ! -d $ZFUNCS_PATH ]]; then
    mkdir -p $ZFUNCS_PATH
fi

for file in $(find $ZFUNCS_PATH ! -name '_*' -type f)
do
    autoload -U $ZFUNCS_PATH/$file
done

autoload -U $(dirname $0:a)/zfuncs
