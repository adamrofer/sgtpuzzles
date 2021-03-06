# -*- makefile -*-

MAGNETS_EXTRA = laydomino

magnets      : [X] GTK COMMON magnets MAGNETS_EXTRA magnets-icon|no-icon

magnets      : [G] WINDOWS COMMON magnets MAGNETS_EXTRA magnets.res|noicon.res

magnetssolver :     [U] magnets[STANDALONE_SOLVER] MAGNETS_EXTRA STANDALONE m.lib
magnetssolver :     [C] magnets[STANDALONE_SOLVER] MAGNETS_EXTRA STANDALONE

ALL += magnets[COMBINED] MAGNETS_EXTRA

!begin gtk
GAMES += magnets
!end

!begin >list.c
    A(magnets) \
!end

!begin >wingames.lst
magnets.exe:Magnets
!end
