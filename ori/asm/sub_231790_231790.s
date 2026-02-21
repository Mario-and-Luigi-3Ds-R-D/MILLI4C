PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, R1
LDR             R1, [R1]
SUB             SP, SP, #0x30
MOV             R2, #0
LDR             R3, [R1,#0xC]
MOV             R1, SP
BLX             R3
VLDMEA          SP, {S0-S7}
ADD             R1, R4, #0x7C ; '|'
ADD             R12, SP, #0x38+var_18
ADD             R4, R4, #0x9C
VSTM            R1, {S0-S7}
LDM             R12, {R0-R3}
STM             R4, {R0-R3}
ADD             SP, SP, #0x30 ; '0'
POP             {R4,PC}
