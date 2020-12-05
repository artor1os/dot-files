#!/usr/bin/fish

source ./fish-functions/link-function.fish

for file in fish-functions/*
    link-function $file
end
