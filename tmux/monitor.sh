
#!/bin/sh
#
# Starts a multiplexed terminal session with tmux running monitoring software.
# Requires dstat, htop and grc. The apache configuration for grc can be found
# here: https://gist.github.com/1885569
#
# My .tmux.conf is here instead: https://gist.github.com/1886016#file_3_tmux.conf
#
# tmux 1.7 or later recommended.
#
name=monitor

if ! tmux has-session -t $name; then
  tmux start \;\
    new-session -d -s $name exit                                                  \;\
    neww -n monitor 'grc tail -f /var/log/messages'                               \;\
    splitw -v -p 80 'tail -f /var/log/nginx/*.app-access.log | grcat conf.apache' \;\
    splitw -v -p 60 'dstat -cdgmnpy'                                              \;\
    splitw -h -p 45 'htop'                                                        \;
fi

tmux attach -t monitor
