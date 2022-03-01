## ===========================================================================
##  NAME:	.zshenv
##  TYPE:	zsh script
##  PROJECT:	zsh
##  CONTENT:	setup for all shells
## ===========================================================================
##  AUTHORS:	rft	Robert F. Tobler
## ===========================================================================
##  HISTORY:
##
##  18-Jul-96 12:59:19	rft	last modification
##  18-Jul-96 12:59:19	rft	added REMOTELOGIN detection
##  02-Apr-96 16:59:32	rft	created this file
## ===========================================================================
##  DESCRIPTION:
##
##  .zshenv is sourced on all invocations of the shell, unless the -f option
##  is set.  It should contain commands to set the command search path, plus
##  other important environment variables. .zshenv should not contain
##  commands that product output or assume the shell is attached to a tty.
## ===========================================================================

## ----------------------------------------------------------------- user path

if [[ $HOST == 'Xenon.Stanford.EDU' ]] ; then
    path=(/usr/local/bin /usr/local/bin/mh /usr/local/X11/bin $path)
fi

test $UID != '0' && path=(. $path)

## ---------------------------------------------------------- user environment

export PRINTER=RavenPrinter

if [[ ${+DISPLAY} == 1 ]] ; then
    export EDITOR='guiemacs'
else
    export EDITOR='emacs -nw'
fi

if [[ $OSTYPE == nextstep3 ]] ; then
    export POV_DIR=~/Projects/POV
    export CVSROOT=~/CVS

    if [[ $REMOTELOGIN == 1 ]] ; then
	if [[ ${+REMOTEHOST} = 1 ]] ; then
	    export EDITOR="/NextApps/Edit.app/Edit -NXHost $REMOTEHOST"
	else
	    export EDITOR='emacs -nw'
	fi
    else
	export EDITOR='open -a Edit'
    fi

    export MANPAGER='less -M'
    export PYTHONPATH=~/Unix/python:$PYTHONPATH
    export ART_VIEWER=open
    export ART_CONFIG=nextstep3
    export ART_PACKAGE_DIR=/home/rft/Scratch
    export ART_ARCHIVE_DIR=/home/rft/Scratch
    export MTEX_DIR=/usr/local/lib/mTeX
fi

if [[ $OSTYPE == linux ]] ; then
    export EDITOR='emacs -nw'
fi

if [[ $OSTYPE == irix5.3 ]] ; then
    export WINEDITOR xemacs
fi

if [[ $HOST == 'Xenon.Stanford.EDU' ]] ; then
    export MANPATH=/usr/lang/man:/usr/man:/usr/local/man:/usr/openwin/man
    export EDITOR='emacs -nw'
fi

if [[ $HOST == 'karnak' ]] ; then
    stty erase "^?" intr "^C" kill "^U" susp "^Z"
fi

if [[ $TERM == 'vt100' ]] ; then
#    export TERM_SETTITLE=1
fi

## ===========================================================================
