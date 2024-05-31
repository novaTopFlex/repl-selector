yad --center --info --text="Select a Python version..." \
--button="Python 3.12":0 --button="Python 3.11":1 --button="Python 3.10":2 --button="Python 3.9":3 --button="Python 3.13":4 --button="Python 3.14":5 --button="Python 2.7":6 \
--title="Python" --timeout=30 --timeout-indicator=bottom \
--image=python3 --borders=6 --skip-taskbar
RETURN=$?
if [[ $RETURN -eq 0 ]]; then
    idle-python3.12;
elif [[ $RETURN -eq 1 ]]; then
    idle-python3.11;
elif [[ $RETURN -eq 2 ]]; then
    idle-python3.10;
elif [[ $RETURN -eq 3 ]]; then
    idle-python3.9;
elif [[ $RETURN -eq 4 ]]; then
    idle-python3.13;
elif [[ $RETURN -eq 5 ]]; then
    idle-python3.14;
elif [[ $RETURN -eq 6 ]]; then
    idle-python2.7;
else
    echo $RETURN
fi
