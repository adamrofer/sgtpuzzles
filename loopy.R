# -*- makefile -*-

LOOPY_EXTRA = tree234 dsf grid penrose

loopy     : [X] GTK COMMON loopy LOOPY_EXTRA loopy-icon|no-icon

loopy     : [G] WINDOWS COMMON loopy LOOPY_EXTRA loopy.res|noicon.res

loopysolver :   [U] loopy[STANDALONE_SOLVER] LOOPY_EXTRA STANDALONE m.lib
loopysolver :   [C] loopy[STANDALONE_SOLVER] LOOPY_EXTRA STANDALONE

#penrose :    [U] penrose[TEST_PENROSE] STANDALONE m.lib
#penrose :    [C] penrose[TEST_PENROSE] STANDALONE

#test-basis : [U] penrose[TEST_VECTORS] tree234 STANDALONE m.lib
#test-basis : [C] penrose[TEST_VECTORS] tree234 STANDALONE


ALL += loopy[COMBINED] LOOPY_EXTRA

!begin gtk
GAMES += loopy
!end

!begin >list.c
    A(loopy) \
!end

!begin >wingames.lst
loopy.exe:Loopy
!end
