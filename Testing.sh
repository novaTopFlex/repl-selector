yad --center --info --text="Which version of Python? Select Python 3.13 \
for the more stable beta release, or select Python 3.14 for the \
more expreimental nightly release." \
--icon-name=python3.14 --button="Python 3.13":0 --button="Python 3.14":2 \
--title="Python" --timeout=15 --timeout-indicator=bottom \
--image=python3.14 --borders=6 --skip-taskbar
RETURN=$?
if [[ $RETURN -eq 0 ]]; then
    idle-python3.13;
elif [[ $RETURN -eq 2 ]]; then
    idle-python3.14;
else
    echo $RETURN
fi
