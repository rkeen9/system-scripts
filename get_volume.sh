sink=$(cat /home/rob/scripts/VARIABLES | tr -d "SINK=")
pamixer --sink $sink --get-volume
