CMP             R2, #8
BHI             loc_127498
BEQ             loc_127484
CMP             R2, #4
BHI             loc_12741C
BEQ             loc_127450
CMP             R2, #2
BCC             loc_127408
BEQ             loc_127444
LDRH            R2, [R1],#2
LDRB            R3, [R1],#1
STRH            R2, [R0],#2
STRB            R3, [R0],#1
BX              LR
CMP             R2, #1
BCC             locret_127418
LDRB            R3, [R1],#1
STRB            R3, [R0],#1
BX              LR
CMP             R2, #6
BEQ             loc_127470
BCC             loc_12745C
LDR             R2, [R1],#4
LDRH            R3, [R1],#2
STR             R2, [R0],#4
LDRB            R12, [R1],#1
STRH            R3, [R0],#2
STRB            R12, [R0],#1
BX              LR
LDRH            R3, [R1],#2
STRH            R3, [R0],#2
BX              LR
LDR             R3, [R1],#4
STR             R3, [R0],#4
BX              LR
LDR             R2, [R1],#4
LDRB            R3, [R1],#1
STR             R2, [R0],#4
STRB            R3, [R0],#1
BX              LR
LDR             R2, [R1],#4
LDRH            R3, [R1],#2
STR             R2, [R0],#4
STRH            R3, [R0],#2
BX              LR
LDR             R2, [R1],#4
LDR             R3, [R1],#4
STR             R2, [R0],#4
STR             R3, [R0],#4
BX              LR
TST             R1, #1
SUBNE           R2, R2, #1
LDRBNE          R3, [R1],#1
STRBNE          R3, [R0],#1
TST             R1, #2
SUBNE           R2, R2, #2
LDRBNE          R3, [R1],#1
LDRBNE          R12, [R1],#1
STRBNE          R3, [R0],#1
STRBNE          R12, [R0],#1
ANDS            R3, R0, #3
BNE             loc_127530
PUSH            {R4-R10,LR}
SUBS            R2, R2, #0x20 ; ' '
BCC             loc_1274F0
LDM             R1!, {R4-R7}
LDM             R1!, {R8-R10,LR}
PLD             [R1,#0x40]
SUBS            R2, R2, #0x20 ; ' '
STM             R0!, {R4-R7}
STM             R0!, {R8-R10,LR}
BCS             loc_1274D4
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
BIC             R0, R0, #3
CMP             R3, #2
BEQ             loc_1275DC
BHI             loc_127678
LDR             R12, [R0]
MOV             R12, R12,LSL#24
MOV             R12, R12,LSR#24
SUBS            R2, R2, #0x20 ; ' '
BLT             loc_1275AC
PUSH            {R4-R10,LR}
LDMGE           R1!, {R4-R10,LR}
MOVGE           R3, R4,LSR#24
ORRGE           R4, R12, R4,LSL#8
MOVGE           R12, R5,LSR#24
ORRGE           R5, R3, R5,LSL#8
MOVGE           R3, R6,LSR#24
ORRGE           R6, R12, R6,LSL#8
MOVGE           R12, R7,LSR#24
ORRGE           R7, R3, R7,LSL#8
MOVGE           R3, R8,LSR#24
ORRGE           R8, R12, R8,LSL#8
MOVGE           R12, R9,LSR#24
ORRGE           R9, R3, R9,LSL#8
MOVGE           R3, R10,LSR#24
ORRGE           R10, R12, R10,LSL#8
MOVGE           R12, LR,LSR#24
ORRGE           LR, R3, LR,LSL#8
STMGE           R0!, {R4-R10,LR}
SUBSGE          R2, R2, #0x20 ; ' '
BGE             loc_127558
POP             {R4-R10,LR}
ADD             R2, R2, #0x20 ; ' '
SUBS            R2, R2, #4
LDRGE           R3, [R1],#4
ORRGE           R12, R12, R3,LSL#8
STRGE           R12, [R0],#4
MOVGE           R12, R3,LSR#24
SUBSGE          R2, R2, #4
BGE             loc_1275B4
ADD             R2, R2, #4
SUB             R1, R1, #1
ADD             R2, R2, #1
B               loc_127710
LDR             R12, [R0]
MOV             R12, R12,LSL#16
MOV             R12, R12,LSR#16
SUBS            R2, R2, #0x20 ; ' '
BLT             loc_127648
PUSH            {R4-R10,LR}
LDMGE           R1!, {R4-R10,LR}
MOVGE           R3, R4,LSR#16
ORRGE           R4, R12, R4,LSL#16
MOVGE           R12, R5,LSR#16
ORRGE           R5, R3, R5,LSL#16
MOVGE           R3, R6,LSR#16
ORRGE           R6, R12, R6,LSL#16
MOVGE           R12, R7,LSR#16
ORRGE           R7, R3, R7,LSL#16
MOVGE           R3, R8,LSR#16
ORRGE           R8, R12, R8,LSL#16
MOVGE           R12, R9,LSR#16
ORRGE           R9, R3, R9,LSL#16
MOVGE           R3, R10,LSR#16
ORRGE           R10, R12, R10,LSL#16
MOVGE           R12, LR,LSR#16
ORRGE           LR, R3, LR,LSL#16
STMGE           R0!, {R4-R10,LR}
SUBSGE          R2, R2, #0x20 ; ' '
BGE             loc_1275F4
POP             {R4-R10,LR}
ADD             R2, R2, #0x20 ; ' '
SUBS            R2, R2, #4
LDRGE           R3, [R1],#4
ORRGE           R12, R12, R3,LSL#16
STRGE           R12, [R0],#4
MOVGE           R12, R3,LSR#16
SUBSGE          R2, R2, #4
BGE             loc_127650
ADD             R2, R2, #4
SUB             R1, R1, #2
ADD             R2, R2, #2
B               loc_127710
LDR             R12, [R0]
MOV             R12, R12,LSL#8
MOV             R12, R12,LSR#8
SUBS            R2, R2, #0x20 ; ' '
BLT             loc_1276E4
PUSH            {R4-R10,LR}
LDMGE           R1!, {R4-R10,LR}
MOVGE           R3, R4,LSR#8
ORRGE           R4, R12, R4,LSL#24
MOVGE           R12, R5,LSR#8
ORRGE           R5, R3, R5,LSL#24
MOVGE           R3, R6,LSR#8
ORRGE           R6, R12, R6,LSL#24
MOVGE           R12, R7,LSR#8
ORRGE           R7, R3, R7,LSL#24
MOVGE           R3, R8,LSR#8
ORRGE           R8, R12, R8,LSL#24
MOVGE           R12, R9,LSR#8
ORRGE           R9, R3, R9,LSL#24
MOVGE           R3, R10,LSR#8
ORRGE           R10, R12, R10,LSL#24
MOVGE           R12, LR,LSR#8
ORRGE           LR, R3, LR,LSL#24
STMGE           R0!, {R4-R10,LR}
SUBSGE          R2, R2, #0x20 ; ' '
BGE             loc_127690
POP             {R4-R10,LR}
ADD             R2, R2, #0x20 ; ' '
SUBS            R2, R2, #4
LDRGE           R3, [R1],#4
ORRGE           R12, R12, R3,LSL#24
STRGE           R12, [R0],#4
MOVGE           R12, R3,LSR#8
SUBSGE          R2, R2, #4
BGE             loc_1276EC
ADD             R2, R2, #4
SUB             R1, R1, #3
ADD             R2, R2, #3
TST             R2, #4
LDRBNE          R3, [R1],#1
LDRBNE          R12, [R1],#1
STRBNE          R3, [R0],#1
STRBNE          R12, [R0],#1
LDRBNE          R3, [R1],#1
LDRBNE          R12, [R1],#1
STRBNE          R3, [R0],#1
STRBNE          R12, [R0],#1
TST             R2, #2
LDRBNE          R3, [R1],#1
LDRBNE          R12, [R1],#1
STRBNE          R3, [R0],#1
STRBNE          R12, [R0],#1
TST             R2, #1
LDRBNE          R3, [R1],#1
STRBNE          R3, [R0],#1
BX              LR
