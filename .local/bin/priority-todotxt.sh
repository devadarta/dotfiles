#!/bin/sh

todo_dir=$HOME/documents/todo
priority=$(grep "(A)" $todo_dir/todo.txt | grep -c "")
total=$(grep -cEv '^$|^#' $HOME/documents/todo/todo.txt)

if [ -z "$priority" ]; then
    if [ -z "$total" ]; then
        echo "no task"
    else
        echo "0/$total"
    fi
else
    echo "$priority/$total"
fi
