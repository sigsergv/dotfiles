#!/usr/bin/env bash

CWD=$(pwd)
TWD="${HOME}/Library/Application Support/Sublime Text/Packages"

set -x
rm -f "${TWD}/SIGSERGV.tmTheme"
ln -s "${CWD}/SIGSERGV.tmTheme" "${TWD}"

rm -f "${TWD}/Theme - SIGSERGV"
ln -s "${CWD}/Theme - SIGSERGV" "${TWD}"
