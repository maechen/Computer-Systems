
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 d2 3e 00 00    	push   0x3ed2(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 d3 3e 00 00 	bnd jmp *0x3ed3(%rip)        # 4f00 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop

Disassembly of section .plt.got:

00000000000011d0 <__cxa_finalize@plt>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	f2 ff 25 1d 3e 00 00 	bnd jmp *0x3e1d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011e0 <getenv@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 1d 3d 00 00 	bnd jmp *0x3d1d(%rip)        # 4f08 <getenv@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011f0 <__errno_location@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 15 3d 00 00 	bnd jmp *0x3d15(%rip)        # 4f10 <__errno_location@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <strcpy@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 0d 3d 00 00 	bnd jmp *0x3d0d(%rip)        # 4f18 <strcpy@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <puts@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 05 3d 00 00 	bnd jmp *0x3d05(%rip)        # 4f20 <puts@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <write@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 fd 3c 00 00 	bnd jmp *0x3cfd(%rip)        # 4f28 <write@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <strlen@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 f5 3c 00 00 	bnd jmp *0x3cf5(%rip)        # 4f30 <strlen@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <alarm@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 ed 3c 00 00 	bnd jmp *0x3ced(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <close@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 e5 3c 00 00 	bnd jmp *0x3ce5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <read@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 dd 3c 00 00 	bnd jmp *0x3cdd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <fgets@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 d5 3c 00 00 	bnd jmp *0x3cd5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <strcmp@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 cd 3c 00 00 	bnd jmp *0x3ccd(%rip)        # 4f58 <strcmp@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <signal@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 c5 3c 00 00 	bnd jmp *0x3cc5(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <gethostbyname@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 bd 3c 00 00 	bnd jmp *0x3cbd(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <__memmove_chk@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 b5 3c 00 00 	bnd jmp *0x3cb5(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <strtol@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 ad 3c 00 00 	bnd jmp *0x3cad(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <fflush@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 a5 3c 00 00 	bnd jmp *0x3ca5(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <__isoc99_sscanf@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 9d 3c 00 00 	bnd jmp *0x3c9d(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <__printf_chk@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 95 3c 00 00 	bnd jmp *0x3c95(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <fopen@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 8d 3c 00 00 	bnd jmp *0x3c8d(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <exit@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 85 3c 00 00 	bnd jmp *0x3c85(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <connect@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 7d 3c 00 00 	bnd jmp *0x3c7d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <__fprintf_chk@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 75 3c 00 00 	bnd jmp *0x3c75(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <sleep@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 6d 3c 00 00 	bnd jmp *0x3c6d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__ctype_b_loc@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 65 3c 00 00 	bnd jmp *0x3c65(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <__sprintf_chk@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 5d 3c 00 00 	bnd jmp *0x3c5d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <socket@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 55 3c 00 00 	bnd jmp *0x3c55(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001380 <_start>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	31 ed                	xor    %ebp,%ebp
    1386:	49 89 d1             	mov    %rdx,%r9
    1389:	5e                   	pop    %rsi
    138a:	48 89 e2             	mov    %rsp,%rdx
    138d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1391:	50                   	push   %rax
    1392:	54                   	push   %rsp
    1393:	45 31 c0             	xor    %r8d,%r8d
    1396:	31 c9                	xor    %ecx,%ecx
    1398:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1469 <main>
    139f:	ff 15 33 3c 00 00    	call   *0x3c33(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    13a5:	f4                   	hlt    
    13a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13ad:	00 00 00 

00000000000013b0 <deregister_tm_clones>:
    13b0:	48 8d 3d c9 46 00 00 	lea    0x46c9(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    13b7:	48 8d 05 c2 46 00 00 	lea    0x46c2(%rip),%rax        # 5a80 <stdout@GLIBC_2.2.5>
    13be:	48 39 f8             	cmp    %rdi,%rax
    13c1:	74 15                	je     13d8 <deregister_tm_clones+0x28>
    13c3:	48 8b 05 16 3c 00 00 	mov    0x3c16(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    13ca:	48 85 c0             	test   %rax,%rax
    13cd:	74 09                	je     13d8 <deregister_tm_clones+0x28>
    13cf:	ff e0                	jmp    *%rax
    13d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13d8:	c3                   	ret    
    13d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013e0 <register_tm_clones>:
    13e0:	48 8d 3d 99 46 00 00 	lea    0x4699(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    13e7:	48 8d 35 92 46 00 00 	lea    0x4692(%rip),%rsi        # 5a80 <stdout@GLIBC_2.2.5>
    13ee:	48 29 fe             	sub    %rdi,%rsi
    13f1:	48 89 f0             	mov    %rsi,%rax
    13f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    13f8:	48 c1 f8 03          	sar    $0x3,%rax
    13fc:	48 01 c6             	add    %rax,%rsi
    13ff:	48 d1 fe             	sar    %rsi
    1402:	74 14                	je     1418 <register_tm_clones+0x38>
    1404:	48 8b 05 e5 3b 00 00 	mov    0x3be5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    140b:	48 85 c0             	test   %rax,%rax
    140e:	74 08                	je     1418 <register_tm_clones+0x38>
    1410:	ff e0                	jmp    *%rax
    1412:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1418:	c3                   	ret    
    1419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001420 <__do_global_dtors_aux>:
    1420:	f3 0f 1e fa          	endbr64 
    1424:	80 3d 7d 46 00 00 00 	cmpb   $0x0,0x467d(%rip)        # 5aa8 <completed.0>
    142b:	75 2b                	jne    1458 <__do_global_dtors_aux+0x38>
    142d:	55                   	push   %rbp
    142e:	48 83 3d c2 3b 00 00 	cmpq   $0x0,0x3bc2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1435:	00 
    1436:	48 89 e5             	mov    %rsp,%rbp
    1439:	74 0c                	je     1447 <__do_global_dtors_aux+0x27>
    143b:	48 8b 3d c6 3b 00 00 	mov    0x3bc6(%rip),%rdi        # 5008 <__dso_handle>
    1442:	e8 89 fd ff ff       	call   11d0 <__cxa_finalize@plt>
    1447:	e8 64 ff ff ff       	call   13b0 <deregister_tm_clones>
    144c:	c6 05 55 46 00 00 01 	movb   $0x1,0x4655(%rip)        # 5aa8 <completed.0>
    1453:	5d                   	pop    %rbp
    1454:	c3                   	ret    
    1455:	0f 1f 00             	nopl   (%rax)
    1458:	c3                   	ret    
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <frame_dummy>:
    1460:	f3 0f 1e fa          	endbr64 
    1464:	e9 77 ff ff ff       	jmp    13e0 <register_tm_clones>

0000000000001469 <main>:
    1469:	f3 0f 1e fa          	endbr64 
    146d:	53                   	push   %rbx
    146e:	83 ff 01             	cmp    $0x1,%edi
    1471:	0f 84 f8 00 00 00    	je     156f <main+0x106>
    1477:	48 89 f3             	mov    %rsi,%rbx
    147a:	83 ff 02             	cmp    $0x2,%edi
    147d:	0f 85 21 01 00 00    	jne    15a4 <main+0x13b>
    1483:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1487:	48 8d 35 76 1b 00 00 	lea    0x1b76(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    148e:	e8 6d fe ff ff       	call   1300 <fopen@plt>
    1493:	48 89 05 16 46 00 00 	mov    %rax,0x4616(%rip)        # 5ab0 <infile>
    149a:	48 85 c0             	test   %rax,%rax
    149d:	0f 84 df 00 00 00    	je     1582 <main+0x119>
    14a3:	e8 4c 06 00 00       	call   1af4 <initialize_bomb>
    14a8:	48 8d 3d d9 1b 00 00 	lea    0x1bd9(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    14af:	e8 5c fd ff ff       	call   1210 <puts@plt>
    14b4:	48 8d 3d 0d 1c 00 00 	lea    0x1c0d(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    14bb:	e8 50 fd ff ff       	call   1210 <puts@plt>
    14c0:	e8 68 08 00 00       	call   1d2d <read_line>
    14c5:	48 89 c7             	mov    %rax,%rdi
    14c8:	e8 fa 00 00 00       	call   15c7 <phase_1>
    14cd:	e8 8a 09 00 00       	call   1e5c <phase_defused>
    14d2:	48 8d 3d 1f 1c 00 00 	lea    0x1c1f(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    14d9:	e8 32 fd ff ff       	call   1210 <puts@plt>
    14de:	e8 4a 08 00 00       	call   1d2d <read_line>
    14e3:	48 89 c7             	mov    %rax,%rdi
    14e6:	e8 00 01 00 00       	call   15eb <phase_2>
    14eb:	e8 6c 09 00 00       	call   1e5c <phase_defused>
    14f0:	48 8d 3d 46 1b 00 00 	lea    0x1b46(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    14f7:	e8 14 fd ff ff       	call   1210 <puts@plt>
    14fc:	e8 2c 08 00 00       	call   1d2d <read_line>
    1501:	48 89 c7             	mov    %rax,%rdi
    1504:	e8 2f 01 00 00       	call   1638 <phase_3>
    1509:	e8 4e 09 00 00       	call   1e5c <phase_defused>
    150e:	48 8d 3d 46 1b 00 00 	lea    0x1b46(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    1515:	e8 f6 fc ff ff       	call   1210 <puts@plt>
    151a:	e8 0e 08 00 00       	call   1d2d <read_line>
    151f:	48 89 c7             	mov    %rax,%rdi
    1522:	e8 ea 01 00 00       	call   1711 <phase_4>
    1527:	e8 30 09 00 00       	call   1e5c <phase_defused>
    152c:	48 8d 3d f5 1b 00 00 	lea    0x1bf5(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    1533:	e8 d8 fc ff ff       	call   1210 <puts@plt>
    1538:	e8 f0 07 00 00       	call   1d2d <read_line>
    153d:	48 89 c7             	mov    %rax,%rdi
    1540:	e8 29 02 00 00       	call   176e <phase_5>
    1545:	e8 12 09 00 00       	call   1e5c <phase_defused>
    154a:	48 8d 3d 19 1b 00 00 	lea    0x1b19(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    1551:	e8 ba fc ff ff       	call   1210 <puts@plt>
    1556:	e8 d2 07 00 00       	call   1d2d <read_line>
    155b:	48 89 c7             	mov    %rax,%rdi
    155e:	e8 87 02 00 00       	call   17ea <phase_6>
    1563:	e8 f4 08 00 00       	call   1e5c <phase_defused>
    1568:	b8 00 00 00 00       	mov    $0x0,%eax
    156d:	5b                   	pop    %rbx
    156e:	c3                   	ret    
    156f:	48 8b 05 1a 45 00 00 	mov    0x451a(%rip),%rax        # 5a90 <stdin@GLIBC_2.2.5>
    1576:	48 89 05 33 45 00 00 	mov    %rax,0x4533(%rip)        # 5ab0 <infile>
    157d:	e9 21 ff ff ff       	jmp    14a3 <main+0x3a>
    1582:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    1586:	48 8b 13             	mov    (%rbx),%rdx
    1589:	48 8d 35 76 1a 00 00 	lea    0x1a76(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    1590:	bf 01 00 00 00       	mov    $0x1,%edi
    1595:	e8 56 fd ff ff       	call   12f0 <__printf_chk@plt>
    159a:	bf 08 00 00 00       	mov    $0x8,%edi
    159f:	e8 6c fd ff ff       	call   1310 <exit@plt>
    15a4:	48 8b 16             	mov    (%rsi),%rdx
    15a7:	48 8d 35 75 1a 00 00 	lea    0x1a75(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    15ae:	bf 01 00 00 00       	mov    $0x1,%edi
    15b3:	b8 00 00 00 00       	mov    $0x0,%eax
    15b8:	e8 33 fd ff ff       	call   12f0 <__printf_chk@plt>
    15bd:	bf 08 00 00 00       	mov    $0x8,%edi
    15c2:	e8 49 fd ff ff       	call   1310 <exit@plt>

00000000000015c7 <phase_1>:
    15c7:	f3 0f 1e fa          	endbr64 
    15cb:	48 83 ec 08          	sub    $0x8,%rsp
    15cf:	48 8d 35 7a 1b 00 00 	lea    0x1b7a(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    15d6:	e8 a7 04 00 00       	call   1a82 <strings_not_equal>
    15db:	85 c0                	test   %eax,%eax
    15dd:	75 05                	jne    15e4 <phase_1+0x1d>
    15df:	48 83 c4 08          	add    $0x8,%rsp
    15e3:	c3                   	ret    
    15e4:	e8 b2 06 00 00       	call   1c9b <explode_bomb>
    15e9:	eb f4                	jmp    15df <phase_1+0x18>

00000000000015eb <phase_2>:
    15eb:	f3 0f 1e fa          	endbr64 
    15ef:	55                   	push   %rbp
    15f0:	53                   	push   %rbx
    15f1:	48 83 ec 28          	sub    $0x28,%rsp
    15f5:	48 89 e6             	mov    %rsp,%rsi
    15f8:	e8 eb 06 00 00       	call   1ce8 <read_six_numbers>
    15fd:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    1601:	78 0a                	js     160d <phase_2+0x22>
    1603:	48 89 e5             	mov    %rsp,%rbp
    1606:	bb 01 00 00 00       	mov    $0x1,%ebx
    160b:	eb 13                	jmp    1620 <phase_2+0x35>
    160d:	e8 89 06 00 00       	call   1c9b <explode_bomb>
    1612:	eb ef                	jmp    1603 <phase_2+0x18>
    1614:	83 c3 01             	add    $0x1,%ebx
    1617:	48 83 c5 04          	add    $0x4,%rbp
    161b:	83 fb 06             	cmp    $0x6,%ebx
    161e:	74 11                	je     1631 <phase_2+0x46>
    1620:	89 d8                	mov    %ebx,%eax
    1622:	03 45 00             	add    0x0(%rbp),%eax
    1625:	39 45 04             	cmp    %eax,0x4(%rbp)
    1628:	74 ea                	je     1614 <phase_2+0x29>
    162a:	e8 6c 06 00 00       	call   1c9b <explode_bomb>
    162f:	eb e3                	jmp    1614 <phase_2+0x29>
    1631:	48 83 c4 28          	add    $0x28,%rsp
    1635:	5b                   	pop    %rbx
    1636:	5d                   	pop    %rbp
    1637:	c3                   	ret    

0000000000001638 <phase_3>:
    1638:	f3 0f 1e fa          	endbr64 
    163c:	48 83 ec 18          	sub    $0x18,%rsp
    1640:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1645:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    164a:	48 8d 35 75 1d 00 00 	lea    0x1d75(%rip),%rsi        # 33c6 <array.0+0x1e6>
    1651:	b8 00 00 00 00       	mov    $0x0,%eax
    1656:	e8 85 fc ff ff       	call   12e0 <__isoc99_sscanf@plt>
    165b:	83 f8 01             	cmp    $0x1,%eax
    165e:	7e 1c                	jle    167c <phase_3+0x44>
    1660:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
    1665:	77 56                	ja     16bd <phase_3+0x85>
    1667:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    166b:	48 8d 15 4e 1b 00 00 	lea    0x1b4e(%rip),%rdx        # 31c0 <_IO_stdin_used+0x1c0>
    1672:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1676:	48 01 d0             	add    %rdx,%rax
    1679:	3e ff e0             	notrack jmp *%rax
    167c:	e8 1a 06 00 00       	call   1c9b <explode_bomb>
    1681:	eb dd                	jmp    1660 <phase_3+0x28>
    1683:	b8 63 03 00 00       	mov    $0x363,%eax
    1688:	39 44 24 08          	cmp    %eax,0x8(%rsp)
    168c:	75 42                	jne    16d0 <phase_3+0x98>
    168e:	48 83 c4 18          	add    $0x18,%rsp
    1692:	c3                   	ret    
    1693:	b8 cc 00 00 00       	mov    $0xcc,%eax
    1698:	eb ee                	jmp    1688 <phase_3+0x50>
    169a:	b8 a4 03 00 00       	mov    $0x3a4,%eax
    169f:	eb e7                	jmp    1688 <phase_3+0x50>
    16a1:	b8 2e 02 00 00       	mov    $0x22e,%eax
    16a6:	eb e0                	jmp    1688 <phase_3+0x50>
    16a8:	b8 46 00 00 00       	mov    $0x46,%eax
    16ad:	eb d9                	jmp    1688 <phase_3+0x50>
    16af:	b8 05 03 00 00       	mov    $0x305,%eax
    16b4:	eb d2                	jmp    1688 <phase_3+0x50>
    16b6:	b8 ac 03 00 00       	mov    $0x3ac,%eax
    16bb:	eb cb                	jmp    1688 <phase_3+0x50>
    16bd:	e8 d9 05 00 00       	call   1c9b <explode_bomb>
    16c2:	b8 00 00 00 00       	mov    $0x0,%eax
    16c7:	eb bf                	jmp    1688 <phase_3+0x50>
    16c9:	b8 53 00 00 00       	mov    $0x53,%eax
    16ce:	eb b8                	jmp    1688 <phase_3+0x50>
    16d0:	e8 c6 05 00 00       	call   1c9b <explode_bomb>
    16d5:	eb b7                	jmp    168e <phase_3+0x56>

00000000000016d7 <func4>:
    16d7:	f3 0f 1e fa          	endbr64 
    16db:	48 83 ec 08          	sub    $0x8,%rsp
    16df:	89 d1                	mov    %edx,%ecx
    16e1:	29 f1                	sub    %esi,%ecx
    16e3:	d1 e9                	shr    %ecx
    16e5:	01 f1                	add    %esi,%ecx
    16e7:	39 f9                	cmp    %edi,%ecx
    16e9:	77 0c                	ja     16f7 <func4+0x20>
    16eb:	b8 00 00 00 00       	mov    $0x0,%eax
    16f0:	72 11                	jb     1703 <func4+0x2c>
    16f2:	48 83 c4 08          	add    $0x8,%rsp
    16f6:	c3                   	ret    
    16f7:	8d 51 ff             	lea    -0x1(%rcx),%edx
    16fa:	e8 d8 ff ff ff       	call   16d7 <func4>
    16ff:	01 c0                	add    %eax,%eax
    1701:	eb ef                	jmp    16f2 <func4+0x1b>
    1703:	8d 71 01             	lea    0x1(%rcx),%esi
    1706:	e8 cc ff ff ff       	call   16d7 <func4>
    170b:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    170f:	eb e1                	jmp    16f2 <func4+0x1b>

0000000000001711 <phase_4>:
    1711:	f3 0f 1e fa          	endbr64 
    1715:	48 83 ec 18          	sub    $0x18,%rsp
    1719:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    171e:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1723:	48 8d 35 9c 1c 00 00 	lea    0x1c9c(%rip),%rsi        # 33c6 <array.0+0x1e6>
    172a:	b8 00 00 00 00       	mov    $0x0,%eax
    172f:	e8 ac fb ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1734:	83 f8 02             	cmp    $0x2,%eax
    1737:	75 07                	jne    1740 <phase_4+0x2f>
    1739:	83 7c 24 0c 0e       	cmpl   $0xe,0xc(%rsp)
    173e:	76 05                	jbe    1745 <phase_4+0x34>
    1740:	e8 56 05 00 00       	call   1c9b <explode_bomb>
    1745:	ba 0e 00 00 00       	mov    $0xe,%edx
    174a:	be 00 00 00 00       	mov    $0x0,%esi
    174f:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    1753:	e8 7f ff ff ff       	call   16d7 <func4>
    1758:	83 f8 03             	cmp    $0x3,%eax
    175b:	75 07                	jne    1764 <phase_4+0x53>
    175d:	83 7c 24 08 03       	cmpl   $0x3,0x8(%rsp)
    1762:	74 05                	je     1769 <phase_4+0x58>
    1764:	e8 32 05 00 00       	call   1c9b <explode_bomb>
    1769:	48 83 c4 18          	add    $0x18,%rsp
    176d:	c3                   	ret    

000000000000176e <phase_5>:
    176e:	f3 0f 1e fa          	endbr64 
    1772:	48 83 ec 18          	sub    $0x18,%rsp
    1776:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    177b:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1780:	48 8d 35 3f 1c 00 00 	lea    0x1c3f(%rip),%rsi        # 33c6 <array.0+0x1e6>
    1787:	b8 00 00 00 00       	mov    $0x0,%eax
    178c:	e8 4f fb ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1791:	83 f8 01             	cmp    $0x1,%eax
    1794:	7e 4d                	jle    17e3 <phase_5+0x75>
    1796:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    179a:	83 e0 0f             	and    $0xf,%eax
    179d:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    17a1:	83 f8 0f             	cmp    $0xf,%eax
    17a4:	74 33                	je     17d9 <phase_5+0x6b>
    17a6:	b9 00 00 00 00       	mov    $0x0,%ecx
    17ab:	ba 00 00 00 00       	mov    $0x0,%edx
    17b0:	48 8d 35 29 1a 00 00 	lea    0x1a29(%rip),%rsi        # 31e0 <array.0>
    17b7:	83 c2 01             	add    $0x1,%edx
    17ba:	48 98                	cltq   
    17bc:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    17bf:	01 c1                	add    %eax,%ecx
    17c1:	83 f8 0f             	cmp    $0xf,%eax
    17c4:	75 f1                	jne    17b7 <phase_5+0x49>
    17c6:	c7 44 24 0c 0f 00 00 	movl   $0xf,0xc(%rsp)
    17cd:	00 
    17ce:	83 fa 0f             	cmp    $0xf,%edx
    17d1:	75 06                	jne    17d9 <phase_5+0x6b>
    17d3:	39 4c 24 08          	cmp    %ecx,0x8(%rsp)
    17d7:	74 05                	je     17de <phase_5+0x70>
    17d9:	e8 bd 04 00 00       	call   1c9b <explode_bomb>
    17de:	48 83 c4 18          	add    $0x18,%rsp
    17e2:	c3                   	ret    
    17e3:	e8 b3 04 00 00       	call   1c9b <explode_bomb>
    17e8:	eb ac                	jmp    1796 <phase_5+0x28>

00000000000017ea <phase_6>:
    17ea:	f3 0f 1e fa          	endbr64 
    17ee:	41 57                	push   %r15
    17f0:	41 56                	push   %r14
    17f2:	41 55                	push   %r13
    17f4:	41 54                	push   %r12
    17f6:	55                   	push   %rbp
    17f7:	53                   	push   %rbx
    17f8:	48 83 ec 68          	sub    $0x68,%rsp
    17fc:	48 8d 44 24 40       	lea    0x40(%rsp),%rax
    1801:	49 89 c6             	mov    %rax,%r14
    1804:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1809:	48 89 c6             	mov    %rax,%rsi
    180c:	e8 d7 04 00 00       	call   1ce8 <read_six_numbers>
    1811:	4d 89 f4             	mov    %r14,%r12
    1814:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    181a:	4d 89 f5             	mov    %r14,%r13
    181d:	e9 c6 00 00 00       	jmp    18e8 <phase_6+0xfe>
    1822:	e8 74 04 00 00       	call   1c9b <explode_bomb>
    1827:	e9 ce 00 00 00       	jmp    18fa <phase_6+0x110>
    182c:	48 83 c3 01          	add    $0x1,%rbx
    1830:	83 fb 05             	cmp    $0x5,%ebx
    1833:	0f 8f a7 00 00 00    	jg     18e0 <phase_6+0xf6>
    1839:	41 8b 44 9d 00       	mov    0x0(%r13,%rbx,4),%eax
    183e:	39 45 00             	cmp    %eax,0x0(%rbp)
    1841:	75 e9                	jne    182c <phase_6+0x42>
    1843:	e8 53 04 00 00       	call   1c9b <explode_bomb>
    1848:	eb e2                	jmp    182c <phase_6+0x42>
    184a:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    184f:	48 83 c2 18          	add    $0x18,%rdx
    1853:	b9 07 00 00 00       	mov    $0x7,%ecx
    1858:	89 c8                	mov    %ecx,%eax
    185a:	41 2b 04 24          	sub    (%r12),%eax
    185e:	41 89 04 24          	mov    %eax,(%r12)
    1862:	49 83 c4 04          	add    $0x4,%r12
    1866:	4c 39 e2             	cmp    %r12,%rdx
    1869:	75 ed                	jne    1858 <phase_6+0x6e>
    186b:	be 00 00 00 00       	mov    $0x0,%esi
    1870:	8b 4c b4 40          	mov    0x40(%rsp,%rsi,4),%ecx
    1874:	b8 01 00 00 00       	mov    $0x1,%eax
    1879:	48 8d 15 b0 3d 00 00 	lea    0x3db0(%rip),%rdx        # 5630 <node1>
    1880:	83 f9 01             	cmp    $0x1,%ecx
    1883:	7e 0b                	jle    1890 <phase_6+0xa6>
    1885:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1889:	83 c0 01             	add    $0x1,%eax
    188c:	39 c8                	cmp    %ecx,%eax
    188e:	75 f5                	jne    1885 <phase_6+0x9b>
    1890:	48 89 54 f4 10       	mov    %rdx,0x10(%rsp,%rsi,8)
    1895:	48 83 c6 01          	add    $0x1,%rsi
    1899:	48 83 fe 06          	cmp    $0x6,%rsi
    189d:	75 d1                	jne    1870 <phase_6+0x86>
    189f:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    18a4:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    18a9:	48 89 43 08          	mov    %rax,0x8(%rbx)
    18ad:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    18b2:	48 89 50 08          	mov    %rdx,0x8(%rax)
    18b6:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    18bb:	48 89 42 08          	mov    %rax,0x8(%rdx)
    18bf:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    18c4:	48 89 50 08          	mov    %rdx,0x8(%rax)
    18c8:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    18cd:	48 89 42 08          	mov    %rax,0x8(%rdx)
    18d1:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    18d8:	00 
    18d9:	bd 05 00 00 00       	mov    $0x5,%ebp
    18de:	eb 35                	jmp    1915 <phase_6+0x12b>
    18e0:	49 83 c7 01          	add    $0x1,%r15
    18e4:	49 83 c6 04          	add    $0x4,%r14
    18e8:	4c 89 f5             	mov    %r14,%rbp
    18eb:	41 8b 06             	mov    (%r14),%eax
    18ee:	83 e8 01             	sub    $0x1,%eax
    18f1:	83 f8 05             	cmp    $0x5,%eax
    18f4:	0f 87 28 ff ff ff    	ja     1822 <phase_6+0x38>
    18fa:	41 83 ff 05          	cmp    $0x5,%r15d
    18fe:	0f 8f 46 ff ff ff    	jg     184a <phase_6+0x60>
    1904:	4c 89 fb             	mov    %r15,%rbx
    1907:	e9 2d ff ff ff       	jmp    1839 <phase_6+0x4f>
    190c:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1910:	83 ed 01             	sub    $0x1,%ebp
    1913:	74 11                	je     1926 <phase_6+0x13c>
    1915:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1919:	8b 00                	mov    (%rax),%eax
    191b:	39 03                	cmp    %eax,(%rbx)
    191d:	7d ed                	jge    190c <phase_6+0x122>
    191f:	e8 77 03 00 00       	call   1c9b <explode_bomb>
    1924:	eb e6                	jmp    190c <phase_6+0x122>
    1926:	48 83 c4 68          	add    $0x68,%rsp
    192a:	5b                   	pop    %rbx
    192b:	5d                   	pop    %rbp
    192c:	41 5c                	pop    %r12
    192e:	41 5d                	pop    %r13
    1930:	41 5e                	pop    %r14
    1932:	41 5f                	pop    %r15
    1934:	c3                   	ret    

0000000000001935 <fun7>:
    1935:	f3 0f 1e fa          	endbr64 
    1939:	48 85 ff             	test   %rdi,%rdi
    193c:	74 32                	je     1970 <fun7+0x3b>
    193e:	48 83 ec 08          	sub    $0x8,%rsp
    1942:	8b 17                	mov    (%rdi),%edx
    1944:	39 f2                	cmp    %esi,%edx
    1946:	7f 0c                	jg     1954 <fun7+0x1f>
    1948:	b8 00 00 00 00       	mov    $0x0,%eax
    194d:	75 12                	jne    1961 <fun7+0x2c>
    194f:	48 83 c4 08          	add    $0x8,%rsp
    1953:	c3                   	ret    
    1954:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1958:	e8 d8 ff ff ff       	call   1935 <fun7>
    195d:	01 c0                	add    %eax,%eax
    195f:	eb ee                	jmp    194f <fun7+0x1a>
    1961:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1965:	e8 cb ff ff ff       	call   1935 <fun7>
    196a:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    196e:	eb df                	jmp    194f <fun7+0x1a>
    1970:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1975:	c3                   	ret    

0000000000001976 <secret_phase>:
    1976:	f3 0f 1e fa          	endbr64 
    197a:	53                   	push   %rbx
    197b:	e8 ad 03 00 00       	call   1d2d <read_line>
    1980:	48 89 c7             	mov    %rax,%rdi
    1983:	ba 0a 00 00 00       	mov    $0xa,%edx
    1988:	be 00 00 00 00       	mov    $0x0,%esi
    198d:	e8 2e f9 ff ff       	call   12c0 <strtol@plt>
    1992:	89 c3                	mov    %eax,%ebx
    1994:	83 e8 01             	sub    $0x1,%eax
    1997:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    199c:	77 26                	ja     19c4 <secret_phase+0x4e>
    199e:	89 de                	mov    %ebx,%esi
    19a0:	48 8d 3d a9 3b 00 00 	lea    0x3ba9(%rip),%rdi        # 5550 <n1>
    19a7:	e8 89 ff ff ff       	call   1935 <fun7>
    19ac:	83 f8 02             	cmp    $0x2,%eax
    19af:	75 1a                	jne    19cb <secret_phase+0x55>
    19b1:	48 8d 3d d8 17 00 00 	lea    0x17d8(%rip),%rdi        # 3190 <_IO_stdin_used+0x190>
    19b8:	e8 53 f8 ff ff       	call   1210 <puts@plt>
    19bd:	e8 9a 04 00 00       	call   1e5c <phase_defused>
    19c2:	5b                   	pop    %rbx
    19c3:	c3                   	ret    
    19c4:	e8 d2 02 00 00       	call   1c9b <explode_bomb>
    19c9:	eb d3                	jmp    199e <secret_phase+0x28>
    19cb:	e8 cb 02 00 00       	call   1c9b <explode_bomb>
    19d0:	eb df                	jmp    19b1 <secret_phase+0x3b>

00000000000019d2 <sig_handler>:
    19d2:	f3 0f 1e fa          	endbr64 
    19d6:	50                   	push   %rax
    19d7:	58                   	pop    %rax
    19d8:	48 83 ec 08          	sub    $0x8,%rsp
    19dc:	48 8d 3d 3d 18 00 00 	lea    0x183d(%rip),%rdi        # 3220 <array.0+0x40>
    19e3:	e8 28 f8 ff ff       	call   1210 <puts@plt>
    19e8:	bf 03 00 00 00       	mov    $0x3,%edi
    19ed:	e8 4e f9 ff ff       	call   1340 <sleep@plt>
    19f2:	48 8d 35 58 19 00 00 	lea    0x1958(%rip),%rsi        # 3351 <array.0+0x171>
    19f9:	bf 01 00 00 00       	mov    $0x1,%edi
    19fe:	b8 00 00 00 00       	mov    $0x0,%eax
    1a03:	e8 e8 f8 ff ff       	call   12f0 <__printf_chk@plt>
    1a08:	48 8b 3d 71 40 00 00 	mov    0x4071(%rip),%rdi        # 5a80 <stdout@GLIBC_2.2.5>
    1a0f:	e8 bc f8 ff ff       	call   12d0 <fflush@plt>
    1a14:	bf 01 00 00 00       	mov    $0x1,%edi
    1a19:	e8 22 f9 ff ff       	call   1340 <sleep@plt>
    1a1e:	48 8d 3d 34 19 00 00 	lea    0x1934(%rip),%rdi        # 3359 <array.0+0x179>
    1a25:	e8 e6 f7 ff ff       	call   1210 <puts@plt>
    1a2a:	bf 10 00 00 00       	mov    $0x10,%edi
    1a2f:	e8 dc f8 ff ff       	call   1310 <exit@plt>

0000000000001a34 <invalid_phase>:
    1a34:	f3 0f 1e fa          	endbr64 
    1a38:	50                   	push   %rax
    1a39:	58                   	pop    %rax
    1a3a:	48 83 ec 08          	sub    $0x8,%rsp
    1a3e:	48 89 fa             	mov    %rdi,%rdx
    1a41:	48 8d 35 19 19 00 00 	lea    0x1919(%rip),%rsi        # 3361 <array.0+0x181>
    1a48:	bf 01 00 00 00       	mov    $0x1,%edi
    1a4d:	b8 00 00 00 00       	mov    $0x0,%eax
    1a52:	e8 99 f8 ff ff       	call   12f0 <__printf_chk@plt>
    1a57:	bf 08 00 00 00       	mov    $0x8,%edi
    1a5c:	e8 af f8 ff ff       	call   1310 <exit@plt>

0000000000001a61 <string_length>:
    1a61:	f3 0f 1e fa          	endbr64 
    1a65:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a68:	74 12                	je     1a7c <string_length+0x1b>
    1a6a:	b8 00 00 00 00       	mov    $0x0,%eax
    1a6f:	48 83 c7 01          	add    $0x1,%rdi
    1a73:	83 c0 01             	add    $0x1,%eax
    1a76:	80 3f 00             	cmpb   $0x0,(%rdi)
    1a79:	75 f4                	jne    1a6f <string_length+0xe>
    1a7b:	c3                   	ret    
    1a7c:	b8 00 00 00 00       	mov    $0x0,%eax
    1a81:	c3                   	ret    

0000000000001a82 <strings_not_equal>:
    1a82:	f3 0f 1e fa          	endbr64 
    1a86:	41 54                	push   %r12
    1a88:	55                   	push   %rbp
    1a89:	53                   	push   %rbx
    1a8a:	48 89 fb             	mov    %rdi,%rbx
    1a8d:	48 89 f5             	mov    %rsi,%rbp
    1a90:	e8 cc ff ff ff       	call   1a61 <string_length>
    1a95:	41 89 c4             	mov    %eax,%r12d
    1a98:	48 89 ef             	mov    %rbp,%rdi
    1a9b:	e8 c1 ff ff ff       	call   1a61 <string_length>
    1aa0:	89 c2                	mov    %eax,%edx
    1aa2:	b8 01 00 00 00       	mov    $0x1,%eax
    1aa7:	41 39 d4             	cmp    %edx,%r12d
    1aaa:	75 31                	jne    1add <strings_not_equal+0x5b>
    1aac:	0f b6 13             	movzbl (%rbx),%edx
    1aaf:	84 d2                	test   %dl,%dl
    1ab1:	74 1e                	je     1ad1 <strings_not_equal+0x4f>
    1ab3:	b8 00 00 00 00       	mov    $0x0,%eax
    1ab8:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1abc:	75 1a                	jne    1ad8 <strings_not_equal+0x56>
    1abe:	48 83 c0 01          	add    $0x1,%rax
    1ac2:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1ac6:	84 d2                	test   %dl,%dl
    1ac8:	75 ee                	jne    1ab8 <strings_not_equal+0x36>
    1aca:	b8 00 00 00 00       	mov    $0x0,%eax
    1acf:	eb 0c                	jmp    1add <strings_not_equal+0x5b>
    1ad1:	b8 00 00 00 00       	mov    $0x0,%eax
    1ad6:	eb 05                	jmp    1add <strings_not_equal+0x5b>
    1ad8:	b8 01 00 00 00       	mov    $0x1,%eax
    1add:	5b                   	pop    %rbx
    1ade:	5d                   	pop    %rbp
    1adf:	41 5c                	pop    %r12
    1ae1:	c3                   	ret    

0000000000001ae2 <strings_are_equal>:
    1ae2:	f3 0f 1e fa          	endbr64 
    1ae6:	e8 97 ff ff ff       	call   1a82 <strings_not_equal>
    1aeb:	85 c0                	test   %eax,%eax
    1aed:	0f 94 c0             	sete   %al
    1af0:	0f b6 c0             	movzbl %al,%eax
    1af3:	c3                   	ret    

0000000000001af4 <initialize_bomb>:
    1af4:	f3 0f 1e fa          	endbr64 
    1af8:	48 83 ec 08          	sub    $0x8,%rsp
    1afc:	48 8d 35 cf fe ff ff 	lea    -0x131(%rip),%rsi        # 19d2 <sig_handler>
    1b03:	bf 02 00 00 00       	mov    $0x2,%edi
    1b08:	e8 83 f7 ff ff       	call   1290 <signal@plt>
    1b0d:	48 8d 3d 5e 18 00 00 	lea    0x185e(%rip),%rdi        # 3372 <array.0+0x192>
    1b14:	e8 c7 f6 ff ff       	call   11e0 <getenv@plt>
    1b19:	48 85 c0             	test   %rax,%rax
    1b1c:	0f 95 c0             	setne  %al
    1b1f:	0f b6 c0             	movzbl %al,%eax
    1b22:	89 05 78 49 00 00    	mov    %eax,0x4978(%rip)        # 64a0 <grade_bomb>
    1b28:	48 83 c4 08          	add    $0x8,%rsp
    1b2c:	c3                   	ret    

0000000000001b2d <initialize_bomb_solve>:
    1b2d:	f3 0f 1e fa          	endbr64 
    1b31:	c3                   	ret    

0000000000001b32 <blank_line>:
    1b32:	f3 0f 1e fa          	endbr64 
    1b36:	55                   	push   %rbp
    1b37:	53                   	push   %rbx
    1b38:	48 83 ec 08          	sub    $0x8,%rsp
    1b3c:	48 89 fd             	mov    %rdi,%rbp
    1b3f:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1b43:	84 db                	test   %bl,%bl
    1b45:	74 1e                	je     1b65 <blank_line+0x33>
    1b47:	e8 04 f8 ff ff       	call   1350 <__ctype_b_loc@plt>
    1b4c:	48 83 c5 01          	add    $0x1,%rbp
    1b50:	48 0f be db          	movsbq %bl,%rbx
    1b54:	48 8b 00             	mov    (%rax),%rax
    1b57:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1b5c:	75 e1                	jne    1b3f <blank_line+0xd>
    1b5e:	b8 00 00 00 00       	mov    $0x0,%eax
    1b63:	eb 05                	jmp    1b6a <blank_line+0x38>
    1b65:	b8 01 00 00 00       	mov    $0x1,%eax
    1b6a:	48 83 c4 08          	add    $0x8,%rsp
    1b6e:	5b                   	pop    %rbx
    1b6f:	5d                   	pop    %rbp
    1b70:	c3                   	ret    

0000000000001b71 <skip>:
    1b71:	f3 0f 1e fa          	endbr64 
    1b75:	55                   	push   %rbp
    1b76:	53                   	push   %rbx
    1b77:	48 83 ec 08          	sub    $0x8,%rsp
    1b7b:	48 8d 2d be 3f 00 00 	lea    0x3fbe(%rip),%rbp        # 5b40 <input_strings>
    1b82:	48 63 15 af 3f 00 00 	movslq 0x3faf(%rip),%rdx        # 5b38 <num_input_strings>
    1b89:	48 89 d0             	mov    %rdx,%rax
    1b8c:	48 c1 e0 04          	shl    $0x4,%rax
    1b90:	48 29 d0             	sub    %rdx,%rax
    1b93:	48 8d 7c c5 00       	lea    0x0(%rbp,%rax,8),%rdi
    1b98:	48 8b 15 11 3f 00 00 	mov    0x3f11(%rip),%rdx        # 5ab0 <infile>
    1b9f:	be 78 00 00 00       	mov    $0x78,%esi
    1ba4:	e8 c7 f6 ff ff       	call   1270 <fgets@plt>
    1ba9:	48 89 c3             	mov    %rax,%rbx
    1bac:	48 85 c0             	test   %rax,%rax
    1baf:	74 0c                	je     1bbd <skip+0x4c>
    1bb1:	48 89 c7             	mov    %rax,%rdi
    1bb4:	e8 79 ff ff ff       	call   1b32 <blank_line>
    1bb9:	85 c0                	test   %eax,%eax
    1bbb:	75 c5                	jne    1b82 <skip+0x11>
    1bbd:	48 89 d8             	mov    %rbx,%rax
    1bc0:	48 83 c4 08          	add    $0x8,%rsp
    1bc4:	5b                   	pop    %rbx
    1bc5:	5d                   	pop    %rbp
    1bc6:	c3                   	ret    

0000000000001bc7 <send_msg>:
    1bc7:	f3 0f 1e fa          	endbr64 
    1bcb:	53                   	push   %rbx
    1bcc:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1bd3:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1bd8:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1bdf:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1be4:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1beb:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1bf0:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    1bf7:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    1bfc:	8b 0d 36 3f 00 00    	mov    0x3f36(%rip),%ecx        # 5b38 <num_input_strings>
    1c02:	8d 41 ff             	lea    -0x1(%rcx),%eax
    1c05:	48 98                	cltq   
    1c07:	48 89 c2             	mov    %rax,%rdx
    1c0a:	48 c1 e2 04          	shl    $0x4,%rdx
    1c0e:	48 29 c2             	sub    %rax,%rdx
    1c11:	48 8d 05 28 3f 00 00 	lea    0x3f28(%rip),%rax        # 5b40 <input_strings>
    1c18:	48 8d 04 d0          	lea    (%rax,%rdx,8),%rax
    1c1c:	85 ff                	test   %edi,%edi
    1c1e:	4c 8d 0d 58 17 00 00 	lea    0x1758(%rip),%r9        # 337d <array.0+0x19d>
    1c25:	48 8d 15 59 17 00 00 	lea    0x1759(%rip),%rdx        # 3385 <array.0+0x1a5>
    1c2c:	4c 0f 44 ca          	cmove  %rdx,%r9
    1c30:	48 8d 9c 24 00 20 00 	lea    0x2000(%rsp),%rbx
    1c37:	00 
    1c38:	50                   	push   %rax
    1c39:	51                   	push   %rcx
    1c3a:	44 8b 05 ff 38 00 00 	mov    0x38ff(%rip),%r8d        # 5540 <bomb_id>
    1c41:	48 8d 0d 46 17 00 00 	lea    0x1746(%rip),%rcx        # 338e <array.0+0x1ae>
    1c48:	ba 00 20 00 00       	mov    $0x2000,%edx
    1c4d:	be 01 00 00 00       	mov    $0x1,%esi
    1c52:	48 89 df             	mov    %rbx,%rdi
    1c55:	b8 00 00 00 00       	mov    $0x0,%eax
    1c5a:	e8 01 f7 ff ff       	call   1360 <__sprintf_chk@plt>
    1c5f:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    1c64:	ba 00 00 00 00       	mov    $0x0,%edx
    1c69:	48 89 de             	mov    %rbx,%rsi
    1c6c:	48 8d 3d cd 34 00 00 	lea    0x34cd(%rip),%rdi        # 5140 <userid>
    1c73:	e8 77 0d 00 00       	call   29ef <driver_post>
    1c78:	48 83 c4 10          	add    $0x10,%rsp
    1c7c:	85 c0                	test   %eax,%eax
    1c7e:	78 09                	js     1c89 <send_msg+0xc2>
    1c80:	48 81 c4 00 40 00 00 	add    $0x4000,%rsp
    1c87:	5b                   	pop    %rbx
    1c88:	c3                   	ret    
    1c89:	48 89 e7             	mov    %rsp,%rdi
    1c8c:	e8 7f f5 ff ff       	call   1210 <puts@plt>
    1c91:	bf 00 00 00 00       	mov    $0x0,%edi
    1c96:	e8 75 f6 ff ff       	call   1310 <exit@plt>

0000000000001c9b <explode_bomb>:
    1c9b:	f3 0f 1e fa          	endbr64 
    1c9f:	50                   	push   %rax
    1ca0:	58                   	pop    %rax
    1ca1:	48 83 ec 08          	sub    $0x8,%rsp
    1ca5:	48 8d 3d ee 16 00 00 	lea    0x16ee(%rip),%rdi        # 339a <array.0+0x1ba>
    1cac:	e8 5f f5 ff ff       	call   1210 <puts@plt>
    1cb1:	48 8d 3d eb 16 00 00 	lea    0x16eb(%rip),%rdi        # 33a3 <array.0+0x1c3>
    1cb8:	e8 53 f5 ff ff       	call   1210 <puts@plt>
    1cbd:	83 3d dc 47 00 00 00 	cmpl   $0x0,0x47dc(%rip)        # 64a0 <grade_bomb>
    1cc4:	74 0a                	je     1cd0 <explode_bomb+0x35>
    1cc6:	bf 08 00 00 00       	mov    $0x8,%edi
    1ccb:	e8 40 f6 ff ff       	call   1310 <exit@plt>
    1cd0:	bf 00 00 00 00       	mov    $0x0,%edi
    1cd5:	e8 ed fe ff ff       	call   1bc7 <send_msg>
    1cda:	48 8d 3d 77 15 00 00 	lea    0x1577(%rip),%rdi        # 3258 <array.0+0x78>
    1ce1:	e8 2a f5 ff ff       	call   1210 <puts@plt>
    1ce6:	eb de                	jmp    1cc6 <explode_bomb+0x2b>

0000000000001ce8 <read_six_numbers>:
    1ce8:	f3 0f 1e fa          	endbr64 
    1cec:	48 83 ec 08          	sub    $0x8,%rsp
    1cf0:	48 89 f2             	mov    %rsi,%rdx
    1cf3:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1cf7:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1cfb:	50                   	push   %rax
    1cfc:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1d00:	50                   	push   %rax
    1d01:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1d05:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1d09:	48 8d 35 aa 16 00 00 	lea    0x16aa(%rip),%rsi        # 33ba <array.0+0x1da>
    1d10:	b8 00 00 00 00       	mov    $0x0,%eax
    1d15:	e8 c6 f5 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1d1a:	48 83 c4 10          	add    $0x10,%rsp
    1d1e:	83 f8 05             	cmp    $0x5,%eax
    1d21:	7e 05                	jle    1d28 <read_six_numbers+0x40>
    1d23:	48 83 c4 08          	add    $0x8,%rsp
    1d27:	c3                   	ret    
    1d28:	e8 6e ff ff ff       	call   1c9b <explode_bomb>

0000000000001d2d <read_line>:
    1d2d:	f3 0f 1e fa          	endbr64 
    1d31:	55                   	push   %rbp
    1d32:	53                   	push   %rbx
    1d33:	48 83 ec 08          	sub    $0x8,%rsp
    1d37:	b8 00 00 00 00       	mov    $0x0,%eax
    1d3c:	e8 30 fe ff ff       	call   1b71 <skip>
    1d41:	48 85 c0             	test   %rax,%rax
    1d44:	74 63                	je     1da9 <read_line+0x7c>
    1d46:	8b 1d ec 3d 00 00    	mov    0x3dec(%rip),%ebx        # 5b38 <num_input_strings>
    1d4c:	48 63 d3             	movslq %ebx,%rdx
    1d4f:	48 89 d0             	mov    %rdx,%rax
    1d52:	48 c1 e0 04          	shl    $0x4,%rax
    1d56:	48 29 d0             	sub    %rdx,%rax
    1d59:	48 8d 15 e0 3d 00 00 	lea    0x3de0(%rip),%rdx        # 5b40 <input_strings>
    1d60:	48 8d 2c c2          	lea    (%rdx,%rax,8),%rbp
    1d64:	48 89 ef             	mov    %rbp,%rdi
    1d67:	e8 c4 f4 ff ff       	call   1230 <strlen@plt>
    1d6c:	83 f8 76             	cmp    $0x76,%eax
    1d6f:	0f 8f 9d 00 00 00    	jg     1e12 <read_line+0xe5>
    1d75:	83 e8 01             	sub    $0x1,%eax
    1d78:	48 98                	cltq   
    1d7a:	48 63 cb             	movslq %ebx,%rcx
    1d7d:	48 89 ca             	mov    %rcx,%rdx
    1d80:	48 c1 e2 04          	shl    $0x4,%rdx
    1d84:	48 29 ca             	sub    %rcx,%rdx
    1d87:	48 8d 0d b2 3d 00 00 	lea    0x3db2(%rip),%rcx        # 5b40 <input_strings>
    1d8e:	48 8d 14 d1          	lea    (%rcx,%rdx,8),%rdx
    1d92:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1d96:	83 c3 01             	add    $0x1,%ebx
    1d99:	89 1d 99 3d 00 00    	mov    %ebx,0x3d99(%rip)        # 5b38 <num_input_strings>
    1d9f:	48 89 e8             	mov    %rbp,%rax
    1da2:	48 83 c4 08          	add    $0x8,%rsp
    1da6:	5b                   	pop    %rbx
    1da7:	5d                   	pop    %rbp
    1da8:	c3                   	ret    
    1da9:	48 8b 05 e0 3c 00 00 	mov    0x3ce0(%rip),%rax        # 5a90 <stdin@GLIBC_2.2.5>
    1db0:	48 39 05 f9 3c 00 00 	cmp    %rax,0x3cf9(%rip)        # 5ab0 <infile>
    1db7:	74 13                	je     1dcc <read_line+0x9f>
    1db9:	83 3d e0 46 00 00 00 	cmpl   $0x0,0x46e0(%rip)        # 64a0 <grade_bomb>
    1dc0:	74 20                	je     1de2 <read_line+0xb5>
    1dc2:	bf 00 00 00 00       	mov    $0x0,%edi
    1dc7:	e8 44 f5 ff ff       	call   1310 <exit@plt>
    1dcc:	48 8d 3d f9 15 00 00 	lea    0x15f9(%rip),%rdi        # 33cc <array.0+0x1ec>
    1dd3:	e8 38 f4 ff ff       	call   1210 <puts@plt>
    1dd8:	bf 08 00 00 00       	mov    $0x8,%edi
    1ddd:	e8 2e f5 ff ff       	call   1310 <exit@plt>
    1de2:	48 89 05 c7 3c 00 00 	mov    %rax,0x3cc7(%rip)        # 5ab0 <infile>
    1de9:	b8 00 00 00 00       	mov    $0x0,%eax
    1dee:	e8 7e fd ff ff       	call   1b71 <skip>
    1df3:	48 85 c0             	test   %rax,%rax
    1df6:	0f 85 4a ff ff ff    	jne    1d46 <read_line+0x19>
    1dfc:	48 8d 3d c9 15 00 00 	lea    0x15c9(%rip),%rdi        # 33cc <array.0+0x1ec>
    1e03:	e8 08 f4 ff ff       	call   1210 <puts@plt>
    1e08:	bf 00 00 00 00       	mov    $0x0,%edi
    1e0d:	e8 fe f4 ff ff       	call   1310 <exit@plt>
    1e12:	48 8d 3d d1 15 00 00 	lea    0x15d1(%rip),%rdi        # 33ea <array.0+0x20a>
    1e19:	e8 f2 f3 ff ff       	call   1210 <puts@plt>
    1e1e:	8b 05 14 3d 00 00    	mov    0x3d14(%rip),%eax        # 5b38 <num_input_strings>
    1e24:	8d 50 01             	lea    0x1(%rax),%edx
    1e27:	89 15 0b 3d 00 00    	mov    %edx,0x3d0b(%rip)        # 5b38 <num_input_strings>
    1e2d:	48 98                	cltq   
    1e2f:	48 6b c0 78          	imul   $0x78,%rax,%rax
    1e33:	48 8d 15 06 3d 00 00 	lea    0x3d06(%rip),%rdx        # 5b40 <input_strings>
    1e3a:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1e41:	75 6e 63 
    1e44:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1e4b:	2a 2a 00 
    1e4e:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1e52:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1e57:	e8 3f fe ff ff       	call   1c9b <explode_bomb>

0000000000001e5c <phase_defused>:
    1e5c:	f3 0f 1e fa          	endbr64 
    1e60:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
    1e67:	83 3d 32 46 00 00 00 	cmpl   $0x0,0x4632(%rip)        # 64a0 <grade_bomb>
    1e6e:	74 11                	je     1e81 <phase_defused+0x25>
    1e70:	83 3d c1 3c 00 00 06 	cmpl   $0x6,0x3cc1(%rip)        # 5b38 <num_input_strings>
    1e77:	74 14                	je     1e8d <phase_defused+0x31>
    1e79:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
    1e80:	c3                   	ret    
    1e81:	bf 01 00 00 00       	mov    $0x1,%edi
    1e86:	e8 3c fd ff ff       	call   1bc7 <send_msg>
    1e8b:	eb e3                	jmp    1e70 <phase_defused+0x14>
    1e8d:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1e92:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1e97:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1e9c:	48 8d 35 62 15 00 00 	lea    0x1562(%rip),%rsi        # 3405 <array.0+0x225>
    1ea3:	48 8d 3d fe 3d 00 00 	lea    0x3dfe(%rip),%rdi        # 5ca8 <input_strings+0x168>
    1eaa:	b8 00 00 00 00       	mov    $0x0,%eax
    1eaf:	e8 2c f4 ff ff       	call   12e0 <__isoc99_sscanf@plt>
    1eb4:	83 f8 03             	cmp    $0x3,%eax
    1eb7:	74 23                	je     1edc <phase_defused+0x80>
    1eb9:	48 8d 3d 20 14 00 00 	lea    0x1420(%rip),%rdi        # 32e0 <array.0+0x100>
    1ec0:	e8 4b f3 ff ff       	call   1210 <puts@plt>
    1ec5:	83 3d d4 45 00 00 00 	cmpl   $0x0,0x45d4(%rip)        # 64a0 <grade_bomb>
    1ecc:	75 ab                	jne    1e79 <phase_defused+0x1d>
    1ece:	48 8d 3d 3b 14 00 00 	lea    0x143b(%rip),%rdi        # 3310 <array.0+0x130>
    1ed5:	e8 36 f3 ff ff       	call   1210 <puts@plt>
    1eda:	eb 9d                	jmp    1e79 <phase_defused+0x1d>
    1edc:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1ee1:	48 8d 35 26 15 00 00 	lea    0x1526(%rip),%rsi        # 340e <array.0+0x22e>
    1ee8:	e8 95 fb ff ff       	call   1a82 <strings_not_equal>
    1eed:	85 c0                	test   %eax,%eax
    1eef:	75 c8                	jne    1eb9 <phase_defused+0x5d>
    1ef1:	48 8d 3d 88 13 00 00 	lea    0x1388(%rip),%rdi        # 3280 <array.0+0xa0>
    1ef8:	e8 13 f3 ff ff       	call   1210 <puts@plt>
    1efd:	48 8d 3d a4 13 00 00 	lea    0x13a4(%rip),%rdi        # 32a8 <array.0+0xc8>
    1f04:	e8 07 f3 ff ff       	call   1210 <puts@plt>
    1f09:	b8 00 00 00 00       	mov    $0x0,%eax
    1f0e:	e8 63 fa ff ff       	call   1976 <secret_phase>
    1f13:	eb a4                	jmp    1eb9 <phase_defused+0x5d>

0000000000001f15 <sigalrm_handler>:
    1f15:	f3 0f 1e fa          	endbr64 
    1f19:	50                   	push   %rax
    1f1a:	58                   	pop    %rax
    1f1b:	48 83 ec 08          	sub    $0x8,%rsp
    1f1f:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f24:	48 8d 15 3d 15 00 00 	lea    0x153d(%rip),%rdx        # 3468 <array.0+0x288>
    1f2b:	be 01 00 00 00       	mov    $0x1,%esi
    1f30:	48 8b 3d 69 3b 00 00 	mov    0x3b69(%rip),%rdi        # 5aa0 <stderr@GLIBC_2.2.5>
    1f37:	b8 00 00 00 00       	mov    $0x0,%eax
    1f3c:	e8 ef f3 ff ff       	call   1330 <__fprintf_chk@plt>
    1f41:	bf 01 00 00 00       	mov    $0x1,%edi
    1f46:	e8 c5 f3 ff ff       	call   1310 <exit@plt>

0000000000001f4b <rio_readlineb>:
    1f4b:	41 56                	push   %r14
    1f4d:	41 55                	push   %r13
    1f4f:	41 54                	push   %r12
    1f51:	55                   	push   %rbp
    1f52:	53                   	push   %rbx
    1f53:	49 89 f4             	mov    %rsi,%r12
    1f56:	48 83 fa 01          	cmp    $0x1,%rdx
    1f5a:	0f 86 92 00 00 00    	jbe    1ff2 <rio_readlineb+0xa7>
    1f60:	48 89 fb             	mov    %rdi,%rbx
    1f63:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1f68:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1f6e:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1f72:	eb 56                	jmp    1fca <rio_readlineb+0x7f>
    1f74:	e8 77 f2 ff ff       	call   11f0 <__errno_location@plt>
    1f79:	83 38 04             	cmpl   $0x4,(%rax)
    1f7c:	75 55                	jne    1fd3 <rio_readlineb+0x88>
    1f7e:	ba 00 20 00 00       	mov    $0x2000,%edx
    1f83:	48 89 ee             	mov    %rbp,%rsi
    1f86:	8b 3b                	mov    (%rbx),%edi
    1f88:	e8 d3 f2 ff ff       	call   1260 <read@plt>
    1f8d:	89 c2                	mov    %eax,%edx
    1f8f:	89 43 04             	mov    %eax,0x4(%rbx)
    1f92:	85 c0                	test   %eax,%eax
    1f94:	78 de                	js     1f74 <rio_readlineb+0x29>
    1f96:	85 c0                	test   %eax,%eax
    1f98:	74 42                	je     1fdc <rio_readlineb+0x91>
    1f9a:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1f9e:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1fa2:	0f b6 08             	movzbl (%rax),%ecx
    1fa5:	48 83 c0 01          	add    $0x1,%rax
    1fa9:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1fad:	83 ea 01             	sub    $0x1,%edx
    1fb0:	89 53 04             	mov    %edx,0x4(%rbx)
    1fb3:	49 83 c4 01          	add    $0x1,%r12
    1fb7:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1fbc:	80 f9 0a             	cmp    $0xa,%cl
    1fbf:	74 3c                	je     1ffd <rio_readlineb+0xb2>
    1fc1:	41 83 c5 01          	add    $0x1,%r13d
    1fc5:	4d 39 f4             	cmp    %r14,%r12
    1fc8:	74 30                	je     1ffa <rio_readlineb+0xaf>
    1fca:	8b 53 04             	mov    0x4(%rbx),%edx
    1fcd:	85 d2                	test   %edx,%edx
    1fcf:	7e ad                	jle    1f7e <rio_readlineb+0x33>
    1fd1:	eb cb                	jmp    1f9e <rio_readlineb+0x53>
    1fd3:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1fda:	eb 05                	jmp    1fe1 <rio_readlineb+0x96>
    1fdc:	b8 00 00 00 00       	mov    $0x0,%eax
    1fe1:	85 c0                	test   %eax,%eax
    1fe3:	75 29                	jne    200e <rio_readlineb+0xc3>
    1fe5:	b8 00 00 00 00       	mov    $0x0,%eax
    1fea:	41 83 fd 01          	cmp    $0x1,%r13d
    1fee:	75 0d                	jne    1ffd <rio_readlineb+0xb2>
    1ff0:	eb 13                	jmp    2005 <rio_readlineb+0xba>
    1ff2:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1ff8:	eb 03                	jmp    1ffd <rio_readlineb+0xb2>
    1ffa:	4d 89 f4             	mov    %r14,%r12
    1ffd:	41 c6 04 24 00       	movb   $0x0,(%r12)
    2002:	49 63 c5             	movslq %r13d,%rax
    2005:	5b                   	pop    %rbx
    2006:	5d                   	pop    %rbp
    2007:	41 5c                	pop    %r12
    2009:	41 5d                	pop    %r13
    200b:	41 5e                	pop    %r14
    200d:	c3                   	ret    
    200e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2015:	eb ee                	jmp    2005 <rio_readlineb+0xba>

0000000000002017 <submitr>:
    2017:	f3 0f 1e fa          	endbr64 
    201b:	41 57                	push   %r15
    201d:	41 56                	push   %r14
    201f:	41 55                	push   %r13
    2021:	41 54                	push   %r12
    2023:	55                   	push   %rbp
    2024:	53                   	push   %rbx
    2025:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    202c:	ff 
    202d:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2034:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2039:	4c 39 dc             	cmp    %r11,%rsp
    203c:	75 ef                	jne    202d <submitr+0x16>
    203e:	48 83 ec 68          	sub    $0x68,%rsp
    2042:	49 89 fd             	mov    %rdi,%r13
    2045:	89 f5                	mov    %esi,%ebp
    2047:	48 89 14 24          	mov    %rdx,(%rsp)
    204b:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    2050:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    2055:	4c 89 cb             	mov    %r9,%rbx
    2058:	4c 8b bc 24 a0 a0 00 	mov    0xa0a0(%rsp),%r15
    205f:	00 
    2060:	c7 84 24 3c 20 00 00 	movl   $0x0,0x203c(%rsp)
    2067:	00 00 00 00 
    206b:	ba 00 00 00 00       	mov    $0x0,%edx
    2070:	be 01 00 00 00       	mov    $0x1,%esi
    2075:	bf 02 00 00 00       	mov    $0x2,%edi
    207a:	e8 f1 f2 ff ff       	call   1370 <socket@plt>
    207f:	85 c0                	test   %eax,%eax
    2081:	0f 88 20 01 00 00    	js     21a7 <submitr+0x190>
    2087:	41 89 c4             	mov    %eax,%r12d
    208a:	4c 89 ef             	mov    %r13,%rdi
    208d:	e8 0e f2 ff ff       	call   12a0 <gethostbyname@plt>
    2092:	48 85 c0             	test   %rax,%rax
    2095:	0f 84 5c 01 00 00    	je     21f7 <submitr+0x1e0>
    209b:	4c 8d ac 24 50 a0 00 	lea    0xa050(%rsp),%r13
    20a2:	00 
    20a3:	48 c7 84 24 50 a0 00 	movq   $0x0,0xa050(%rsp)
    20aa:	00 00 00 00 00 
    20af:	48 c7 84 24 58 a0 00 	movq   $0x0,0xa058(%rsp)
    20b6:	00 00 00 00 00 
    20bb:	66 c7 84 24 50 a0 00 	movw   $0x2,0xa050(%rsp)
    20c2:	00 02 00 
    20c5:	48 63 50 14          	movslq 0x14(%rax),%rdx
    20c9:	48 8b 40 18          	mov    0x18(%rax),%rax
    20cd:	48 8d bc 24 54 a0 00 	lea    0xa054(%rsp),%rdi
    20d4:	00 
    20d5:	b9 0c 00 00 00       	mov    $0xc,%ecx
    20da:	48 8b 30             	mov    (%rax),%rsi
    20dd:	e8 ce f1 ff ff       	call   12b0 <__memmove_chk@plt>
    20e2:	66 c1 c5 08          	rol    $0x8,%bp
    20e6:	66 89 ac 24 52 a0 00 	mov    %bp,0xa052(%rsp)
    20ed:	00 
    20ee:	ba 10 00 00 00       	mov    $0x10,%edx
    20f3:	4c 89 ee             	mov    %r13,%rsi
    20f6:	44 89 e7             	mov    %r12d,%edi
    20f9:	e8 22 f2 ff ff       	call   1320 <connect@plt>
    20fe:	85 c0                	test   %eax,%eax
    2100:	0f 88 5c 01 00 00    	js     2262 <submitr+0x24b>
    2106:	48 89 df             	mov    %rbx,%rdi
    2109:	e8 22 f1 ff ff       	call   1230 <strlen@plt>
    210e:	48 89 c5             	mov    %rax,%rbp
    2111:	48 8b 3c 24          	mov    (%rsp),%rdi
    2115:	e8 16 f1 ff ff       	call   1230 <strlen@plt>
    211a:	49 89 c6             	mov    %rax,%r14
    211d:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    2122:	e8 09 f1 ff ff       	call   1230 <strlen@plt>
    2127:	49 89 c5             	mov    %rax,%r13
    212a:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    212f:	e8 fc f0 ff ff       	call   1230 <strlen@plt>
    2134:	48 89 c2             	mov    %rax,%rdx
    2137:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    213e:	00 
    213f:	48 01 d0             	add    %rdx,%rax
    2142:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    2147:	48 01 d0             	add    %rdx,%rax
    214a:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2150:	0f 87 69 01 00 00    	ja     22bf <submitr+0x2a8>
    2156:	48 8d 94 24 40 40 00 	lea    0x4040(%rsp),%rdx
    215d:	00 
    215e:	b9 00 04 00 00       	mov    $0x400,%ecx
    2163:	b8 00 00 00 00       	mov    $0x0,%eax
    2168:	48 89 d7             	mov    %rdx,%rdi
    216b:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    216e:	48 89 df             	mov    %rbx,%rdi
    2171:	e8 ba f0 ff ff       	call   1230 <strlen@plt>
    2176:	85 c0                	test   %eax,%eax
    2178:	0f 84 e1 04 00 00    	je     265f <submitr+0x648>
    217e:	8d 40 ff             	lea    -0x1(%rax),%eax
    2181:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    2186:	48 8d ac 24 40 40 00 	lea    0x4040(%rsp),%rbp
    218d:	00 
    218e:	48 8d 44 24 28       	lea    0x28(%rsp),%rax
    2193:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    2198:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    219f:	00 20 00 
    21a2:	e9 a6 01 00 00       	jmp    234d <submitr+0x336>
    21a7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    21ae:	3a 20 43 
    21b1:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    21b8:	20 75 6e 
    21bb:	49 89 07             	mov    %rax,(%r15)
    21be:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21c2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    21c9:	74 6f 20 
    21cc:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    21d3:	65 20 73 
    21d6:	49 89 47 10          	mov    %rax,0x10(%r15)
    21da:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21de:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    21e5:	65 
    21e6:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    21ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21f2:	e9 f7 02 00 00       	jmp    24ee <submitr+0x4d7>
    21f7:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    21fe:	3a 20 44 
    2201:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2208:	20 75 6e 
    220b:	49 89 07             	mov    %rax,(%r15)
    220e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2212:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2219:	74 6f 20 
    221c:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2223:	76 65 20 
    2226:	49 89 47 10          	mov    %rax,0x10(%r15)
    222a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    222e:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2235:	72 20 61 
    2238:	49 89 47 20          	mov    %rax,0x20(%r15)
    223c:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    2243:	65 
    2244:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    224b:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2250:	44 89 e7             	mov    %r12d,%edi
    2253:	e8 f8 ef ff ff       	call   1250 <close@plt>
    2258:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    225d:	e9 8c 02 00 00       	jmp    24ee <submitr+0x4d7>
    2262:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2269:	3a 20 55 
    226c:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2273:	20 74 6f 
    2276:	49 89 07             	mov    %rax,(%r15)
    2279:	49 89 57 08          	mov    %rdx,0x8(%r15)
    227d:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2284:	65 63 74 
    2287:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    228e:	68 65 20 
    2291:	49 89 47 10          	mov    %rax,0x10(%r15)
    2295:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2299:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    22a0:	76 
    22a1:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    22a8:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    22ad:	44 89 e7             	mov    %r12d,%edi
    22b0:	e8 9b ef ff ff       	call   1250 <close@plt>
    22b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22ba:	e9 2f 02 00 00       	jmp    24ee <submitr+0x4d7>
    22bf:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    22c6:	3a 20 52 
    22c9:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    22d0:	20 73 74 
    22d3:	49 89 07             	mov    %rax,(%r15)
    22d6:	49 89 57 08          	mov    %rdx,0x8(%r15)
    22da:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    22e1:	74 6f 6f 
    22e4:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    22eb:	65 2e 20 
    22ee:	49 89 47 10          	mov    %rax,0x10(%r15)
    22f2:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22f6:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    22fd:	61 73 65 
    2300:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2307:	49 54 52 
    230a:	49 89 47 20          	mov    %rax,0x20(%r15)
    230e:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2312:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2319:	55 46 00 
    231c:	49 89 47 30          	mov    %rax,0x30(%r15)
    2320:	44 89 e7             	mov    %r12d,%edi
    2323:	e8 28 ef ff ff       	call   1250 <close@plt>
    2328:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    232d:	e9 bc 01 00 00       	jmp    24ee <submitr+0x4d7>
    2332:	49 0f a3 c6          	bt     %rax,%r14
    2336:	73 21                	jae    2359 <submitr+0x342>
    2338:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    233c:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2340:	48 83 c3 01          	add    $0x1,%rbx
    2344:	4c 39 eb             	cmp    %r13,%rbx
    2347:	0f 84 12 03 00 00    	je     265f <submitr+0x648>
    234d:	44 0f b6 03          	movzbl (%rbx),%r8d
    2351:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    2355:	3c 35                	cmp    $0x35,%al
    2357:	76 d9                	jbe    2332 <submitr+0x31b>
    2359:	44 89 c0             	mov    %r8d,%eax
    235c:	83 e0 df             	and    $0xffffffdf,%eax
    235f:	83 e8 41             	sub    $0x41,%eax
    2362:	3c 19                	cmp    $0x19,%al
    2364:	76 d2                	jbe    2338 <submitr+0x321>
    2366:	41 80 f8 20          	cmp    $0x20,%r8b
    236a:	74 54                	je     23c0 <submitr+0x3a9>
    236c:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2370:	3c 5f                	cmp    $0x5f,%al
    2372:	76 0a                	jbe    237e <submitr+0x367>
    2374:	41 80 f8 09          	cmp    $0x9,%r8b
    2378:	0f 85 54 02 00 00    	jne    25d2 <submitr+0x5bb>
    237e:	45 0f b6 c0          	movzbl %r8b,%r8d
    2382:	48 8d 0d ad 11 00 00 	lea    0x11ad(%rip),%rcx        # 3536 <array.0+0x356>
    2389:	ba 08 00 00 00       	mov    $0x8,%edx
    238e:	be 01 00 00 00       	mov    $0x1,%esi
    2393:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2398:	b8 00 00 00 00       	mov    $0x0,%eax
    239d:	e8 be ef ff ff       	call   1360 <__sprintf_chk@plt>
    23a2:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
    23a7:	88 45 00             	mov    %al,0x0(%rbp)
    23aa:	0f b6 44 24 29       	movzbl 0x29(%rsp),%eax
    23af:	88 45 01             	mov    %al,0x1(%rbp)
    23b2:	0f b6 44 24 2a       	movzbl 0x2a(%rsp),%eax
    23b7:	88 45 02             	mov    %al,0x2(%rbp)
    23ba:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    23be:	eb 80                	jmp    2340 <submitr+0x329>
    23c0:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    23c4:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    23c8:	e9 73 ff ff ff       	jmp    2340 <submitr+0x329>
    23cd:	48 01 c5             	add    %rax,%rbp
    23d0:	48 29 c3             	sub    %rax,%rbx
    23d3:	0f 84 e9 02 00 00    	je     26c2 <submitr+0x6ab>
    23d9:	48 89 da             	mov    %rbx,%rdx
    23dc:	48 89 ee             	mov    %rbp,%rsi
    23df:	44 89 e7             	mov    %r12d,%edi
    23e2:	e8 39 ee ff ff       	call   1220 <write@plt>
    23e7:	48 85 c0             	test   %rax,%rax
    23ea:	7f e1                	jg     23cd <submitr+0x3b6>
    23ec:	e8 ff ed ff ff       	call   11f0 <__errno_location@plt>
    23f1:	83 38 04             	cmpl   $0x4,(%rax)
    23f4:	0f 85 79 01 00 00    	jne    2573 <submitr+0x55c>
    23fa:	4c 89 e8             	mov    %r13,%rax
    23fd:	eb ce                	jmp    23cd <submitr+0x3b6>
    23ff:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2406:	3a 20 43 
    2409:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2410:	20 75 6e 
    2413:	49 89 07             	mov    %rax,(%r15)
    2416:	49 89 57 08          	mov    %rdx,0x8(%r15)
    241a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2421:	74 6f 20 
    2424:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    242b:	66 69 72 
    242e:	49 89 47 10          	mov    %rax,0x10(%r15)
    2432:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2436:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    243d:	61 64 65 
    2440:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2447:	6d 20 73 
    244a:	49 89 47 20          	mov    %rax,0x20(%r15)
    244e:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2452:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2459:	65 
    245a:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    2461:	44 89 e7             	mov    %r12d,%edi
    2464:	e8 e7 ed ff ff       	call   1250 <close@plt>
    2469:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    246e:	eb 7e                	jmp    24ee <submitr+0x4d7>
    2470:	4c 8d 4c 24 30       	lea    0x30(%rsp),%r9
    2475:	48 8d 0d 14 10 00 00 	lea    0x1014(%rip),%rcx        # 3490 <array.0+0x2b0>
    247c:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2483:	be 01 00 00 00       	mov    $0x1,%esi
    2488:	4c 89 ff             	mov    %r15,%rdi
    248b:	b8 00 00 00 00       	mov    $0x0,%eax
    2490:	e8 cb ee ff ff       	call   1360 <__sprintf_chk@plt>
    2495:	44 89 e7             	mov    %r12d,%edi
    2498:	e8 b3 ed ff ff       	call   1250 <close@plt>
    249d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24a2:	eb 4a                	jmp    24ee <submitr+0x4d7>
    24a4:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    24ab:	00 
    24ac:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    24b3:	00 
    24b4:	ba 00 20 00 00       	mov    $0x2000,%edx
    24b9:	e8 8d fa ff ff       	call   1f4b <rio_readlineb>
    24be:	48 85 c0             	test   %rax,%rax
    24c1:	7e 3d                	jle    2500 <submitr+0x4e9>
    24c3:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    24ca:	00 
    24cb:	4c 89 ff             	mov    %r15,%rdi
    24ce:	e8 2d ed ff ff       	call   1200 <strcpy@plt>
    24d3:	44 89 e7             	mov    %r12d,%edi
    24d6:	e8 75 ed ff ff       	call   1250 <close@plt>
    24db:	48 8d 35 6f 10 00 00 	lea    0x106f(%rip),%rsi        # 3551 <array.0+0x371>
    24e2:	4c 89 ff             	mov    %r15,%rdi
    24e5:	e8 96 ed ff ff       	call   1280 <strcmp@plt>
    24ea:	f7 d8                	neg    %eax
    24ec:	19 c0                	sbb    %eax,%eax
    24ee:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    24f5:	5b                   	pop    %rbx
    24f6:	5d                   	pop    %rbp
    24f7:	41 5c                	pop    %r12
    24f9:	41 5d                	pop    %r13
    24fb:	41 5e                	pop    %r14
    24fd:	41 5f                	pop    %r15
    24ff:	c3                   	ret    
    2500:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2507:	3a 20 43 
    250a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2511:	20 75 6e 
    2514:	49 89 07             	mov    %rax,(%r15)
    2517:	49 89 57 08          	mov    %rdx,0x8(%r15)
    251b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2522:	74 6f 20 
    2525:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    252c:	73 74 61 
    252f:	49 89 47 10          	mov    %rax,0x10(%r15)
    2533:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2537:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    253e:	65 73 73 
    2541:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2548:	72 6f 6d 
    254b:	49 89 47 20          	mov    %rax,0x20(%r15)
    254f:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2553:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    255a:	65 72 00 
    255d:	49 89 47 30          	mov    %rax,0x30(%r15)
    2561:	44 89 e7             	mov    %r12d,%edi
    2564:	e8 e7 ec ff ff       	call   1250 <close@plt>
    2569:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    256e:	e9 7b ff ff ff       	jmp    24ee <submitr+0x4d7>
    2573:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    257a:	3a 20 43 
    257d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2584:	20 75 6e 
    2587:	49 89 07             	mov    %rax,(%r15)
    258a:	49 89 57 08          	mov    %rdx,0x8(%r15)
    258e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2595:	74 6f 20 
    2598:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    259f:	20 74 6f 
    25a2:	49 89 47 10          	mov    %rax,0x10(%r15)
    25a6:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25aa:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    25b1:	73 65 72 
    25b4:	49 89 47 20          	mov    %rax,0x20(%r15)
    25b8:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    25bf:	00 
    25c0:	44 89 e7             	mov    %r12d,%edi
    25c3:	e8 88 ec ff ff       	call   1250 <close@plt>
    25c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25cd:	e9 1c ff ff ff       	jmp    24ee <submitr+0x4d7>
    25d2:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    25d9:	3a 20 52 
    25dc:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    25e3:	20 73 74 
    25e6:	49 89 07             	mov    %rax,(%r15)
    25e9:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25ed:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    25f4:	63 6f 6e 
    25f7:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    25fe:	20 61 6e 
    2601:	49 89 47 10          	mov    %rax,0x10(%r15)
    2605:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2609:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2610:	67 61 6c 
    2613:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    261a:	6e 70 72 
    261d:	49 89 47 20          	mov    %rax,0x20(%r15)
    2621:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2625:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    262c:	6c 65 20 
    262f:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    2636:	63 74 65 
    2639:	49 89 47 30          	mov    %rax,0x30(%r15)
    263d:	49 89 57 38          	mov    %rdx,0x38(%r15)
    2641:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2648:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    264d:	44 89 e7             	mov    %r12d,%edi
    2650:	e8 fb eb ff ff       	call   1250 <close@plt>
    2655:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    265a:	e9 8f fe ff ff       	jmp    24ee <submitr+0x4d7>
    265f:	48 8d 9c 24 40 60 00 	lea    0x6040(%rsp),%rbx
    2666:	00 
    2667:	48 8d 84 24 40 40 00 	lea    0x4040(%rsp),%rax
    266e:	00 
    266f:	50                   	push   %rax
    2670:	ff 74 24 18          	push   0x18(%rsp)
    2674:	4c 8b 4c 24 18       	mov    0x18(%rsp),%r9
    2679:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    267e:	48 8d 0d 3b 0e 00 00 	lea    0xe3b(%rip),%rcx        # 34c0 <array.0+0x2e0>
    2685:	ba 00 20 00 00       	mov    $0x2000,%edx
    268a:	be 01 00 00 00       	mov    $0x1,%esi
    268f:	48 89 df             	mov    %rbx,%rdi
    2692:	b8 00 00 00 00       	mov    $0x0,%eax
    2697:	e8 c4 ec ff ff       	call   1360 <__sprintf_chk@plt>
    269c:	48 89 df             	mov    %rbx,%rdi
    269f:	e8 8c eb ff ff       	call   1230 <strlen@plt>
    26a4:	48 89 c3             	mov    %rax,%rbx
    26a7:	48 83 c4 10          	add    $0x10,%rsp
    26ab:	48 8d ac 24 40 60 00 	lea    0x6040(%rsp),%rbp
    26b2:	00 
    26b3:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    26b9:	48 85 c0             	test   %rax,%rax
    26bc:	0f 85 17 fd ff ff    	jne    23d9 <submitr+0x3c2>
    26c2:	44 89 a4 24 40 80 00 	mov    %r12d,0x8040(%rsp)
    26c9:	00 
    26ca:	c7 84 24 44 80 00 00 	movl   $0x0,0x8044(%rsp)
    26d1:	00 00 00 00 
    26d5:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    26dc:	00 
    26dd:	48 8d 84 24 50 80 00 	lea    0x8050(%rsp),%rax
    26e4:	00 
    26e5:	48 89 84 24 48 80 00 	mov    %rax,0x8048(%rsp)
    26ec:	00 
    26ed:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    26f4:	00 
    26f5:	ba 00 20 00 00       	mov    $0x2000,%edx
    26fa:	e8 4c f8 ff ff       	call   1f4b <rio_readlineb>
    26ff:	48 85 c0             	test   %rax,%rax
    2702:	0f 8e f7 fc ff ff    	jle    23ff <submitr+0x3e8>
    2708:	48 8d 8c 24 3c 20 00 	lea    0x203c(%rsp),%rcx
    270f:	00 
    2710:	48 8d 94 24 40 20 00 	lea    0x2040(%rsp),%rdx
    2717:	00 
    2718:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    271f:	00 
    2720:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    2725:	48 8d 35 11 0e 00 00 	lea    0xe11(%rip),%rsi        # 353d <array.0+0x35d>
    272c:	b8 00 00 00 00       	mov    $0x0,%eax
    2731:	e8 aa eb ff ff       	call   12e0 <__isoc99_sscanf@plt>
    2736:	44 8b 84 24 3c 20 00 	mov    0x203c(%rsp),%r8d
    273d:	00 
    273e:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2745:	0f 85 25 fd ff ff    	jne    2470 <submitr+0x459>
    274b:	48 8d 1d fc 0d 00 00 	lea    0xdfc(%rip),%rbx        # 354e <array.0+0x36e>
    2752:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    2759:	00 
    275a:	48 89 de             	mov    %rbx,%rsi
    275d:	e8 1e eb ff ff       	call   1280 <strcmp@plt>
    2762:	85 c0                	test   %eax,%eax
    2764:	0f 84 3a fd ff ff    	je     24a4 <submitr+0x48d>
    276a:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    2771:	00 
    2772:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    2779:	00 
    277a:	ba 00 20 00 00       	mov    $0x2000,%edx
    277f:	e8 c7 f7 ff ff       	call   1f4b <rio_readlineb>
    2784:	48 85 c0             	test   %rax,%rax
    2787:	7f c9                	jg     2752 <submitr+0x73b>
    2789:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2790:	3a 20 43 
    2793:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    279a:	20 75 6e 
    279d:	49 89 07             	mov    %rax,(%r15)
    27a0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    27a4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27ab:	74 6f 20 
    27ae:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    27b5:	68 65 61 
    27b8:	49 89 47 10          	mov    %rax,0x10(%r15)
    27bc:	49 89 57 18          	mov    %rdx,0x18(%r15)
    27c0:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    27c7:	66 72 6f 
    27ca:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    27d1:	76 65 72 
    27d4:	49 89 47 20          	mov    %rax,0x20(%r15)
    27d8:	49 89 57 28          	mov    %rdx,0x28(%r15)
    27dc:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    27e1:	44 89 e7             	mov    %r12d,%edi
    27e4:	e8 67 ea ff ff       	call   1250 <close@plt>
    27e9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    27ee:	e9 fb fc ff ff       	jmp    24ee <submitr+0x4d7>

00000000000027f3 <init_timeout>:
    27f3:	f3 0f 1e fa          	endbr64 
    27f7:	85 ff                	test   %edi,%edi
    27f9:	75 01                	jne    27fc <init_timeout+0x9>
    27fb:	c3                   	ret    
    27fc:	53                   	push   %rbx
    27fd:	89 fb                	mov    %edi,%ebx
    27ff:	48 8d 35 0f f7 ff ff 	lea    -0x8f1(%rip),%rsi        # 1f15 <sigalrm_handler>
    2806:	bf 0e 00 00 00       	mov    $0xe,%edi
    280b:	e8 80 ea ff ff       	call   1290 <signal@plt>
    2810:	85 db                	test   %ebx,%ebx
    2812:	b8 00 00 00 00       	mov    $0x0,%eax
    2817:	0f 49 c3             	cmovns %ebx,%eax
    281a:	89 c7                	mov    %eax,%edi
    281c:	e8 1f ea ff ff       	call   1240 <alarm@plt>
    2821:	5b                   	pop    %rbx
    2822:	c3                   	ret    

0000000000002823 <init_driver>:
    2823:	f3 0f 1e fa          	endbr64 
    2827:	41 54                	push   %r12
    2829:	55                   	push   %rbp
    282a:	53                   	push   %rbx
    282b:	48 83 ec 10          	sub    $0x10,%rsp
    282f:	48 89 fd             	mov    %rdi,%rbp
    2832:	be 01 00 00 00       	mov    $0x1,%esi
    2837:	bf 0d 00 00 00       	mov    $0xd,%edi
    283c:	e8 4f ea ff ff       	call   1290 <signal@plt>
    2841:	be 01 00 00 00       	mov    $0x1,%esi
    2846:	bf 1d 00 00 00       	mov    $0x1d,%edi
    284b:	e8 40 ea ff ff       	call   1290 <signal@plt>
    2850:	be 01 00 00 00       	mov    $0x1,%esi
    2855:	bf 1d 00 00 00       	mov    $0x1d,%edi
    285a:	e8 31 ea ff ff       	call   1290 <signal@plt>
    285f:	ba 00 00 00 00       	mov    $0x0,%edx
    2864:	be 01 00 00 00       	mov    $0x1,%esi
    2869:	bf 02 00 00 00       	mov    $0x2,%edi
    286e:	e8 fd ea ff ff       	call   1370 <socket@plt>
    2873:	85 c0                	test   %eax,%eax
    2875:	0f 88 88 00 00 00    	js     2903 <init_driver+0xe0>
    287b:	89 c3                	mov    %eax,%ebx
    287d:	48 8d 3d d0 0c 00 00 	lea    0xcd0(%rip),%rdi        # 3554 <array.0+0x374>
    2884:	e8 17 ea ff ff       	call   12a0 <gethostbyname@plt>
    2889:	48 85 c0             	test   %rax,%rax
    288c:	0f 84 bd 00 00 00    	je     294f <init_driver+0x12c>
    2892:	49 89 e4             	mov    %rsp,%r12
    2895:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    289c:	00 
    289d:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    28a4:	00 00 
    28a6:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    28ac:	48 63 50 14          	movslq 0x14(%rax),%rdx
    28b0:	48 8b 40 18          	mov    0x18(%rax),%rax
    28b4:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    28b9:	b9 0c 00 00 00       	mov    $0xc,%ecx
    28be:	48 8b 30             	mov    (%rax),%rsi
    28c1:	e8 ea e9 ff ff       	call   12b0 <__memmove_chk@plt>
    28c6:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    28cd:	ba 10 00 00 00       	mov    $0x10,%edx
    28d2:	4c 89 e6             	mov    %r12,%rsi
    28d5:	89 df                	mov    %ebx,%edi
    28d7:	e8 44 ea ff ff       	call   1320 <connect@plt>
    28dc:	85 c0                	test   %eax,%eax
    28de:	0f 88 d3 00 00 00    	js     29b7 <init_driver+0x194>
    28e4:	89 df                	mov    %ebx,%edi
    28e6:	e8 65 e9 ff ff       	call   1250 <close@plt>
    28eb:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    28f1:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    28f5:	b8 00 00 00 00       	mov    $0x0,%eax
    28fa:	48 83 c4 10          	add    $0x10,%rsp
    28fe:	5b                   	pop    %rbx
    28ff:	5d                   	pop    %rbp
    2900:	41 5c                	pop    %r12
    2902:	c3                   	ret    
    2903:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    290a:	3a 20 43 
    290d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2914:	20 75 6e 
    2917:	48 89 45 00          	mov    %rax,0x0(%rbp)
    291b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    291f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2926:	74 6f 20 
    2929:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2930:	65 20 73 
    2933:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2937:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    293b:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2942:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2948:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    294d:	eb ab                	jmp    28fa <init_driver+0xd7>
    294f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2956:	3a 20 44 
    2959:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2960:	20 75 6e 
    2963:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2967:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    296b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2972:	74 6f 20 
    2975:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    297c:	76 65 20 
    297f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2983:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2987:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    298e:	72 20 61 
    2991:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2995:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    299c:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    29a2:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    29a6:	89 df                	mov    %ebx,%edi
    29a8:	e8 a3 e8 ff ff       	call   1250 <close@plt>
    29ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29b2:	e9 43 ff ff ff       	jmp    28fa <init_driver+0xd7>
    29b7:	4c 8d 05 96 0b 00 00 	lea    0xb96(%rip),%r8        # 3554 <array.0+0x374>
    29be:	48 8d 0d 4b 0b 00 00 	lea    0xb4b(%rip),%rcx        # 3510 <array.0+0x330>
    29c5:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    29cc:	be 01 00 00 00       	mov    $0x1,%esi
    29d1:	48 89 ef             	mov    %rbp,%rdi
    29d4:	b8 00 00 00 00       	mov    $0x0,%eax
    29d9:	e8 82 e9 ff ff       	call   1360 <__sprintf_chk@plt>
    29de:	89 df                	mov    %ebx,%edi
    29e0:	e8 6b e8 ff ff       	call   1250 <close@plt>
    29e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29ea:	e9 0b ff ff ff       	jmp    28fa <init_driver+0xd7>

00000000000029ef <driver_post>:
    29ef:	f3 0f 1e fa          	endbr64 
    29f3:	53                   	push   %rbx
    29f4:	48 89 cb             	mov    %rcx,%rbx
    29f7:	85 d2                	test   %edx,%edx
    29f9:	75 17                	jne    2a12 <driver_post+0x23>
    29fb:	48 85 ff             	test   %rdi,%rdi
    29fe:	74 05                	je     2a05 <driver_post+0x16>
    2a00:	80 3f 00             	cmpb   $0x0,(%rdi)
    2a03:	75 36                	jne    2a3b <driver_post+0x4c>
    2a05:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a0a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a0e:	89 d0                	mov    %edx,%eax
    2a10:	5b                   	pop    %rbx
    2a11:	c3                   	ret    
    2a12:	48 89 f2             	mov    %rsi,%rdx
    2a15:	48 8d 35 4f 0b 00 00 	lea    0xb4f(%rip),%rsi        # 356b <array.0+0x38b>
    2a1c:	bf 01 00 00 00       	mov    $0x1,%edi
    2a21:	b8 00 00 00 00       	mov    $0x0,%eax
    2a26:	e8 c5 e8 ff ff       	call   12f0 <__printf_chk@plt>
    2a2b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a30:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a34:	b8 00 00 00 00       	mov    $0x0,%eax
    2a39:	eb d5                	jmp    2a10 <driver_post+0x21>
    2a3b:	48 83 ec 08          	sub    $0x8,%rsp
    2a3f:	51                   	push   %rcx
    2a40:	49 89 f1             	mov    %rsi,%r9
    2a43:	4c 8d 05 38 0b 00 00 	lea    0xb38(%rip),%r8        # 3582 <array.0+0x3a2>
    2a4a:	48 89 f9             	mov    %rdi,%rcx
    2a4d:	48 8d 15 3b 0b 00 00 	lea    0xb3b(%rip),%rdx        # 358f <array.0+0x3af>
    2a54:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2a59:	48 8d 3d f4 0a 00 00 	lea    0xaf4(%rip),%rdi        # 3554 <array.0+0x374>
    2a60:	e8 b2 f5 ff ff       	call   2017 <submitr>
    2a65:	48 83 c4 10          	add    $0x10,%rsp
    2a69:	eb a5                	jmp    2a10 <driver_post+0x21>

Disassembly of section .fini:

0000000000002a6c <_fini>:
    2a6c:	f3 0f 1e fa          	endbr64 
    2a70:	48 83 ec 08          	sub    $0x8,%rsp
    2a74:	48 83 c4 08          	add    $0x8,%rsp
    2a78:	c3                   	ret    
