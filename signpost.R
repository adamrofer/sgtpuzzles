# -*- makefile -*-

SIGNPOST_EXTRA = dsf

signpost : [X] GTK COMMON signpost SIGNPOST_EXTRA signpost-icon|no-icon
signpost : [G] WINDOWS COMMON signpost SIGNPOST_EXTRA signpost.res|noicon.res

signpostsolver : [U] signpost[STANDALONE_SOLVER] SIGNPOST_EXTRA STANDALONE m.lib
signpostsolver : [C] signpost[STANDALONE_SOLVER] SIGNPOST_EXTRA STANDALONE

ALL += signpost[COMBINED] SIGNPOST_EXTRA

!begin gtk
GAMES += signpost
!end

!begin >list.c
    A(signpost) \
!end

!begin >wingames.lst
signpost.exe:Signpost
!end
