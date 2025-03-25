#!/bin/sh
playerctl metadata --format "{{ title }}" | cut -c -30
