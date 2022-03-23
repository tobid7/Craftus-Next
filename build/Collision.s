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
	.file	"Collision.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Collision_BoxIntersect,"ax",%progbits
	.align	2
	.global	Collision_BoxIntersect
	.syntax unified
	.arm
	.fpu vfp
	.type	Collision_BoxIntersect, %function
Collision_BoxIntersect:
.LVL0:
.LFB21:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/misc/Collision.c"
	.loc 1 12 1 view -0
	.cfi_startproc
	@ args = 64, pretend = 16, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 14 2 view .LVU1
	.loc 1 24 2 view .LVU2
	.loc 1 12 1 is_stmt 0 view .LVU3
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 14, -20
	sub	sp, sp, #28
	.cfi_def_cfa_offset 64
	.loc 1 12 1 view .LVU4
	add	ip, sp, #44
	stmib	ip, {r0, r1, r2, r3}
	.loc 1 25 15 view .LVU5
	vldr.32	s15, [sp, #84]
	vldr.32	s9, [sp, #48]
	vsub.f32	s15, s15, s9
	.loc 1 26 15 view .LVU6
	vldr.32	s4, [sp, #72]
	.loc 1 27 15 view .LVU7
	vldr.32	s11, [sp, #88]
	.loc 1 28 15 view .LVU8
	vldr.32	s12, [sp, #64]
	vldr.32	s6, [sp, #76]
	.loc 1 26 15 view .LVU9
	vldr.32	s10, [sp, #60]
	.loc 1 27 15 view .LVU10
	vldr.32	s5, [sp, #52]
	.loc 1 29 15 view .LVU11
	vldr.32	s13, [sp, #92]
	vldr.32	s7, [sp, #56]
	.loc 1 30 15 view .LVU12
	vldr.32	s14, [sp, #68]
	vldr.32	s8, [sp, #80]
.LBB2:
	.loc 1 42 6 view .LVU13
	vcmpe.f32	s15, #0
.LBE2:
	.loc 1 26 15 view .LVU14
	vsub.f32	s10, s10, s4
	.loc 1 27 15 view .LVU15
	vsub.f32	s11, s11, s5
	.loc 1 28 15 view .LVU16
	vsub.f32	s12, s12, s6
	.loc 1 29 15 view .LVU17
	vsub.f32	s13, s13, s7
	.loc 1 30 15 view .LVU18
	vsub.f32	s14, s14, s8
.LBB3:
	.loc 1 39 11 view .LVU19
	mov	r3, #0
	.loc 1 42 6 view .LVU20
	vmrs	APSR_nzcv, FPSCR
.LBE3:
	.loc 1 12 1 view .LVU21
	ldr	r5, [sp, #96]
	add	r4, sp, #100
	.loc 1 24 8 view .LVU22
	vstr.32	s10, [sp, #4]
	.loc 1 12 1 view .LVU23
	ldm	r4, {r4, r6, r7}
	.loc 1 24 8 view .LVU24
	vstr.32	s11, [sp, #8]
	vstr.32	s12, [sp, #12]
	vstr.32	s13, [sp, #16]
	vstr.32	s14, [sp, #20]
	.loc 1 39 2 is_stmt 1 view .LVU25
.LBB4:
	.loc 1 39 7 view .LVU26
.LVL1:
	.loc 1 39 20 view .LVU27
	.loc 1 42 3 view .LVU28
	.loc 1 44 3 view .LVU29
	.loc 1 48 3 view .LVU30
	.loc 1 49 4 view .LVU31
	.loc 1 39 26 view .LVU32
	ldr	ip, .L16
	add	lr, sp, #4
	.loc 1 44 7 is_stmt 0 view .LVU33
	asr	r2, r5, r3
	.loc 1 42 6 view .LVU34
	bmi	.L7
.L15:
	.loc 1 44 6 view .LVU35
	tst	r2, #1
	bne	.L3
	.loc 1 48 6 view .LVU36
	cmp	r3, #0
	beq	.L4
	.loc 1 48 16 discriminator 1 view .LVU37
	vldr.32	s14, [r6]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L3
.L4:
	.loc 1 50 11 view .LVU38
	ldm	ip, {r0, r1, r2}
	.loc 1 49 11 view .LVU39
	str	r3, [r7]
	.loc 1 50 4 is_stmt 1 view .LVU40
	.loc 1 50 11 is_stmt 0 view .LVU41
	stm	r4, {r0, r1, r2}
	.loc 1 51 4 is_stmt 1 view .LVU42
	.loc 1 51 11 is_stmt 0 view .LVU43
	vstr.32	s15, [r6]
.L3:
	.loc 1 39 26 discriminator 2 view .LVU44
	add	r3, r3, #1
.LVL2:
	.loc 1 39 20 is_stmt 1 discriminator 2 view .LVU45
	cmp	r3, #6
	add	ip, ip, #12
	beq	.L8
	.loc 1 42 16 is_stmt 0 view .LVU46
	vldmia.32	lr!, {s15}
	.loc 1 42 3 is_stmt 1 view .LVU47
	.loc 1 44 3 view .LVU48
	.loc 1 48 3 view .LVU49
	.loc 1 49 4 view .LVU50
	.loc 1 39 26 view .LVU51
	.loc 1 42 6 is_stmt 0 view .LVU52
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	.loc 1 44 7 view .LVU53
	asr	r2, r5, r3
	.loc 1 42 6 view .LVU54
	bpl	.L15
.L7:
	.loc 1 42 34 view .LVU55
	mov	r0, #0
.LBE4:
	.loc 1 56 1 view .LVU56
	add	sp, sp, #28
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	bx	lr
.L8:
	.cfi_restore_state
	.loc 1 55 8 view .LVU57
	mov	r0, #1
	.loc 1 56 1 view .LVU58
	add	sp, sp, #28
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	.cfi_restore 14
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.cfi_endproc
.LFE21:
	.size	Collision_BoxIntersect, .-Collision_BoxIntersect
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	faces.0, %object
	.size	faces.0, 72
faces.0:
	.word	-1082130432
	.word	0
	.word	0
	.word	1065353216
	.word	0
	.word	0
	.word	0
	.word	-1082130432
	.word	0
	.word	0
	.word	1065353216
	.word	0
	.word	0
	.word	0
	.word	-1082130432
	.word	0
	.word	0
	.word	1065353216
	.text
.Letext0:
	.file 2 "/home/tobi/Dokumente/Craftus-Next/include/misc/VecMath.h"
	.file 3 "/home/tobi/Dokumente/Craftus-Next/include/misc/Collision.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1f1
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x1d
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.LLRL2
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0xc
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.4byte	0xb3
	.uleb128 0x2
	.ascii	"x\000"
	.byte	0x2
	.byte	0xa
	.byte	0x9
	.4byte	0x7a
	.byte	0
	.uleb128 0x2
	.ascii	"y\000"
	.byte	0x2
	.byte	0xa
	.byte	0xc
	.4byte	0x7a
	.byte	0x4
	.uleb128 0x2
	.ascii	"z\000"
	.byte	0x2
	.byte	0xa
	.byte	0xf
	.4byte	0x7a
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0xc
	.byte	0x2
	.byte	0x7
	.byte	0x9
	.4byte	0xcc
	.uleb128 0xe
	.ascii	"v\000"
	.byte	0x2
	.byte	0x8
	.byte	0x8
	.4byte	0xcc
	.uleb128 0xf
	.4byte	0x88
	.byte	0
	.uleb128 0x7
	.4byte	0x7a
	.4byte	0xdc
	.uleb128 0x4
	.4byte	0x2d
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF13
	.byte	0x2
	.byte	0xc
	.byte	0x3
	.4byte	0xb3
	.uleb128 0x8
	.4byte	0xdc
	.uleb128 0x6
	.byte	0x18
	.byte	0x3
	.byte	0x7
	.byte	0x9
	.4byte	0x111
	.uleb128 0x2
	.ascii	"min\000"
	.byte	0x3
	.byte	0x7
	.byte	0x19
	.4byte	0xdc
	.byte	0
	.uleb128 0x2
	.ascii	"max\000"
	.byte	0x3
	.byte	0x7
	.byte	0x1e
	.4byte	0xdc
	.byte	0xc
	.byte	0
	.uleb128 0x11
	.ascii	"Box\000"
	.byte	0x3
	.byte	0x7
	.byte	0x25
	.4byte	0xed
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.4byte	0x1bd
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bd
	.uleb128 0x9
	.ascii	"a\000"
	.byte	0x20
	.4byte	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x9
	.ascii	"b\000"
	.byte	0x27
	.4byte	0x111
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x7
	.byte	0x2e
	.4byte	0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x8
	.byte	0x10
	.4byte	0x1c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x9
	.byte	0xf
	.4byte	0x1c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0xa
	.byte	0xd
	.4byte	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0xe
	.byte	0x16
	.4byte	0x1e3
	.uleb128 0x5
	.byte	0x3
	.4byte	faces.0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x18
	.byte	0x8
	.4byte	0x1e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.4byte	.LLRL0
	.uleb128 0x14
	.ascii	"i\000"
	.byte	0x1
	.byte	0x27
	.byte	0xb
	.4byte	0x26
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.uleb128 0x5
	.4byte	0xdc
	.uleb128 0x5
	.4byte	0x7a
	.uleb128 0x5
	.4byte	0x26
	.uleb128 0x7
	.4byte	0xe8
	.4byte	0x1e3
	.uleb128 0x4
	.4byte	0x2d
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0x1d3
	.uleb128 0x15
	.4byte	0x7a
	.uleb128 0x4
	.4byte	0x2d
	.byte	0x5
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x16
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
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 .LVU27
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL1-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LFE21-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
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
.LLRL0:
	.byte	0x5
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB3-.LBB2
	.uleb128 .LBE3-.LBB2
	.byte	0x4
	.uleb128 .LBB4-.LBB2
	.uleb128 .LBE4-.LBB2
	.byte	0
.LLRL2:
	.byte	0x7
	.4byte	.LFB21
	.uleb128 .LFE21-.LFB21
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF15:
	.ascii	"ncoll\000"
.LASF14:
	.ascii	"ignore_faces\000"
.LASF17:
	.ascii	"fcoll\000"
.LASF22:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/misc/Colli"
	.ascii	"sion.c\000"
.LASF11:
	.ascii	"float\000"
.LASF3:
	.ascii	"signed char\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF23:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF12:
	.ascii	"double\000"
.LASF13:
	.ascii	"float3\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"dcoll\000"
.LASF21:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF1:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"faces\000"
.LASF5:
	.ascii	"short int\000"
.LASF7:
	.ascii	"long int\000"
.LASF10:
	.ascii	"char\000"
.LASF24:
	.ascii	"Collision_BoxIntersect\000"
.LASF2:
	.ascii	"long double\000"
.LASF19:
	.ascii	"distances\000"
.LASF20:
	.ascii	"_Bool\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
