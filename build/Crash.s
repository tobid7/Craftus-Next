	.arch armv6k
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"Crash.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"w\000"
	.align	2
.LC1:
	.ascii	"sdmc:/craftus_redesigned/crash.txt\000"
	.align	2
.LC2:
	.ascii	"\012\012Fatal error, press start to exit\000"
	.section	.text.Crash,"ax",%progbits
	.align	2
	.global	Crash
	.syntax unified
	.arm
	.fpu vfp
	.type	Crash, %function
Crash:
.LVL0:
.LFB100:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/misc/Crash.c"
	.loc 1 9 37 view -0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	.loc 1 10 2 view .LVU1
	.loc 1 9 37 is_stmt 0 view .LVU2
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	.loc 1 10 2 view .LVU3
	mov	r1, #0
	.loc 1 9 37 view .LVU4
	push	{r4, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 14, -20
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	.loc 1 9 37 view .LVU5
	ldr	r4, [sp, #16]
	.loc 1 10 2 view .LVU6
	mov	r0, r1
	bl	consoleInit
.LVL1:
	.loc 1 12 2 is_stmt 1 view .LVU7
	.loc 1 13 1 view .LVU8
	add	r1, sp, #20
	.loc 1 14 2 is_stmt 0 view .LVU9
	mov	r0, r4
	.loc 1 13 1 view .LVU10
	str	r1, [sp, #4]
	.loc 1 14 2 is_stmt 1 view .LVU11
	bl	vprintf
.LVL2:
	.loc 1 16 2 view .LVU12
	.loc 1 16 12 is_stmt 0 view .LVU13
	ldr	r1, .L9
	ldr	r0, .L9+4
	bl	fopen
.LVL3:
	.loc 1 17 2 view .LVU14
	mov	r1, r4
	.loc 1 16 12 view .LVU15
	mov	r4, r0
.LVL4:
	.loc 1 17 2 is_stmt 1 view .LVU16
	ldr	r2, [sp, #4]
	bl	vfprintf
.LVL5:
	.loc 1 18 2 view .LVU17
	mov	r0, r4
	bl	fclose
.LVL6:
	.loc 1 20 1 view .LVU18
	.loc 1 22 2 view .LVU19
	ldr	r0, .L9+8
	bl	puts
.LVL7:
	.loc 1 23 2 view .LVU20
	.loc 1 23 8 is_stmt 0 view .LVU21
	b	.L2
.L3:
	.loc 1 24 3 is_stmt 1 view .LVU22
	mov	r1, #1
	mov	r0, #2
	bl	gspWaitForEvent
.LVL8:
	.loc 1 26 3 view .LVU23
	bl	hidScanInput
.LVL9:
	.loc 1 28 3 view .LVU24
	.loc 1 28 7 is_stmt 0 view .LVU25
	bl	hidKeysDown
.LVL10:
	.loc 1 28 6 view .LVU26
	tst	r0, #8
	bne	.L4
.L2:
	.loc 1 23 9 is_stmt 1 view .LVU27
	bl	aptMainLoop
.LVL11:
	cmp	r0, #0
	bne	.L3
.L4:
	.loc 1 31 2 view .LVU28
	mov	r0, #1
	bl	exit
.LVL12:
.L10:
	.align	2
.L9:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.cfi_endproc
.LFE100:
	.size	Crash, .-Crash
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"a\000"
	.align	2
.LC4:
	.ascii	"sdmc:/craftus_redesigned/Log.txt\000"
	.section	.text.Log,"ax",%progbits
	.align	2
	.global	Log
	.syntax unified
	.arm
	.fpu vfp
	.type	Log, %function
Log:
.LVL13:
.LFB101:
	.loc 1 34 35 view -0
	.cfi_startproc
	@ args = 4, pretend = 16, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	.loc 1 36 2 view .LVU30
	.loc 1 37 1 view .LVU31
	.loc 1 34 35 is_stmt 0 view .LVU32
	push	{r0, r1, r2, r3}
	.cfi_def_cfa_offset 16
	.cfi_offset 0, -16
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	push	{r4, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 14, -20
	sub	sp, sp, #8
	.cfi_def_cfa_offset 32
	.loc 1 34 35 view .LVU33
	ldr	r4, [sp, #16]
	.loc 1 37 1 view .LVU34
	add	r1, sp, #20
	.loc 1 38 2 view .LVU35
	mov	r0, r4
	.loc 1 37 1 view .LVU36
	str	r1, [sp, #4]
	.loc 1 38 2 is_stmt 1 view .LVU37
	bl	vprintf
.LVL14:
	.loc 1 40 2 view .LVU38
	.loc 1 40 12 is_stmt 0 view .LVU39
	ldr	r1, .L13
	ldr	r0, .L13+4
	bl	fopen
.LVL15:
	.loc 1 41 2 view .LVU40
	mov	r1, r4
	.loc 1 40 12 view .LVU41
	mov	r4, r0
.LVL16:
	.loc 1 41 2 is_stmt 1 view .LVU42
	ldr	r2, [sp, #4]
	bl	vfprintf
.LVL17:
	.loc 1 42 2 view .LVU43
	mov	r0, r4
	bl	fclose
.LVL18:
	.loc 1 44 1 view .LVU44
	.loc 1 46 1 is_stmt 0 view .LVU45
	add	sp, sp, #8
	.cfi_def_cfa_offset 24
	@ sp needed
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 16
.LVL19:
	.loc 1 46 1 view .LVU46
	add	sp, sp, #16
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_restore 0
	.cfi_def_cfa_offset 0
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LC3
	.word	.LC4
	.cfi_endproc
.LFE101:
	.size	Log, .-Log
	.text
.Letext0:
	.file 2 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stdarg.h"
	.file 4 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h"
	.file 5 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h"
	.file 7 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h"
	.file 8 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h"
	.file 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 11 "/opt/devkitpro/libctru/include/3ds/types.h"
	.file 12 "/opt/devkitpro/libctru/include/3ds/services/gspgpu.h"
	.file 13 "/opt/devkitpro/libctru/include/3ds/gfx.h"
	.file 14 "/opt/devkitpro/libctru/include/3ds/console.h"
	.file 15 "/opt/devkitpro/libctru/include/3ds/services/hid.h"
	.file 16 "/opt/devkitpro/libctru/include/3ds/services/apt.h"
	.file 17 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h"
	.file 18 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf29
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x25
	.4byte	.LASF208
	.byte	0x1d
	.4byte	.LASF209
	.4byte	.LASF210
	.4byte	.LLRL2
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x39
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x53
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x66
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x79
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x67
	.byte	0x17
	.4byte	0x8c
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x26
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x28
	.byte	0x1b
	.4byte	0xbb
	.uleb128 0x27
	.4byte	.LASF211
	.byte	0x4
	.byte	0x12
	.byte	0
	.4byte	0xd2
	.uleb128 0x28
	.4byte	.LASF212
	.4byte	0xd2
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2e
	.byte	0x18
	.4byte	0xaf
	.uleb128 0x16
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x15e
	.byte	0x16
	.4byte	0xa1
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x6
	.byte	0x7
	.byte	0x13
	.4byte	0x80
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x6
	.byte	0xa
	.byte	0x13
	.4byte	0x80
	.uleb128 0x2a
	.byte	0x4
	.byte	0x7
	.byte	0xa5
	.byte	0x3
	.4byte	0x125
	.uleb128 0x17
	.4byte	.LASF20
	.byte	0xa7
	.byte	0xc
	.4byte	0xe0
	.uleb128 0x17
	.4byte	.LASF21
	.byte	0xa8
	.byte	0x13
	.4byte	0x125
	.byte	0
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x135
	.uleb128 0xa
	.4byte	0xa1
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.byte	0x8
	.byte	0x7
	.byte	0xa2
	.byte	0x9
	.4byte	0x159
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x7
	.byte	0xa4
	.byte	0x7
	.4byte	0x9a
	.byte	0
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x7
	.byte	0xa9
	.byte	0x5
	.4byte	0x105
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x7
	.byte	0xaa
	.byte	0x3
	.4byte	0x135
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x8
	.byte	0x16
	.byte	0x17
	.4byte	0x79
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x9
	.byte	0x18
	.byte	0x13
	.4byte	0x2d
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x9
	.byte	0x24
	.byte	0x14
	.4byte	0x47
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x9
	.byte	0x2c
	.byte	0x13
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x9
	.byte	0x30
	.byte	0x14
	.4byte	0x6d
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0xa
	.byte	0x7
	.byte	0x11
	.4byte	0x189
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0xc
	.byte	0xa
	.byte	0x9
	.byte	0x8
	.4byte	0x1e2
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0xa
	.byte	0xa
	.byte	0xa
	.4byte	0x1a1
	.byte	0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xa
	.byte	0xb
	.byte	0xb
	.4byte	0x195
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0xa
	.byte	0xc
	.byte	0xb
	.4byte	0x195
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0xa
	.byte	0xf
	.byte	0x19
	.4byte	0x1ad
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x8
	.byte	0x23
	.byte	0x1b
	.4byte	0x1e2
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x18
	.byte	0x8
	.byte	0x34
	.byte	0x8
	.4byte	0x254
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x8
	.byte	0x36
	.byte	0x13
	.4byte	0x254
	.byte	0
	.uleb128 0xb
	.ascii	"_k\000"
	.byte	0x8
	.byte	0x37
	.byte	0x7
	.4byte	0x9a
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x8
	.byte	0x37
	.byte	0xb
	.4byte	0x9a
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x8
	.byte	0x37
	.byte	0x14
	.4byte	0x9a
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0x8
	.byte	0x37
	.byte	0x1b
	.4byte	0x9a
	.byte	0x10
	.uleb128 0xb
	.ascii	"_x\000"
	.byte	0x8
	.byte	0x38
	.byte	0xb
	.4byte	0x259
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	0x1fa
	.uleb128 0x9
	.4byte	0x165
	.4byte	0x269
	.uleb128 0xa
	.4byte	0xa1
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x24
	.byte	0x8
	.byte	0x3c
	.byte	0x8
	.4byte	0x2ec
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0x8
	.byte	0x3e
	.byte	0x7
	.4byte	0x9a
	.byte	0
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0x8
	.byte	0x3f
	.byte	0x7
	.4byte	0x9a
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0x8
	.byte	0x40
	.byte	0x7
	.4byte	0x9a
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x8
	.byte	0x41
	.byte	0x7
	.4byte	0x9a
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x8
	.byte	0x42
	.byte	0x7
	.4byte	0x9a
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x8
	.byte	0x43
	.byte	0x7
	.4byte	0x9a
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x8
	.byte	0x44
	.byte	0x7
	.4byte	0x9a
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x8
	.byte	0x45
	.byte	0x7
	.4byte	0x9a
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x8
	.byte	0x46
	.byte	0x7
	.4byte	0x9a
	.byte	0x20
	.byte	0
	.uleb128 0x18
	.4byte	.LASF52
	.2byte	0x108
	.byte	0x4f
	.4byte	0x32b
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x8
	.byte	0x50
	.byte	0x9
	.4byte	0x32b
	.byte	0
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x8
	.byte	0x51
	.byte	0x9
	.4byte	0x32b
	.byte	0x80
	.uleb128 0x19
	.4byte	.LASF55
	.byte	0x53
	.4byte	0x165
	.2byte	0x100
	.uleb128 0x19
	.4byte	.LASF56
	.byte	0x56
	.4byte	0x165
	.2byte	0x104
	.byte	0
	.uleb128 0x9
	.4byte	0xd2
	.4byte	0x33b
	.uleb128 0xa
	.4byte	0xa1
	.byte	0x1f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF57
	.2byte	0x190
	.byte	0x62
	.4byte	0x37c
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x8
	.byte	0x63
	.byte	0x12
	.4byte	0x37c
	.byte	0
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x8
	.byte	0x64
	.byte	0x6
	.4byte	0x9a
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x8
	.byte	0x66
	.byte	0x9
	.4byte	0x381
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x8
	.byte	0x67
	.byte	0x1e
	.4byte	0x2ec
	.byte	0x88
	.byte	0
	.uleb128 0x5
	.4byte	0x33b
	.uleb128 0x9
	.4byte	0x391
	.4byte	0x391
	.uleb128 0xa
	.4byte	0xa1
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.4byte	0x396
	.uleb128 0x2c
	.uleb128 0xe
	.4byte	.LASF60
	.byte	0x8
	.byte	0x8
	.byte	0x7a
	.byte	0x8
	.4byte	0x3bf
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x8
	.byte	0x7b
	.byte	0x11
	.4byte	0x3bf
	.byte	0
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x8
	.byte	0x7c
	.byte	0x6
	.4byte	0x9a
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x39
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x78
	.byte	0x8
	.byte	0xba
	.byte	0x8
	.4byte	0x507
	.uleb128 0xb
	.ascii	"_p\000"
	.byte	0x8
	.byte	0xbb
	.byte	0x12
	.4byte	0x3bf
	.byte	0
	.uleb128 0xb
	.ascii	"_r\000"
	.byte	0x8
	.byte	0xbc
	.byte	0x7
	.4byte	0x9a
	.byte	0x4
	.uleb128 0xb
	.ascii	"_w\000"
	.byte	0x8
	.byte	0xbd
	.byte	0x7
	.4byte	0x9a
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x8
	.byte	0xbe
	.byte	0x9
	.4byte	0x40
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x8
	.byte	0xbf
	.byte	0x9
	.4byte	0x40
	.byte	0xe
	.uleb128 0xb
	.ascii	"_bf\000"
	.byte	0x8
	.byte	0xc0
	.byte	0x11
	.4byte	0x397
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x8
	.byte	0xc1
	.byte	0x7
	.4byte	0x9a
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x8
	.byte	0xc8
	.byte	0xa
	.4byte	0xd2
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x8
	.byte	0xca
	.byte	0x9
	.4byte	0x67c
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x8
	.byte	0xcc
	.byte	0x9
	.4byte	0x6a9
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x8
	.byte	0xcf
	.byte	0xd
	.4byte	0x6cc
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0x8
	.byte	0xd0
	.byte	0x9
	.4byte	0x6e5
	.byte	0x2c
	.uleb128 0xb
	.ascii	"_ub\000"
	.byte	0x8
	.byte	0xd3
	.byte	0x11
	.4byte	0x397
	.byte	0x30
	.uleb128 0xb
	.ascii	"_up\000"
	.byte	0x8
	.byte	0xd4
	.byte	0x12
	.4byte	0x3bf
	.byte	0x38
	.uleb128 0xb
	.ascii	"_ur\000"
	.byte	0x8
	.byte	0xd5
	.byte	0x7
	.4byte	0x9a
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0x8
	.byte	0xd8
	.byte	0x11
	.4byte	0x6ea
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0x8
	.byte	0xd9
	.byte	0x11
	.4byte	0x6fa
	.byte	0x43
	.uleb128 0xb
	.ascii	"_lb\000"
	.byte	0x8
	.byte	0xdc
	.byte	0x11
	.4byte	0x397
	.byte	0x44
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x8
	.byte	0xdf
	.byte	0x7
	.4byte	0x9a
	.byte	0x4c
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x8
	.byte	0xe0
	.byte	0xa
	.4byte	0xed
	.byte	0x50
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x8
	.byte	0xe3
	.byte	0x12
	.4byte	0x525
	.byte	0x58
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0x8
	.byte	0xe7
	.byte	0xc
	.4byte	0x1ee
	.byte	0x5c
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x8
	.byte	0xe9
	.byte	0xe
	.4byte	0x159
	.byte	0x68
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x8
	.byte	0xea
	.byte	0x7
	.4byte	0x9a
	.byte	0x70
	.byte	0
	.uleb128 0x11
	.4byte	0x9a
	.4byte	0x525
	.uleb128 0x3
	.4byte	0x525
	.uleb128 0x3
	.4byte	0xd2
	.uleb128 0x3
	.4byte	0x66b
	.uleb128 0x3
	.4byte	0x9a
	.byte	0
	.uleb128 0x5
	.4byte	0x52a
	.uleb128 0x2d
	.4byte	.LASF80
	.2byte	0x460
	.byte	0x8
	.2byte	0x267
	.byte	0x8
	.4byte	0x66b
	.uleb128 0x2
	.4byte	.LASF81
	.2byte	0x269
	.byte	0x7
	.4byte	0x9a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF82
	.2byte	0x26e
	.byte	0xb
	.4byte	0x750
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF83
	.2byte	0x26e
	.byte	0x14
	.4byte	0x750
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF84
	.2byte	0x26e
	.byte	0x1e
	.4byte	0x750
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF85
	.2byte	0x270
	.byte	0x7
	.4byte	0x9a
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF86
	.2byte	0x271
	.byte	0x8
	.4byte	0x92d
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF87
	.2byte	0x274
	.byte	0x7
	.4byte	0x9a
	.byte	0x30
	.uleb128 0x2
	.4byte	.LASF88
	.2byte	0x275
	.byte	0x16
	.4byte	0x942
	.byte	0x34
	.uleb128 0x2
	.4byte	.LASF89
	.2byte	0x277
	.byte	0x7
	.4byte	0x9a
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF90
	.2byte	0x279
	.byte	0xa
	.4byte	0x952
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF91
	.2byte	0x27c
	.byte	0x13
	.4byte	0x254
	.byte	0x40
	.uleb128 0x2
	.4byte	.LASF92
	.2byte	0x27d
	.byte	0x7
	.4byte	0x9a
	.byte	0x44
	.uleb128 0x2
	.4byte	.LASF93
	.2byte	0x27e
	.byte	0x13
	.4byte	0x254
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF94
	.2byte	0x27f
	.byte	0x14
	.4byte	0x957
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF95
	.2byte	0x282
	.byte	0x7
	.4byte	0x9a
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF96
	.2byte	0x283
	.byte	0x9
	.4byte	0x66b
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF97
	.2byte	0x2a6
	.byte	0x7
	.4byte	0x90c
	.byte	0x58
	.uleb128 0xf
	.4byte	.LASF57
	.2byte	0x2aa
	.byte	0x13
	.4byte	0x37c
	.2byte	0x148
	.uleb128 0xf
	.4byte	.LASF98
	.2byte	0x2ab
	.byte	0x12
	.4byte	0x33b
	.2byte	0x14c
	.uleb128 0xf
	.4byte	.LASF99
	.2byte	0x2af
	.byte	0xc
	.4byte	0x967
	.2byte	0x2dc
	.uleb128 0xf
	.4byte	.LASF100
	.2byte	0x2b4
	.byte	0x10
	.4byte	0x717
	.2byte	0x2e0
	.uleb128 0xf
	.4byte	.LASF101
	.2byte	0x2b6
	.byte	0xa
	.4byte	0x971
	.2byte	0x2f0
	.uleb128 0xf
	.4byte	.LASF102
	.2byte	0x2b8
	.byte	0x9
	.4byte	0xd2
	.2byte	0x458
	.byte	0
	.uleb128 0x5
	.4byte	0x670
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF103
	.uleb128 0x2e
	.4byte	0x670
	.uleb128 0x5
	.4byte	0x507
	.uleb128 0x11
	.4byte	0x9a
	.4byte	0x69f
	.uleb128 0x3
	.4byte	0x525
	.uleb128 0x3
	.4byte	0xd2
	.uleb128 0x3
	.4byte	0x69f
	.uleb128 0x3
	.4byte	0x9a
	.byte	0
	.uleb128 0x5
	.4byte	0x677
	.uleb128 0x1a
	.4byte	0x69f
	.uleb128 0x5
	.4byte	0x681
	.uleb128 0x11
	.4byte	0xf9
	.4byte	0x6cc
	.uleb128 0x3
	.4byte	0x525
	.uleb128 0x3
	.4byte	0xd2
	.uleb128 0x3
	.4byte	0xf9
	.uleb128 0x3
	.4byte	0x9a
	.byte	0
	.uleb128 0x5
	.4byte	0x6ae
	.uleb128 0x11
	.4byte	0x9a
	.4byte	0x6e5
	.uleb128 0x3
	.4byte	0x525
	.uleb128 0x3
	.4byte	0xd2
	.byte	0
	.uleb128 0x5
	.4byte	0x6d1
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x6fa
	.uleb128 0xa
	.4byte	0xa1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x39
	.4byte	0x70a
	.uleb128 0xa
	.4byte	0xa1
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x124
	.byte	0x18
	.4byte	0x3c4
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0xc
	.2byte	0x128
	.4byte	0x74b
	.uleb128 0x2
	.4byte	.LASF38
	.2byte	0x12a
	.byte	0x11
	.4byte	0x74b
	.byte	0
	.uleb128 0x2
	.4byte	.LASF106
	.2byte	0x12b
	.byte	0x7
	.4byte	0x9a
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF107
	.2byte	0x12c
	.byte	0xb
	.4byte	0x750
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	0x717
	.uleb128 0x5
	.4byte	0x70a
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0xe
	.2byte	0x144
	.4byte	0x789
	.uleb128 0x2
	.4byte	.LASF109
	.2byte	0x145
	.byte	0x12
	.4byte	0x789
	.byte	0
	.uleb128 0x2
	.4byte	.LASF110
	.2byte	0x146
	.byte	0x12
	.4byte	0x789
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF111
	.2byte	0x147
	.byte	0x12
	.4byte	0x53
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.4byte	0x53
	.4byte	0x799
	.uleb128 0xa
	.4byte	0xa1
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.byte	0xd0
	.2byte	0x287
	.4byte	0x899
	.uleb128 0x2
	.4byte	.LASF112
	.2byte	0x289
	.byte	0x18
	.4byte	0xa1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF113
	.2byte	0x28a
	.byte	0x12
	.4byte	0x66b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF114
	.2byte	0x28b
	.byte	0x10
	.4byte	0x899
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF115
	.2byte	0x28c
	.byte	0x17
	.4byte	0x269
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF116
	.2byte	0x28d
	.byte	0xf
	.4byte	0x9a
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF117
	.2byte	0x28e
	.byte	0x2c
	.4byte	0x93
	.byte	0x50
	.uleb128 0x2
	.4byte	.LASF118
	.2byte	0x28f
	.byte	0x1a
	.4byte	0x755
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF119
	.2byte	0x290
	.byte	0x16
	.4byte	0x159
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF120
	.2byte	0x291
	.byte	0x16
	.4byte	0x159
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF121
	.2byte	0x292
	.byte	0x16
	.4byte	0x159
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF122
	.2byte	0x293
	.byte	0x10
	.4byte	0x8a9
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF123
	.2byte	0x294
	.byte	0x10
	.4byte	0x8b9
	.byte	0x88
	.uleb128 0x2
	.4byte	.LASF124
	.2byte	0x295
	.byte	0xf
	.4byte	0x9a
	.byte	0xa0
	.uleb128 0x2
	.4byte	.LASF125
	.2byte	0x296
	.byte	0x16
	.4byte	0x159
	.byte	0xa4
	.uleb128 0x2
	.4byte	.LASF126
	.2byte	0x297
	.byte	0x16
	.4byte	0x159
	.byte	0xac
	.uleb128 0x2
	.4byte	.LASF127
	.2byte	0x298
	.byte	0x16
	.4byte	0x159
	.byte	0xb4
	.uleb128 0x2
	.4byte	.LASF128
	.2byte	0x299
	.byte	0x16
	.4byte	0x159
	.byte	0xbc
	.uleb128 0x2
	.4byte	.LASF129
	.2byte	0x29a
	.byte	0x16
	.4byte	0x159
	.byte	0xc4
	.uleb128 0x2
	.4byte	.LASF130
	.2byte	0x29b
	.byte	0x8
	.4byte	0x9a
	.byte	0xcc
	.byte	0
	.uleb128 0x9
	.4byte	0x670
	.4byte	0x8a9
	.uleb128 0xa
	.4byte	0xa1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.4byte	0x670
	.4byte	0x8b9
	.uleb128 0xa
	.4byte	0xa1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.4byte	0x670
	.4byte	0x8c9
	.uleb128 0xa
	.4byte	0xa1
	.byte	0x17
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.2byte	0x2a0
	.4byte	0x8ec
	.uleb128 0x2
	.4byte	.LASF131
	.2byte	0x2a3
	.byte	0x1b
	.4byte	0x8ec
	.byte	0
	.uleb128 0x2
	.4byte	.LASF132
	.2byte	0x2a4
	.byte	0x18
	.4byte	0x8fc
	.byte	0x78
	.byte	0
	.uleb128 0x9
	.4byte	0x3bf
	.4byte	0x8fc
	.uleb128 0xa
	.4byte	0xa1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.4byte	0xa1
	.4byte	0x90c
	.uleb128 0xa
	.4byte	0xa1
	.byte	0x1d
	.byte	0
	.uleb128 0x2f
	.byte	0xf0
	.byte	0x8
	.2byte	0x285
	.byte	0x3
	.4byte	0x92d
	.uleb128 0x1d
	.4byte	.LASF80
	.2byte	0x29c
	.4byte	0x799
	.uleb128 0x1d
	.4byte	.LASF133
	.2byte	0x2a5
	.4byte	0x8c9
	.byte	0
	.uleb128 0x9
	.4byte	0x670
	.4byte	0x93d
	.uleb128 0xa
	.4byte	0xa1
	.byte	0x18
	.byte	0
	.uleb128 0x30
	.4byte	.LASF213
	.uleb128 0x5
	.4byte	0x93d
	.uleb128 0x1e
	.4byte	0x952
	.uleb128 0x3
	.4byte	0x525
	.byte	0
	.uleb128 0x5
	.4byte	0x947
	.uleb128 0x5
	.4byte	0x254
	.uleb128 0x1e
	.4byte	0x967
	.uleb128 0x3
	.4byte	0x9a
	.byte	0
	.uleb128 0x5
	.4byte	0x96c
	.uleb128 0x5
	.4byte	0x95c
	.uleb128 0x9
	.4byte	0x70a
	.4byte	0x981
	.uleb128 0xa
	.4byte	0xa1
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF134
	.byte	0x4
	.byte	0x42
	.byte	0x10
	.4byte	0x70a
	.uleb128 0x13
	.ascii	"u8\000"
	.byte	0x15
	.byte	0x11
	.4byte	0x171
	.uleb128 0x13
	.ascii	"u16\000"
	.byte	0x16
	.byte	0x12
	.4byte	0x17d
	.uleb128 0x13
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0x195
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.4byte	.LASF135
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.4byte	.LASF136
	.uleb128 0x5
	.4byte	0x997
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.4byte	.LASF137
	.uleb128 0x14
	.byte	0x1
	.4byte	0x39
	.byte	0xc
	.byte	0x35
	.byte	0x1
	.4byte	0xa05
	.uleb128 0x7
	.4byte	.LASF138
	.byte	0
	.uleb128 0x7
	.4byte	.LASF139
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF141
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF142
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF144
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF145
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF146
	.byte	0xc
	.byte	0x3f
	.byte	0x3
	.4byte	0x9c7
	.uleb128 0x14
	.byte	0x1
	.4byte	0x39
	.byte	0xd
	.byte	0x19
	.byte	0xe
	.4byte	0xa2b
	.uleb128 0x7
	.4byte	.LASF147
	.byte	0
	.uleb128 0x7
	.4byte	.LASF148
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0xd
	.byte	0x1c
	.byte	0x3
	.4byte	0xa11
	.uleb128 0x4
	.4byte	.LASF150
	.byte	0xe
	.byte	0x26
	.byte	0xe
	.4byte	0xa43
	.uleb128 0x5
	.4byte	0xa48
	.uleb128 0x11
	.4byte	0x9c0
	.4byte	0xa5c
	.uleb128 0x3
	.4byte	0xd2
	.uleb128 0x3
	.4byte	0x9a
	.byte	0
	.uleb128 0xe
	.4byte	.LASF151
	.byte	0x8
	.byte	0xe
	.byte	0x29
	.byte	0x10
	.4byte	0xa91
	.uleb128 0xb
	.ascii	"gfx\000"
	.byte	0xe
	.byte	0x2b
	.byte	0x6
	.4byte	0xa91
	.byte	0
	.uleb128 0x1
	.4byte	.LASF152
	.byte	0xe
	.byte	0x2c
	.byte	0x6
	.4byte	0x997
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0xe
	.byte	0x2d
	.byte	0x6
	.4byte	0x997
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	0x98d
	.uleb128 0x4
	.4byte	.LASF151
	.byte	0xe
	.byte	0x2e
	.byte	0x2
	.4byte	0xa5c
	.uleb128 0xe
	.4byte	.LASF154
	.byte	0x48
	.byte	0xe
	.byte	0x4c
	.byte	0x10
	.4byte	0xb98
	.uleb128 0x1
	.4byte	.LASF155
	.byte	0xe
	.byte	0x4e
	.byte	0xe
	.4byte	0xa96
	.byte	0
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0xe
	.byte	0x50
	.byte	0x7
	.4byte	0x9bb
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF157
	.byte	0xe
	.byte	0x52
	.byte	0x6
	.4byte	0x9a
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF158
	.byte	0xe
	.byte	0x53
	.byte	0x6
	.4byte	0x9a
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF159
	.byte	0xe
	.byte	0x55
	.byte	0x6
	.4byte	0x9a
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF160
	.byte	0xe
	.byte	0x56
	.byte	0x6
	.4byte	0x9a
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0xe
	.byte	0x58
	.byte	0x6
	.4byte	0x9a
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0xe
	.byte	0x59
	.byte	0x6
	.4byte	0x9a
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF163
	.byte	0xe
	.byte	0x5b
	.byte	0x6
	.4byte	0x9a
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0xe
	.byte	0x5c
	.byte	0x6
	.4byte	0x9a
	.byte	0x28
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0xe
	.byte	0x5d
	.byte	0x6
	.4byte	0x9a
	.byte	0x2c
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0xe
	.byte	0x5e
	.byte	0x6
	.4byte	0x9a
	.byte	0x30
	.uleb128 0x1
	.4byte	.LASF167
	.byte	0xe
	.byte	0x60
	.byte	0x6
	.4byte	0x9a
	.byte	0x34
	.uleb128 0xb
	.ascii	"fg\000"
	.byte	0xe
	.byte	0x61
	.byte	0x6
	.4byte	0x997
	.byte	0x38
	.uleb128 0xb
	.ascii	"bg\000"
	.byte	0xe
	.byte	0x62
	.byte	0x6
	.4byte	0x997
	.byte	0x3a
	.uleb128 0x1
	.4byte	.LASF168
	.byte	0xe
	.byte	0x63
	.byte	0x6
	.4byte	0x9a
	.byte	0x3c
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0xe
	.byte	0x65
	.byte	0xf
	.4byte	0xa37
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0xe
	.byte	0x67
	.byte	0x6
	.4byte	0x9c0
	.byte	0x44
	.byte	0
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0xe
	.byte	0x68
	.byte	0x2
	.4byte	0xaa2
	.uleb128 0x14
	.byte	0x4
	.4byte	0xa1
	.byte	0xf
	.byte	0xb
	.byte	0x1
	.4byte	0xc81
	.uleb128 0x7
	.4byte	.LASF171
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF172
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF173
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF174
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF175
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF176
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF177
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF178
	.byte	0x80
	.uleb128 0x10
	.4byte	.LASF179
	.2byte	0x100
	.uleb128 0x10
	.4byte	.LASF180
	.2byte	0x200
	.uleb128 0x10
	.4byte	.LASF181
	.2byte	0x400
	.uleb128 0x10
	.4byte	.LASF182
	.2byte	0x800
	.uleb128 0x10
	.4byte	.LASF183
	.2byte	0x4000
	.uleb128 0x10
	.4byte	.LASF184
	.2byte	0x8000
	.uleb128 0xc
	.4byte	.LASF185
	.4byte	0x100000
	.uleb128 0xc
	.4byte	.LASF186
	.4byte	0x1000000
	.uleb128 0xc
	.4byte	.LASF187
	.4byte	0x2000000
	.uleb128 0xc
	.4byte	.LASF188
	.4byte	0x4000000
	.uleb128 0xc
	.4byte	.LASF189
	.4byte	0x8000000
	.uleb128 0xc
	.4byte	.LASF190
	.4byte	0x10000000
	.uleb128 0xc
	.4byte	.LASF191
	.4byte	0x20000000
	.uleb128 0xc
	.4byte	.LASF192
	.4byte	0x40000000
	.uleb128 0xc
	.4byte	.LASF193
	.4byte	0x80000000
	.uleb128 0xc
	.4byte	.LASF194
	.4byte	0x40000040
	.uleb128 0xc
	.4byte	.LASF195
	.4byte	0x80000080
	.uleb128 0xc
	.4byte	.LASF196
	.4byte	0x20000020
	.uleb128 0xc
	.4byte	.LASF197
	.4byte	0x10000010
	.byte	0
	.uleb128 0x31
	.4byte	.LASF200
	.byte	0x11
	.byte	0x5d
	.byte	0x6
	.4byte	0xc93
	.uleb128 0x3
	.4byte	0x9a
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF198
	.byte	0x10
	.byte	0xc6
	.4byte	0x9c0
	.uleb128 0x1f
	.4byte	.LASF199
	.byte	0xf
	.byte	0x74
	.4byte	0x9a2
	.uleb128 0x32
	.4byte	.LASF214
	.byte	0xf
	.byte	0x66
	.byte	0x6
	.uleb128 0x33
	.4byte	.LASF215
	.byte	0xc
	.byte	0x80
	.byte	0x6
	.4byte	0xcc8
	.uleb128 0x3
	.4byte	0xa05
	.uleb128 0x3
	.4byte	0x9c0
	.byte	0
	.uleb128 0x12
	.4byte	.LASF201
	.byte	0x4
	.byte	0xbf
	.byte	0x5
	.4byte	0x9a
	.4byte	0xcde
	.uleb128 0x3
	.4byte	0xcde
	.byte	0
	.uleb128 0x5
	.4byte	0x981
	.uleb128 0x1a
	.4byte	0xcde
	.uleb128 0x12
	.4byte	.LASF202
	.byte	0x4
	.byte	0xce
	.byte	0x5
	.4byte	0x9a
	.4byte	0xd08
	.uleb128 0x3
	.4byte	0xce3
	.uleb128 0x3
	.4byte	0x6a4
	.uleb128 0x3
	.4byte	0xaf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF203
	.byte	0x4
	.byte	0xf3
	.byte	0x8
	.4byte	0xcde
	.4byte	0xd23
	.uleb128 0x3
	.4byte	0x6a4
	.uleb128 0x3
	.4byte	0x6a4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF204
	.byte	0x4
	.byte	0xd0
	.byte	0x5
	.4byte	0x9a
	.4byte	0xd3e
	.uleb128 0x3
	.4byte	0x69f
	.uleb128 0x3
	.4byte	0xaf
	.byte	0
	.uleb128 0x12
	.4byte	.LASF205
	.byte	0xe
	.byte	0xa3
	.byte	0xf
	.4byte	0xd59
	.4byte	0xd59
	.uleb128 0x3
	.4byte	0xa2b
	.uleb128 0x3
	.4byte	0xd59
	.byte	0
	.uleb128 0x5
	.4byte	0xb98
	.uleb128 0x34
	.ascii	"Log\000"
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe05
	.uleb128 0x20
	.4byte	.LASF207
	.byte	0x22
	.byte	0x16
	.4byte	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.uleb128 0x22
	.ascii	"vl\000"
	.byte	0x24
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.ascii	"f\000"
	.byte	0x28
	.4byte	0xcde
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xd
	.4byte	.LVL14
	.4byte	0xd23
	.4byte	0xdb9
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xd
	.4byte	.LVL15
	.4byte	0xd08
	.4byte	0xdd9
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0xd
	.4byte	.LVL17
	.4byte	0xce8
	.4byte	0xdf4
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x24
	.4byte	.LVL18
	.4byte	0xcc8
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LASF206
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf21
	.uleb128 0x20
	.4byte	.LASF207
	.byte	0x9
	.byte	0x18
	.4byte	0x69f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x21
	.uleb128 0x22
	.ascii	"vl\000"
	.byte	0xc
	.4byte	0xd4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x23
	.ascii	"f\000"
	.byte	0x10
	.4byte	0xcde
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xd
	.4byte	.LVL1
	.4byte	0xd3e
	.4byte	0xe5e
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.4byte	.LVL2
	.4byte	0xd23
	.4byte	0xe78
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0xd
	.4byte	.LVL3
	.4byte	0xd08
	.4byte	0xe98
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL5
	.4byte	0xce8
	.4byte	0xeb3
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.4byte	.LVL6
	.4byte	0xcc8
	.4byte	0xec7
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL7
	.4byte	0xf21
	.4byte	0xede
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0xd
	.4byte	.LVL8
	.4byte	0xcb1
	.4byte	0xef6
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL9
	.4byte	0xca9
	.uleb128 0x15
	.4byte	.LVL10
	.4byte	0xc9e
	.uleb128 0x15
	.4byte	.LVL11
	.4byte	0xc93
	.uleb128 0x24
	.4byte	.LVL12
	.4byte	0xc81
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF216
	.4byte	.LASF217
	.byte	0x12
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS1:
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU46
.LLST1:
	.byte	0x6
	.4byte	.LVL16
	.byte	0x4
	.uleb128 .LVL16-.LVL16
	.uleb128 .LVL17-1-.LVL16
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL17-1-.LVL16
	.uleb128 .LVL19-.LVL16
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS0:
	.uleb128 .LVU16
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL5-1-.LVL4
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL5-1-.LVL4
	.uleb128 .LFE100-.LVL4
	.uleb128 0x1
	.byte	0x54
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL2:
	.byte	0x7
	.4byte	.LFB100
	.uleb128 .LFE100-.LFB100
	.byte	0x7
	.4byte	.LFB101
	.uleb128 .LFE101-.LFB101
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF56:
	.ascii	"_is_cxa\000"
.LASF2:
	.ascii	"short int\000"
.LASF151:
	.ascii	"ConsoleFont\000"
.LASF208:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF174:
	.ascii	"KEY_START\000"
.LASF202:
	.ascii	"vfprintf\000"
.LASF86:
	.ascii	"_emergency\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF187:
	.ascii	"KEY_CSTICK_LEFT\000"
.LASF16:
	.ascii	"va_list\000"
.LASF36:
	.ascii	"__lock_t\000"
.LASF124:
	.ascii	"_getdate_err\000"
.LASF76:
	.ascii	"_data\000"
.LASF128:
	.ascii	"_wcrtomb_state\000"
.LASF156:
	.ascii	"frameBuffer\000"
.LASF129:
	.ascii	"_wcsrtombs_state\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF188:
	.ascii	"KEY_CSTICK_UP\000"
.LASF66:
	.ascii	"_lbfsize\000"
.LASF93:
	.ascii	"_p5s\000"
.LASF10:
	.ascii	"__int64_t\000"
.LASF106:
	.ascii	"_niobs\000"
.LASF6:
	.ascii	"__int32_t\000"
.LASF126:
	.ascii	"_mbrtowc_state\000"
.LASF199:
	.ascii	"hidKeysDown\000"
.LASF157:
	.ascii	"cursorX\000"
.LASF158:
	.ascii	"cursorY\000"
.LASF71:
	.ascii	"_close\000"
.LASF0:
	.ascii	"signed char\000"
.LASF169:
	.ascii	"PrintChar\000"
.LASF198:
	.ascii	"aptMainLoop\000"
.LASF72:
	.ascii	"_ubuf\000"
.LASF61:
	.ascii	"_base\000"
.LASF45:
	.ascii	"__tm_hour\000"
.LASF121:
	.ascii	"_wctomb_state\000"
.LASF101:
	.ascii	"__sf\000"
.LASF176:
	.ascii	"KEY_DLEFT\000"
.LASF166:
	.ascii	"windowHeight\000"
.LASF67:
	.ascii	"_cookie\000"
.LASF100:
	.ascii	"__sglue\000"
.LASF7:
	.ascii	"long int\000"
.LASF64:
	.ascii	"_flags\000"
.LASF197:
	.ascii	"KEY_RIGHT\000"
.LASF41:
	.ascii	"_wds\000"
.LASF177:
	.ascii	"KEY_DUP\000"
.LASF211:
	.ascii	"__va_list\000"
.LASF217:
	.ascii	"__builtin_puts\000"
.LASF92:
	.ascii	"_result_k\000"
.LASF11:
	.ascii	"long long int\000"
.LASF193:
	.ascii	"KEY_CPAD_DOWN\000"
.LASF27:
	.ascii	"uint16_t\000"
.LASF135:
	.ascii	"double\000"
.LASF96:
	.ascii	"_cvtbuf\000"
.LASF127:
	.ascii	"_mbsrtowcs_state\000"
.LASF149:
	.ascii	"gfxScreen_t\000"
.LASF125:
	.ascii	"_mbrlen_state\000"
.LASF53:
	.ascii	"_fnargs\000"
.LASF102:
	.ascii	"deviceData\000"
.LASF59:
	.ascii	"_fns\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF185:
	.ascii	"KEY_TOUCH\000"
.LASF35:
	.ascii	"_flock_t\000"
.LASF84:
	.ascii	"_stderr\000"
.LASF37:
	.ascii	"_Bigint\000"
.LASF116:
	.ascii	"_gamma_signgam\000"
.LASF145:
	.ascii	"GSPGPU_EVENT_MAX\000"
.LASF183:
	.ascii	"KEY_ZL\000"
.LASF138:
	.ascii	"GSPGPU_EVENT_PSC0\000"
.LASF175:
	.ascii	"KEY_DRIGHT\000"
.LASF159:
	.ascii	"prevCursorX\000"
.LASF160:
	.ascii	"prevCursorY\000"
.LASF42:
	.ascii	"__tm\000"
.LASF78:
	.ascii	"_mbstate\000"
.LASF21:
	.ascii	"__wchb\000"
.LASF180:
	.ascii	"KEY_L\000"
.LASF95:
	.ascii	"_cvtlen\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF65:
	.ascii	"_file\000"
.LASF189:
	.ascii	"KEY_CSTICK_DOWN\000"
.LASF178:
	.ascii	"KEY_DDOWN\000"
.LASF196:
	.ascii	"KEY_LEFT\000"
.LASF140:
	.ascii	"GSPGPU_EVENT_VBlank0\000"
.LASF141:
	.ascii	"GSPGPU_EVENT_VBlank1\000"
.LASF182:
	.ascii	"KEY_Y\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF98:
	.ascii	"_atexit0\000"
.LASF123:
	.ascii	"_signal_buf\000"
.LASF114:
	.ascii	"_asctime_buf\000"
.LASF20:
	.ascii	"__wch\000"
.LASF30:
	.ascii	"_LOCK_T\000"
.LASF162:
	.ascii	"consoleHeight\000"
.LASF17:
	.ascii	"wint_t\000"
.LASF164:
	.ascii	"windowY\000"
.LASF77:
	.ascii	"_lock\000"
.LASF110:
	.ascii	"_mult\000"
.LASF91:
	.ascii	"_result\000"
.LASF213:
	.ascii	"__locale_t\000"
.LASF190:
	.ascii	"KEY_CPAD_RIGHT\000"
.LASF144:
	.ascii	"GSPGPU_EVENT_DMA\000"
.LASF69:
	.ascii	"_write\000"
.LASF48:
	.ascii	"__tm_year\000"
.LASF112:
	.ascii	"_unused_rand\000"
.LASF216:
	.ascii	"puts\000"
.LASF161:
	.ascii	"consoleWidth\000"
.LASF170:
	.ascii	"consoleInitialised\000"
.LASF75:
	.ascii	"_offset\000"
.LASF171:
	.ascii	"KEY_A\000"
.LASF172:
	.ascii	"KEY_B\000"
.LASF15:
	.ascii	"__gnuc_va_list\000"
.LASF131:
	.ascii	"_nextf\000"
.LASF173:
	.ascii	"KEY_SELECT\000"
.LASF179:
	.ascii	"KEY_R\000"
.LASF47:
	.ascii	"__tm_mon\000"
.LASF167:
	.ascii	"tabSize\000"
.LASF57:
	.ascii	"_atexit\000"
.LASF32:
	.ascii	"thread_tag\000"
.LASF205:
	.ascii	"consoleInit\000"
.LASF181:
	.ascii	"KEY_X\000"
.LASF18:
	.ascii	"_off_t\000"
.LASF204:
	.ascii	"vprintf\000"
.LASF184:
	.ascii	"KEY_ZR\000"
.LASF136:
	.ascii	"float\000"
.LASF203:
	.ascii	"fopen\000"
.LASF94:
	.ascii	"_freelist\000"
.LASF34:
	.ascii	"_LOCK_RECURSIVE_T\000"
.LASF139:
	.ascii	"GSPGPU_EVENT_PSC1\000"
.LASF209:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/misc/Crash"
	.ascii	".c\000"
.LASF137:
	.ascii	"_Bool\000"
.LASF28:
	.ascii	"int32_t\000"
.LASF54:
	.ascii	"_dso_handle\000"
.LASF97:
	.ascii	"_new\000"
.LASF148:
	.ascii	"GFX_BOTTOM\000"
.LASF130:
	.ascii	"_h_errno\000"
.LASF119:
	.ascii	"_mblen_state\000"
.LASF50:
	.ascii	"__tm_yday\000"
.LASF33:
	.ascii	"counter\000"
.LASF60:
	.ascii	"__sbuf\000"
.LASF79:
	.ascii	"_flags2\000"
.LASF195:
	.ascii	"KEY_DOWN\000"
.LASF104:
	.ascii	"__FILE\000"
.LASF24:
	.ascii	"_mbstate_t\000"
.LASF63:
	.ascii	"__sFILE\000"
.LASF117:
	.ascii	"_rand_next\000"
.LASF142:
	.ascii	"GSPGPU_EVENT_PPF\000"
.LASF107:
	.ascii	"_iobs\000"
.LASF85:
	.ascii	"_inc\000"
.LASF58:
	.ascii	"_ind\000"
.LASF200:
	.ascii	"exit\000"
.LASF207:
	.ascii	"reason\000"
.LASF165:
	.ascii	"windowWidth\000"
.LASF88:
	.ascii	"_locale\000"
.LASF90:
	.ascii	"__cleanup\000"
.LASF87:
	.ascii	"_unspecified_locale_info\000"
.LASF39:
	.ascii	"_maxwds\000"
.LASF80:
	.ascii	"_reent\000"
.LASF108:
	.ascii	"_rand48\000"
.LASF109:
	.ascii	"_seed\000"
.LASF22:
	.ascii	"__count\000"
.LASF29:
	.ascii	"uint32_t\000"
.LASF70:
	.ascii	"_seek\000"
.LASF150:
	.ascii	"ConsolePrint\000"
.LASF19:
	.ascii	"_fpos_t\000"
.LASF52:
	.ascii	"_on_exit_args\000"
.LASF14:
	.ascii	"long double\000"
.LASF81:
	.ascii	"_errno\000"
.LASF103:
	.ascii	"char\000"
.LASF74:
	.ascii	"_blksize\000"
.LASF62:
	.ascii	"_size\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF186:
	.ascii	"KEY_CSTICK_RIGHT\000"
.LASF26:
	.ascii	"uint8_t\000"
.LASF40:
	.ascii	"_sign\000"
.LASF201:
	.ascii	"fclose\000"
.LASF206:
	.ascii	"Crash\000"
.LASF38:
	.ascii	"_next\000"
.LASF113:
	.ascii	"_strtok_last\000"
.LASF23:
	.ascii	"__value\000"
.LASF55:
	.ascii	"_fntypes\000"
.LASF212:
	.ascii	"__ap\000"
.LASF152:
	.ascii	"asciiOffset\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF111:
	.ascii	"_add\000"
.LASF25:
	.ascii	"__ULong\000"
.LASF163:
	.ascii	"windowX\000"
.LASF146:
	.ascii	"GSPGPU_Event\000"
.LASF154:
	.ascii	"PrintConsole\000"
.LASF215:
	.ascii	"gspWaitForEvent\000"
.LASF143:
	.ascii	"GSPGPU_EVENT_P3D\000"
.LASF155:
	.ascii	"font\000"
.LASF43:
	.ascii	"__tm_sec\000"
.LASF83:
	.ascii	"_stdout\000"
.LASF49:
	.ascii	"__tm_wday\000"
.LASF105:
	.ascii	"_glue\000"
.LASF82:
	.ascii	"_stdin\000"
.LASF89:
	.ascii	"__sdidinit\000"
.LASF132:
	.ascii	"_nmalloc\000"
.LASF122:
	.ascii	"_l64a_buf\000"
.LASF99:
	.ascii	"_sig_func\000"
.LASF168:
	.ascii	"flags\000"
.LASF214:
	.ascii	"hidScanInput\000"
.LASF194:
	.ascii	"KEY_UP\000"
.LASF210:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF68:
	.ascii	"_read\000"
.LASF73:
	.ascii	"_nbuf\000"
.LASF133:
	.ascii	"_unused\000"
.LASF51:
	.ascii	"__tm_isdst\000"
.LASF115:
	.ascii	"_localtime_buf\000"
.LASF44:
	.ascii	"__tm_min\000"
.LASF118:
	.ascii	"_r48\000"
.LASF134:
	.ascii	"FILE\000"
.LASF191:
	.ascii	"KEY_CPAD_LEFT\000"
.LASF120:
	.ascii	"_mbtowc_state\000"
.LASF147:
	.ascii	"GFX_TOP\000"
.LASF31:
	.ascii	"lock\000"
.LASF153:
	.ascii	"numChars\000"
.LASF192:
	.ascii	"KEY_CPAD_UP\000"
.LASF46:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
