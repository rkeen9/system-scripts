#!/bin/bash
# called by DWM when the volume up or down key is pressed
# finds and kills the instance of sleep in the status bar script so the new volume is shown as soon as it is changed
kill "$(pstree -lp | grep -- -status_bar.sh\([0-9].*\) | grep sleep\([0-9].*\) -o | grep [0-9]* -o)"
