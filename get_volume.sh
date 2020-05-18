sink=$(cat /home/robert/scripts/VARIABLES | tr -d "SINK=")
pamixer --sink $sink --get-volume
