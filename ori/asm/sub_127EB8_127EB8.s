PUSH            {R4-R10,LR}
SUBS            R2, R2, #0x20 ; ' '
BCC             loc_127EEC
LDM             R1!, {R3-R6}
PLD             [R1,#0x40]
LDM             R1!, {R7-R10}
STM             R0!, {R3-R6}
SUBS            R2, R2, #0x20 ; ' '
STM             R0!, {R7-R10}
LDMCS           R1!, {R3-R6}
PLD             [R1,#0x40]
LDMCS           R1!, {R7-R10}
BCS             loc_127ED0
MOVS            R12, R2,LSL#28
LDMCS           R1!, {R3,R4,R12,LR}
STMCS           R0!, {R3,R4,R12,LR}
LDMMI           R1!, {R3,R4}
STMMI           R0!, {R3,R4}
POP             {R4-R10,LR}
MOVS            R12, R2,LSL#30
LDRCS           R3, [R1],#4
STRCS           R3, [R0],#4
BXEQ            LR
MOVS            R2, R2,LSL#31
LDRHCS          R3, [R1],#2
LDRBMI          R2, [R1],#1
STRHCS          R3, [R0],#2
STRBMI          R2, [R0],#1
BX              LR
