LDR             R2, =0x3477
SUBS            R2, R0, R2
SBCS            R2, R1, #0
BLT             loc_121154
B               loc_120248
LDR             R2, =0x44A2FA85
UMULL           R3, R0, R0, R2
UMULL           R1, R2, R1, R2
ADDS            R0, R0, R1
B               loc_1201D8
