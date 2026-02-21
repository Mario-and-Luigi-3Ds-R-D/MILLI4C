PUSH            {R4-R7}
MOV             R3, #1
LDRB            R0, [R2,#8]
LDR             R6, =0xF025F
CMP             R0, #0
LDR             R0, =dword_6D2598
MOVNE           R5, #0
MOVEQ           R5, #0x80000000
SUB             R4, R6, #0x38 ; '8'
LDR             R12, [R0]
LDR             R0, [R2]
STM             R1, {R3,R6}
RSB             R12, R12, #0
ADD             R12, R0, R12,LSL#3
ADD             R0, R1, #8
ORR             R7, R5, R12
STR             R7, [R0],#4
LDR             R12, =0x10245
STR             R4, [R0],#4
LDR             R2, [R2,#4]
ADD             R5, R4, R3
MOV             R1, #0
STR             R2, [R0],#4
ORR             R4, R4, R3,LSL#3
STR             R5, [R0],#4
ADD             R2, R4, R3,LSL#1
STM             R0!, {R1,R12}
STM             R0!, {R3,R4}
STM             R0!, {R3,R12}
STR             R3, [R0],#4
STR             R2, [R0],#4
LDR             R2, =0x8025E
STM             R0!, {R1,R2}
STM             R0!, {R1,R2}
POP             {R4-R7}
BX              LR
