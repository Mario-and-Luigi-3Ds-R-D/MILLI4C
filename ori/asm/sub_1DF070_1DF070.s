LDR             R1, =0xFFFDF53B
PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, #0
ADD             R2, R0, R0,LSL#1
ADD             R2, R4, R2,LSL#2
SUB             R2, R2, R1
LDRB            R2, [R2]
CMP             R2, #1
BNE             locret_1DF0E4
ADD             R0, R0, #1
CMP             R0, #2
BLT             loc_1DF080
ADD             R0, R4, #0x250
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             locret_1DF0E4
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x11C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BCC             locret_1DF0E4
LDR             R1, =unk_656B78
ADD             R2, R4, #0x20000
ADD             R2, R2, #0xA00
LDRD            R0, R1, [R1,#(off_656BD4 - 0x656B78)]
STRD            R0, R1, [R2,#0xBC]
POP             {R4,PC}
