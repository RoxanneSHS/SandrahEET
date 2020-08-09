CHAIN
IF WEIGHT #-7~Global("SanLuxley","GLOBAL",1)~THEN BFHLSEB Luxsan1
@0
DO~SetGlobal("SanLuxley","GLOBAL",2)~
==BSandr@1
==BFHLSEB@2
=@3
==BSandr@4
==BFHLSEB@5
==BSandr@6
==BFHLSEB@7EXIT

CHAIN
IF WEIGHT #-7~Global("SanLuxley","GLOBAL",3)~THEN BFHLAND Luxsan2
@8
DO~SetGlobal("SanLuxley","GLOBAL",4)RealSetGlobalTimer("SanLuxleytime","GLOBAL",3000)~
==BSandr@9
=@10
=@11
==BFHLAND@12
==BSandr@13
==BFHLAND@14
==BSandr@15
==BFHLAND@16
==BSandr@17EXIT

CHAIN
IF WEIGHT #-7~Global("SanLuxley","GLOBAL",5)~THEN BFHLSEB Luxsan3
@18
DO~SetGlobal("SanLuxley","GLOBAL",6) RealSetGlobalTimer("SanLuxleytime","GLOBAL",3000)~
==BSandr@19
==BFHLSEB@20
==BSandr@21
==BFHLSEB@22
==BSandr@23
==BFHLSEB@24
==BSandr@25
==BFHLSEB@26EXIT

CHAIN
IF WEIGHT #-7~Global("SanLuxley","GLOBAL",7)~THEN BFHLAND Luxsan4
@27
DO~SetGlobal("SanLuxley","GLOBAL",8) RealSetGlobalTimer("SanLuxleytime","GLOBAL",3000)~
==BSandr@28
==BFHLAND@29
==BSandr@30
==BFHLAND@31
==BSandr@32
==BFHLAND@33
==BSandr@34
==BFHLAND@35
==BSandr@36EXIT

CHAIN
IF WEIGHT #-7~Global("SanLuxley","GLOBAL",9)~THEN BFHLSEB Luxsan5
@37
=@38
DO~SetGlobal("SanLuxley","GLOBAL",10) RealSetGlobalTimer("SanLuxleytime","GLOBAL",3000)~
==BFHLAND@39
==BSandr@40
==BFHLSEB@41
==BFHLAND@42
=@43
==BSandr@44
==BFHLSEB@45
==BFHLAND@46
==BSandr@47
==BFHLAND@48
==BFHLSEB@49 EXIT