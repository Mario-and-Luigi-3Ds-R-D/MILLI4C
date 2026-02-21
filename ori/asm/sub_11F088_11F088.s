PUSH            {R4-R7}
MOV             R1, #0x40000
STR             R1, [R0]
LDR             R2, =unk_69A2D0
LDR             R3, [R0]
MOV             R12, #0
MOV             R1, #1
LDR             R5, [R2,R1,LSL#2]
ADD             R4, R2, R1,LSL#2
ADD             R1, R1, #2
ORR             R3, R3, R5
STR             R3, [R0]
LDR             R4, [R4,#4]
CMP             R1, #0x13
ORR             R3, R3, R4
STR             R3, [R0]
BLT             loc_11F0A4
LDR             R6, =dword_6D48FC
LDR             R2, =0x1010000
MOV             R1, #0x1F40
LDR             R3, =0xFF00FF10
STR             R2, [R6]
LDR             R2, =dword_6D4900
MOV             R0, #3
MOV             R4, #0xFFFFFF
MOV             R5, #0x3000000
STR             R1, [R2]
LDR             R1, =dword_6D4904
STR             R3, [R1]
LDR             R1, =dword_6D4914
STR             R0, [R1]
LDR             R1, =dword_6D4918
STR             R4, [R1]
LDR             R1, =dword_6D4908
STR             R12, [R1]
LDR             R1, =dword_6D490C
STR             R0, [R1]
LDR             R0, =dword_6D4910
STR             R12, [R0]
LDR             R0, =dword_6D491C
STR             R5, [R0]
POP             {R4-R7}
B               sub_1258B0
