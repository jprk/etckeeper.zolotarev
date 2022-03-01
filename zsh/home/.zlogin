## ===========================================================================
##  NAME:       .zlogin
##  TYPE:       zsh script
##  PROJECT:    zsh
##  CONTENT:    setup for login shells
## ===========================================================================
##  AUTHORS:    rft     Robert F. Tobler
## ===========================================================================
##  HISTORY:
##
##  06-Nov-96 22:24:12  rft     last modification
##  09-Jul-96 17:15:17  rft     added suspend to stty flags
##  02-Apr-96 16:59:32  rft     created this file
## ===========================================================================
##  DESCRIPTION:
##
##  .zlogin is sourced in login shells.  It should contain commands that
##  should be executed only in login shells.  It should be used to set the
##  terminal type and run a series of external commands (fortune, news, msgs,
##  from, etc).
## ===========================================================================

uptime

if [[ $OSTYPE == irix5.3 && -d '/var/news' ]] ; then
    if [[ -d '/var/news' ]] ; then
	news
    fi
    if [[ $SAVE_RM == 'del' ]] ; then
	echo "'del' is a save 'rm' command. 'untrash <filename>' to restore."
    fi
fi
if [[ $HOST == 'Xenon.Stanford.EDU' ]] ; then
    msgs -pf
fi

## ===========================================================================
