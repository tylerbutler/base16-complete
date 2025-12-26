#!/usr/bin/env bash

# TODO: download sources file from URL defined in env variable
uv run pybase16 update -cv

uv run pybase16 build -v -o base16
