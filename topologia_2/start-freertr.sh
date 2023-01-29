#!/bin/bash
#by Everson

#Environment variable
RTR=../rtr.jar
HWSW=

tmux new-session -d -s rare 'java -jar '$RTR' routersc '$HWSW' r1-hw.txt '$HWSW' r1-sw.txt'
tmux split-window -v -t 0 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW' r2-hw.txt '$HWSW' r2-sw.txt' ENTER;
tmux split-window -h -t 0 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW' r3-hw.txt '$HWSW' r3-sw.txt' ENTER;
tmux split-window -v -t 0 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW' r4-hw.txt '$HWSW' r4-sw.txt' ENTER;
tmux select-layout tiled;
tmux a;