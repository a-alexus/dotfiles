#!/bin/sh

gen_xres() {
	# grep will return *color: #XXXXXX
	# piped into awk, awk will return #XXXXXX
	xrdb -query | grep $1 | awk '{print $2}'
}

white="\\$(gen_xres color7:)"
black="\\$(gen_xres color0:)"
background="\\$(gen_xres background:)"
green="\\$(gen_xres color2:)"
red="\\$(gen_xres color1:)"
yellow="\\$(gen_xres color3:)"
blue="\\$(gen_xres color4:)"
purple="\\$(gen_xres color5:)"

cat <<CONF
set recolor "true"

set completion-bg $black
set completion-fg $white
set completion-group-bg $black
set completion-group-fg $white
set completion-highlight-bg $yellow
set completion-highlight-fg $black

set recolor-lightcolor $background
set recolor-darkcolor $white
set default-bg $background

set inputbar-bg $background
set inputbar-fg $white
set notification-bg $black
set notification-fg $white
set notification-error-bg $red
set notification-error-fg $black
set notification-warning-bg $red
set notification-warning-fg $black
set statusbar-bg $black
set statusbar-fg $white
set index-bg $background
set index-fg $white
set index-active-bg $white
set index-active-fg $black
set render-loading-bg $background
set render-loading-fg $white

set highlight-color $purple
set highlight-active-color $yellow

set window-title-home-tilde true
set statusbar-basename true
set selection-clipboard clipboard
CONF
