#!/usr/bin/env bash

alias drb='docker run -it --rm $(docker images -q | head -1) /bin/bash'
