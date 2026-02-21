CMP             R0, #0xA; switch 10 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1CD034; jumptable 001CD034 default case, cases 0,5
DCD def_1CD034; jump table for switch statement
MOV             R0, #4; jumptable 001CD034 case 1
BX              LR
MOV             R0, #3; jumptable 001CD034 case 2
BX              LR
MOV             R0, #2; jumptable 001CD034 case 3
BX              LR
MOV             R0, #1; jumptable 001CD034 case 4
BX              LR
MOV             R0, #0; jumptable 001CD034 case 6
BX              LR
CMP             R1, #0x64 ; 'd'; jumptable 001CD034 case 7
MOVCC           R0, #6
MOVCS           R0, #5
BX              LR
CMP             R1, #0x64 ; 'd'; jumptable 001CD034 case 8
MOVCC           R0, #8
MOVCS           R0, #7
BX              LR
CMP             R1, #0x64 ; 'd'; jumptable 001CD034 case 9
MOVCC           R0, #0xA
MOVCS           R0, #9
BX              LR
MOV             R0, #0xFF; jumptable 001CD034 default case, cases 0,5
BX              LR
