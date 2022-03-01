## ===========================================================================
##  NAME:	.zshrc
##  TYPE:	zsh script
##  PROJECT:	zsh
##  CONTENT:	setup for interactive shells
## ===========================================================================
##  AUTHORS:	rft	Robert F. Tobler
## ===========================================================================
##  HISTORY:
##
##  09-Oct-96 10:36:06	rft	last modification
##  09-Oct-96 10:36:06	rft	removed GLOB_DOTS option, removed FIGNORE=.o
##  02-Apr-96 16:59:32	rft	created this file
## ===========================================================================
##  DESCRIPTION:
##
##  .zshrc is sourced in interactive shells.  It should contain commands to
##  set up aliases, functions, options, key bindings, etc.
## ===========================================================================

## ------------------------------------------------ per machine user specifics

if [[ $OSTYPE == nextstep3 ]] ; then
    alias more='less -Mu'
fi

## ------------------------------------------------------------- private hosts

alias @oenone='rsh oenone.inflab.tuwien.ac.at'		# 128.130.121.13
			## tcsh 6.06, regular passwd

alias @xenon='remoteshell xenon.stanford.edu'		# 36.28.0.25
			## tcsh 6.06, regular passwd
alias @capefear='rsh capefear.stanford.edu'		# 36.22.0.74
			## tcsh 5.12, regular passwd

alias @karnak='remoteshell -tn karnak.cepba.upc.es'	# 147.83.42.23

alias @samhain='remoteshell samhain.unix.cslab.tuwien.ac.at'
			## bash, regular passwd

## ===========================================================================
