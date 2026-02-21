PUSH            {R4-R8}
CMP             R2, #4
BCS             loc_110C20
ADD             R3, R2, #1
CMP             R3, #1
MOV             R2, #1
BLE             loc_110C18
MOV             R12, R1,LSR#24
ADD             R2, R2, #1
CMP             R3, R2
MOV             R1, R1,LSL#8
STRB            R12, [R0],#1
BGT             loc_110C00
POP             {R4-R8}
BX              LR
TST             R0, #1
BEQ             loc_110C38
MOV             R3, R1,LSR#24
MOV             R1, R1,ROR#24
SUB             R2, R2, #1
STRB            R3, [R0],#1
TST             R0, #2
BEQ             loc_110C50
MOV             R3, R1,LSR#16
MOV             R1, R1,ROR#16
SUB             R2, R2, #2
STRH            R3, [R0],#2
MOV             R12, R2,LSR#2
MOV             R7, #8
ADD             R6, R0, R12,LSL#2
SUB             R3, R6, #0x20 ; ' '
SUB             R8, R3, R0
ADD             R3, R7, R8,ASR#2
MOV             R4, R3,ASR#31
ADD             R3, R3, R4,LSR#29
BIC             R4, R3, #7
CMP             R4, #0
SUBGT           R3, R0, #4
MOVGT           R4, R4,ASR#1
BLE             loc_110CA8
STR             R1, [R3,#4]
SUBS            R4, R4, #1
STR             R1, [R3,#8]!
BNE             loc_110C84
ADD             R3, R7, R8,ASR#2
MOV             R4, R3,ASR#31
ADD             R3, R3, R4,LSR#29
MOV             R3, R3,ASR#3
ADD             R0, R0, R3,LSL#5
TST             R12, #4
BEQ             loc_110CC4
MOV             R3, R1
STM             R0, {R1,R3}
STR             R1, [R0,#8]
STR             R1, [R0,#0xC]!
ADD             R0, R0, #4
TST             R12, #2
MOVNE           R3, R1
STMNE           R0!, {R1,R3}
TST             R12, #1
STRNE           R1, [R0]
TST             R2, #3
BEQ             loc_110C18
TST             R2, #2
BEQ             loc_110CF4
MOV             R0, R1,LSR#16
MOV             R1, R1,LSL#16
STRH            R0, [R6],#2
TST             R2, #1
MOVNE           R0, R1,LSR#24
STRBNE          R0, [R6]
POP             {R4-R8}
BX              LR
