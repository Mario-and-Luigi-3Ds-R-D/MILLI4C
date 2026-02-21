PUSH            {R4-R8}
MOV             R4, R1,LSR#7
BIC             R12, R1, #1
LDR             R7, =dword_6D2418
ADD             R4, R12, R4,LSL#1
LDM             R7, {R3,R12}
ADD             R4, R3, R4,LSL#2
ADD             R4, R4, #8
CMP             R12, R4
STRLS           R12, [R7]
BLS             loc_1378BC
CMP             R1, #0
MOV             R6, #0
SUBHI           R8, R6, #0x100000
BLS             loc_1378B8
SUB             R4, R1, R6
CMP             R4, #0x80
MOVHI           R4, #0x80
ADD             R5, R0, R6
MOV             R12, R4,LSR#1
ADD             R4, R8, R4,LSL#20
ORR             R4, R4, R5
ORR             R4, R4, #0x80000000
STR             R2, [R3],#4
ORR             R4, R4, #0xF0000
CMN             R12, #0x80000001
STR             R4, [R3],#4
BLS             loc_137884
STR             R2, [R3],#4
SUBS            R12, R12, #1
STR             R2, [R3],#4
BNE             loc_137870
B               loc_1378AC
MOV             R5, R12,LSL#1
CMP             R5, #0
SUBGT           R4, R3, #4
MOVGT           R5, R5,ASR#1
BLE             loc_1378AC
STR             R2, [R4,#4]
SUBS            R5, R5, #1
STR             R2, [R4,#8]!
BNE             loc_137898
ADD             R3, R3, R12,LSL#3
ADD             R6, R6, #0x80
CMP             R6, R1
BCC             loc_13783C
STR             R3, [R7]
POP             {R4-R8}
BX              LR
