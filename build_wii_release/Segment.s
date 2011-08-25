	.file	"Segment.cpp"
	.gnu_attribute 4, 1
	.gnu_attribute 8, 1
	.gnu_attribute 12, 1
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl _ZN7SegmentD2Ev
	.type	_ZN7SegmentD2Ev, @function
_ZN7SegmentD2Ev:
.LFB30:
	.file 1 "/home/pete/code/liiner/src/Segment.cpp"
	.loc 1 27 0
	.cfi_startproc
.LVL0:
.LBB47:
.LBB48:
.LBB49:
.LBB50:
	.file 2 "/home/pete/code/liiner/src/Point.h"
	.loc 2 16 0
	lis 9,_ZTV5PointIiE+8@ha
	la 0,_ZTV5PointIiE+8@l(9)
.LBE50:
.LBE49:
.LBE48:
	.loc 1 27 0
	lis 9,_ZTV7Segment+8@ha
	la 9,_ZTV7Segment+8@l(9)
.LBB53:
.LBB52:
.LBB51:
	.loc 2 16 0
	stw 0,16(3)
.LBE51:
.LBE52:
.LBE53:
	.loc 1 27 0
	stw 9,0(3)
.LVL1:
.LBB54:
.LBB55:
.LBB56:
	.loc 2 16 0
	stw 0,4(3)
.LBE56:
.LBE55:
.LBE54:
.LBE47:
	.loc 1 30 0
	blr
	.cfi_endproc
.LFE30:
	.size	_ZN7SegmentD2Ev, .-_ZN7SegmentD2Ev
	.globl _ZN7SegmentD1Ev
	.set	_ZN7SegmentD1Ev,_ZN7SegmentD2Ev
	.section	.text._ZN5PointIiED2Ev,"axG",@progbits,_ZN5PointIiED5Ev,comdat
	.align 2
	.weak	_ZN5PointIiED2Ev
	.type	_ZN5PointIiED2Ev, @function
_ZN5PointIiED2Ev:
.LFB34:
	.loc 2 16 0
	.cfi_startproc
.LVL2:
.LBB57:
	.loc 2 16 0
	lis 9,_ZTV5PointIiE+8@ha
	la 0,_ZTV5PointIiE+8@l(9)
	stw 0,0(3)
.LBE57:
	blr
	.cfi_endproc
.LFE34:
	.size	_ZN5PointIiED2Ev, .-_ZN5PointIiED2Ev
	.weak	_ZN5PointIiED1Ev
	.set	_ZN5PointIiED1Ev,_ZN5PointIiED2Ev
	.section	".text"
	.align 2
	.globl _ZN7SegmentD0Ev
	.type	_ZN7SegmentD0Ev, @function
_ZN7SegmentD0Ev:
.LFB32:
	.loc 1 27 0
	.cfi_startproc
.LVL3:
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
.LBB58:
.LBB59:
.LBB60:
.LBB61:
.LBB63:
.LBB65:
	.loc 2 16 0
	lis 11,_ZTV5PointIiE+8@ha
.LBE65:
.LBE63:
.LBE61:
.LBE60:
.LBE59:
.LBE58:
	.loc 1 27 0
	stw 0,12(1)
.LBB75:
.LBB74:
.LBB73:
.LBB68:
.LBB62:
.LBB64:
	.loc 2 16 0
	la 0,_ZTV5PointIiE+8@l(11)
.LBE64:
.LBE62:
.LBE68:
	.loc 1 27 0
	lis 11,_ZTV7Segment+8@ha
.LBB69:
.LBB67:
.LBB66:
	.loc 2 16 0
	stw 0,16(3)
.LBE66:
.LBE67:
.LBE69:
	.loc 1 27 0
	la 11,_ZTV7Segment+8@l(11)
.LBB70:
.LBB71:
.LBB72:
	.loc 2 16 0
	stw 0,4(3)
.LBE72:
.LBE71:
.LBE70:
	.loc 1 27 0
	stw 11,0(3)
.LBE73:
.LBE74:
.LBE75:
	.loc 1 30 0
	.cfi_offset 65, 4
	bl _ZdlPv
.LVL4:
	lwz 0,12(1)
	addi 1,1,8
.LCFI1:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE32:
	.size	_ZN7SegmentD0Ev, .-_ZN7SegmentD0Ev
	.section	.text._ZN5PointIiED0Ev,"axG",@progbits,_ZN5PointIiED5Ev,comdat
	.align 2
	.weak	_ZN5PointIiED0Ev
	.type	_ZN5PointIiED0Ev, @function
_ZN5PointIiED0Ev:
.LFB36:
	.loc 2 16 0
	.cfi_startproc
.LVL5:
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
.LBB76:
.LBB77:
.LBB78:
	lis 9,_ZTV5PointIiE+8@ha
.LBE78:
.LBE77:
.LBE76:
	stw 0,12(1)
.LBB81:
.LBB80:
.LBB79:
	.loc 2 16 0
	la 0,_ZTV5PointIiE+8@l(9)
	stw 0,0(3)
.LBE79:
.LBE80:
.LBE81:
	.cfi_offset 65, 4
	bl _ZdlPv
.LVL6:
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE36:
	.size	_ZN5PointIiED0Ev, .-_ZN5PointIiED0Ev
	.section	".text"
	.align 2
	.globl _ZN7SegmentC2E5PointIiES1_
	.type	_ZN7SegmentC2E5PointIiES1_, @function
_ZN7SegmentC2E5PointIiES1_:
.LFB24:
	.loc 1 10 0
	.cfi_startproc
.LVL7:
.LBB82:
	.loc 1 30 0
	lwz 9,4(4)
	.loc 1 14 0
	lis 8,_ZTV7Segment+8@ha
	.loc 1 30 0
	lwz 0,8(4)
	.loc 1 14 0
	la 8,_ZTV7Segment+8@l(8)
.LBB83:
.LBB84:
	.loc 2 12 0
	stw 9,8(3)
	lis 9,_ZTV5PointIiE+8@ha
	stw 0,12(3)
	la 9,_ZTV5PointIiE+8@l(9)
	.loc 1 30 0
	lwz 10,4(5)
.LBE84:
.LBE83:
	.loc 1 14 0
	li 0,0
.LBB86:
.LBB85:
	.loc 1 30 0
	lwz 11,8(5)
	.loc 2 12 0
	stw 9,4(3)
.LBE85:
.LBE86:
	.loc 1 14 0
	stw 8,0(3)
.LVL8:
.LBB87:
.LBB88:
	.loc 2 12 0
	stw 9,16(3)
	stw 10,20(3)
	stw 11,24(3)
.LBE88:
.LBE87:
	.loc 1 14 0
	stw 0,28(3)
	stw 0,32(3)
.LBE82:
	.loc 1 17 0
	blr
	.cfi_endproc
.LFE24:
	.size	_ZN7SegmentC2E5PointIiES1_, .-_ZN7SegmentC2E5PointIiES1_
	.globl _ZN7SegmentC1E5PointIiES1_
	.set	_ZN7SegmentC1E5PointIiES1_,_ZN7SegmentC2E5PointIiES1_
	.align 2
	.globl _ZN7SegmentC2EPS_5PointIiE
	.type	_ZN7SegmentC2EPS_5PointIiE, @function
_ZN7SegmentC2EPS_5PointIiE:
.LFB27:
	.loc 1 19 0
	.cfi_startproc
.LVL9:
.LBB89:
	.loc 1 30 0
	lwz 9,20(4)
.LBB90:
.LBB92:
.LBB94:
	.loc 2 12 0
	lis 10,_ZTV5PointIiE+8@ha
.LBE94:
.LBE92:
.LBE90:
	.loc 1 30 0
	lwz 0,24(4)
.LVL10:
.LBB99:
.LBB97:
.LBB95:
	.loc 2 12 0
	stw 9,8(3)
	stw 0,12(3)
	la 0,_ZTV5PointIiE+8@l(10)
	.loc 1 30 0
	lwz 11,4(5)
.LBE95:
.LBE97:
.LBE99:
	.loc 1 22 0
	lis 10,_ZTV7Segment+8@ha
.LBB100:
.LBB91:
.LBB93:
	.loc 1 30 0
	lwz 9,8(5)
.LVL11:
.LBE93:
.LBE91:
.LBE100:
	.loc 1 22 0
	la 10,_ZTV7Segment+8@l(10)
	stw 10,0(3)
.LBB101:
.LBB98:
.LBB96:
	.loc 2 12 0
	stw 0,4(3)
.LBE96:
.LBE98:
.LBE101:
.LBB102:
.LBB103:
	stw 0,16(3)
	stw 11,20(3)
	stw 9,24(3)
.LBE103:
.LBE102:
	.loc 1 22 0
	stw 4,32(3)
.LVL12:
.LBB104:
.LBB105:
	.file 3 "/home/pete/code/liiner/src/Segment.h"
	.loc 3 26 0
	stw 3,28(4)
.LBE105:
.LBE104:
.LBE89:
	.loc 1 25 0
	blr
	.cfi_endproc
.LFE27:
	.size	_ZN7SegmentC2EPS_5PointIiE, .-_ZN7SegmentC2EPS_5PointIiE
	.globl _ZN7SegmentC1EPS_5PointIiE
	.set	_ZN7SegmentC1EPS_5PointIiE,_ZN7SegmentC2EPS_5PointIiE
	.weak	_ZTV7Segment
	.section	.rodata._ZTV7Segment,"aG",@progbits,_ZTV7Segment,comdat
	.align 3
	.type	_ZTV7Segment, @object
	.size	_ZTV7Segment, 16
_ZTV7Segment:
	.long	0
	.long	_ZTI7Segment
	.long	_ZN7SegmentD1Ev
	.long	_ZN7SegmentD0Ev
	.weak	_ZTS7Segment
	.section	.rodata._ZTS7Segment,"aG",@progbits,_ZTS7Segment,comdat
	.align 2
	.type	_ZTS7Segment, @object
	.size	_ZTS7Segment, 9
_ZTS7Segment:
	.string	"7Segment"
	.weak	_ZTI7Segment
	.section	.sdata._ZTI7Segment,"awG",@progbits,_ZTI7Segment,comdat
	.align 2
	.type	_ZTI7Segment, @object
	.size	_ZTI7Segment, 8
_ZTI7Segment:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS7Segment
	.weak	_ZTV5PointIiE
	.section	.rodata._ZTV5PointIiE,"aG",@progbits,_ZTV5PointIiE,comdat
	.align 3
	.type	_ZTV5PointIiE, @object
	.size	_ZTV5PointIiE, 16
_ZTV5PointIiE:
	.long	0
	.long	_ZTI5PointIiE
	.long	_ZN5PointIiED1Ev
	.long	_ZN5PointIiED0Ev
	.weak	_ZTI5PointIiE
	.section	.sdata._ZTI5PointIiE,"awG",@progbits,_ZTI5PointIiE,comdat
	.align 2
	.type	_ZTI5PointIiE, @object
	.size	_ZTI5PointIiE, 8
_ZTI5PointIiE:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS5PointIiE
	.weak	_ZTS5PointIiE
	.section	.rodata._ZTS5PointIiE,"aG",@progbits,_ZTS5PointIiE,comdat
	.align 2
	.type	_ZTS5PointIiE, @object
	.size	_ZTS5PointIiE, 10
_ZTS5PointIiE:
	.string	"5PointIiE"
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB32
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE32
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LFB36
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI3
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x6d0
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0x4
	.4byte	.LASF43
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ldebug_ranges0+0xd0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x24
	.byte	0x3
	.byte	0x14
	.4byte	0x25
	.4byte	0x17b
	.uleb128 0x3
	.4byte	.LASF16
	.4byte	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x3
	.byte	0x21
	.4byte	0x19d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x5
	.string	"end"
	.byte	0x3
	.byte	0x22
	.4byte	0x19d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x3
	.byte	0x24
	.4byte	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x3
	.byte	0x25
	.4byte	0x3ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0x3
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x1
	.4byte	0x96
	.uleb128 0x7
	.4byte	0x3bc
	.byte	0x1
	.uleb128 0x8
	.4byte	0x3c2
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.4byte	0xb4
	.uleb128 0x7
	.4byte	0x3bc
	.byte	0x1
	.uleb128 0x8
	.4byte	0x19d
	.uleb128 0x8
	.4byte	0x19d
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.4byte	0xd2
	.uleb128 0x7
	.4byte	0x3bc
	.byte	0x1
	.uleb128 0x8
	.4byte	0x3ba
	.uleb128 0x8
	.4byte	0x19d
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.4byte	0x25
	.byte	0x1
	.4byte	0xf1
	.uleb128 0x7
	.4byte	0x3bc
	.byte	0x1
	.uleb128 0x7
	.4byte	0x186
	.byte	0x1
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF11
	.byte	0x3
	.byte	0x1a
	.4byte	.LASF13
	.byte	0x1
	.4byte	0x10e
	.uleb128 0x7
	.4byte	0x3bc
	.byte	0x1
	.uleb128 0x8
	.4byte	0x3ba
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF5
	.byte	0x3
	.byte	0x1b
	.4byte	.LASF7
	.4byte	0x3ba
	.byte	0x1
	.4byte	0x12a
	.uleb128 0x7
	.4byte	0x3bc
	.byte	0x1
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF6
	.byte	0x3
	.byte	0x1c
	.4byte	.LASF8
	.4byte	0x3ba
	.byte	0x1
	.4byte	0x146
	.uleb128 0x7
	.4byte	0x3bc
	.byte	0x1
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF9
	.byte	0x3
	.byte	0x1d
	.4byte	.LASF10
	.4byte	0x19d
	.byte	0x1
	.4byte	0x162
	.uleb128 0x7
	.4byte	0x3bc
	.byte	0x1
	.byte	0x0
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF12
	.byte	0x3
	.byte	0x1e
	.4byte	.LASF14
	.4byte	0x19d
	.byte	0x1
	.uleb128 0x7
	.4byte	0x3bc
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.4byte	0x186
	.4byte	0x186
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x11
	.byte	0x4
	.4byte	0x193
	.uleb128 0x12
	.byte	0x4
	.4byte	.LASF44
	.4byte	0x17b
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0xc
	.byte	0x2
	.byte	0xc
	.4byte	0x19d
	.4byte	0x3ba
	.uleb128 0x13
	.string	"T"
	.4byte	0x186
	.uleb128 0x13
	.string	"T"
	.4byte	0x186
	.uleb128 0x3
	.4byte	.LASF17
	.4byte	0x18d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x1
	.uleb128 0x14
	.string	"x"
	.byte	0x2
	.byte	0x12
	.4byte	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"y"
	.byte	0x2
	.byte	0x13
	.4byte	0x186
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1
	.4byte	0x1f8
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x3d3
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF18
	.byte	0x2
	.byte	0xe
	.byte	0x1
	.4byte	0x20c
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.byte	0x0
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF18
	.byte	0x2
	.byte	0xf
	.byte	0x1
	.4byte	0x22a
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x186
	.uleb128 0x8
	.4byte	0x186
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF19
	.byte	0x2
	.byte	0x10
	.byte	0x1
	.4byte	0x19d
	.byte	0x1
	.4byte	0x249
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x7
	.4byte	0x186
	.byte	0x1
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF20
	.byte	0x2
	.byte	0x15
	.4byte	.LASF21
	.4byte	0x19d
	.byte	0x1
	.4byte	0x26a
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x3de
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF22
	.byte	0x2
	.byte	0x1b
	.4byte	.LASF23
	.4byte	0x19d
	.byte	0x1
	.4byte	0x28b
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x3de
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF24
	.byte	0x2
	.byte	0x21
	.4byte	.LASF25
	.byte	0x1
	.4byte	0x2a8
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x3de
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF26
	.byte	0x2
	.byte	0x27
	.4byte	.LASF27
	.byte	0x1
	.4byte	0x2c5
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x3de
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF28
	.byte	0x2
	.byte	0x2d
	.4byte	.LASF29
	.4byte	0x19d
	.byte	0x1
	.4byte	0x2e6
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x3e4
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF28
	.byte	0x2
	.byte	0x33
	.4byte	.LASF30
	.4byte	0x19d
	.byte	0x1
	.4byte	0x307
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x186
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF31
	.byte	0x2
	.byte	0x39
	.4byte	.LASF32
	.4byte	0x19d
	.byte	0x1
	.4byte	0x328
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x3e4
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF31
	.byte	0x2
	.byte	0x3f
	.4byte	.LASF33
	.4byte	0x19d
	.byte	0x1
	.4byte	0x349
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x186
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF34
	.byte	0x2
	.byte	0x45
	.4byte	.LASF35
	.byte	0x1
	.4byte	0x366
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x3e4
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF34
	.byte	0x2
	.byte	0x4b
	.4byte	.LASF36
	.byte	0x1
	.4byte	0x383
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x186
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF37
	.byte	0x2
	.byte	0x51
	.4byte	.LASF38
	.byte	0x1
	.4byte	0x3a0
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x3e4
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF37
	.byte	0x2
	.byte	0x57
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0x7
	.4byte	0x3cd
	.byte	0x1
	.uleb128 0x8
	.4byte	0x186
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.byte	0x4
	.uleb128 0x11
	.byte	0x4
	.4byte	0x25
	.uleb128 0x17
	.byte	0x4
	.4byte	0x3c8
	.uleb128 0x18
	.4byte	0x25
	.uleb128 0x11
	.byte	0x4
	.4byte	0x19d
	.uleb128 0x17
	.byte	0x4
	.4byte	0x3d9
	.uleb128 0x18
	.4byte	0x19d
	.uleb128 0x17
	.byte	0x4
	.4byte	0x19d
	.uleb128 0x19
	.byte	0x8
	.byte	0x4
	.4byte	.LASF39
	.uleb128 0x1a
	.4byte	0x22a
	.byte	0x3
	.4byte	0x40a
	.uleb128 0x1b
	.4byte	.LASF40
	.4byte	0x40a
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF41
	.4byte	0x40f
	.byte	0x1
	.byte	0x0
	.uleb128 0x18
	.4byte	0x3cd
	.uleb128 0x18
	.4byte	0x186
	.uleb128 0x1a
	.4byte	0xd2
	.byte	0x1
	.4byte	0x433
	.uleb128 0x1b
	.4byte	.LASF40
	.4byte	0x433
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF41
	.4byte	0x40f
	.byte	0x1
	.byte	0x0
	.uleb128 0x18
	.4byte	0x3bc
	.uleb128 0x1a
	.4byte	0xf1
	.byte	0x3
	.4byte	0x458
	.uleb128 0x1b
	.4byte	.LASF40
	.4byte	0x433
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF1
	.byte	0x3
	.byte	0x1a
	.4byte	0x3ba
	.byte	0x0
	.uleb128 0x1d
	.4byte	0x1e0
	.byte	0x2
	.byte	0xc
	.byte	0x3
	.4byte	0x474
	.uleb128 0x1b
	.4byte	.LASF40
	.4byte	0x40a
	.byte	0x1
	.uleb128 0x8
	.4byte	0x474
	.byte	0x0
	.uleb128 0x18
	.4byte	0x3d3
	.uleb128 0x1a
	.4byte	0x162
	.byte	0x3
	.4byte	0x48e
	.uleb128 0x1b
	.4byte	.LASF40
	.4byte	0x433
	.byte	0x1
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x414
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x4e0
	.uleb128 0x1f
	.4byte	0x41e
	.byte	0x1
	.byte	0x53
	.uleb128 0x20
	.4byte	0x3eb
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x1b
	.4byte	0x4c6
	.uleb128 0x1f
	.4byte	0x3f5
	.byte	0x3
	.byte	0x73
	.sleb128 16
	.byte	0x9f
	.byte	0x0
	.uleb128 0x21
	.4byte	0x3eb
	.4byte	.LBB54
	.4byte	.LBE54
	.byte	0x1
	.byte	0x1b
	.uleb128 0x1f
	.4byte	0x3f5
	.byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x3eb
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x4fc
	.uleb128 0x1f
	.4byte	0x3f5
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x22
	.4byte	0x414
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LLST0
	.4byte	0x55e
	.uleb128 0x23
	.4byte	0x41e
	.4byte	.LLST1
	.uleb128 0x24
	.4byte	0x414
	.4byte	.LBB58
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x1e
	.uleb128 0x25
	.4byte	0x41e
	.uleb128 0x20
	.4byte	0x3eb
	.4byte	.LBB61
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x1b
	.4byte	0x547
	.uleb128 0x25
	.4byte	0x3f5
	.byte	0x0
	.uleb128 0x21
	.4byte	0x3eb
	.4byte	.LBB70
	.4byte	.LBE70
	.byte	0x1
	.byte	0x1b
	.uleb128 0x25
	.4byte	0x3f5
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.4byte	0x3eb
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST2
	.4byte	0x596
	.uleb128 0x23
	.4byte	0x3f5
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	0x3eb
	.4byte	.LBB76
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x2
	.byte	0x10
	.uleb128 0x23
	.4byte	0x3f5
	.4byte	.LLST4
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.4byte	0x96
	.byte	0x0
	.4byte	0x5c1
	.uleb128 0x1b
	.4byte	.LASF40
	.4byte	0x433
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF0
	.byte	0x1
	.byte	0xa
	.4byte	0x19d
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.byte	0xa
	.4byte	0x19d
	.byte	0x0
	.uleb128 0x1e
	.4byte	0x596
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x621
	.uleb128 0x1f
	.4byte	0x5a0
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	0x5aa
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	0x5b5
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	0x458
	.4byte	.LBB83
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0xe
	.4byte	0x607
	.uleb128 0x1f
	.4byte	0x464
	.byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.byte	0x0
	.uleb128 0x21
	.4byte	0x458
	.4byte	.LBB87
	.4byte	.LBE87
	.byte	0x1
	.byte	0xe
	.uleb128 0x1f
	.4byte	0x464
	.byte	0x3
	.byte	0x73
	.sleb128 16
	.byte	0x9f
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.4byte	0xb4
	.byte	0x0
	.4byte	0x64c
	.uleb128 0x1b
	.4byte	.LASF40
	.4byte	0x433
	.byte	0x1
	.uleb128 0x1c
	.4byte	.LASF2
	.byte	0x1
	.byte	0x13
	.4byte	0x3ba
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.byte	0x13
	.4byte	0x19d
	.byte	0x0
	.uleb128 0x27
	.4byte	0x621
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x1f
	.4byte	0x62b
	.byte	0x1
	.byte	0x53
	.uleb128 0x1f
	.4byte	0x635
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.4byte	0x640
	.byte	0x1
	.byte	0x55
	.uleb128 0x20
	.4byte	0x479
	.4byte	.LBB90
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x16
	.4byte	0x69e
	.uleb128 0x24
	.4byte	0x458
	.4byte	.LBB92
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x3
	.byte	0x1e
	.uleb128 0x1f
	.4byte	0x464
	.byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.4byte	0x458
	.4byte	.LBB102
	.4byte	.LBE102
	.byte	0x1
	.byte	0x16
	.4byte	0x6bb
	.uleb128 0x1f
	.4byte	0x464
	.byte	0x3
	.byte	0x73
	.sleb128 16
	.byte	0x9f
	.byte	0x0
	.uleb128 0x21
	.4byte	0x438
	.4byte	.LBB104
	.4byte	.LBE104
	.byte	0x1
	.byte	0x18
	.uleb128 0x1f
	.4byte	0x44c
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1d
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x4c
	.uleb128 0xb
	.uleb128 0x1d
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x2f
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x10
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x92
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x6d4
	.4byte	0x48e
	.string	"Segment::~Segment"
	.4byte	0x4e0
	.string	"Point<int>::~Point"
	.4byte	0x4fc
	.string	"Segment::~Segment"
	.4byte	0x55e
	.string	"Point<int>::~Point"
	.4byte	0x5c1
	.string	"Segment::Segment"
	.4byte	0x64c
	.string	"Segment::Segment"
	.4byte	0x0
	.section	.debug_pubtypes,"",@progbits
	.4byte	0x2e
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x6d4
	.4byte	0x19d
	.string	"Point"
	.4byte	0x25
	.string	"Segment"
	.4byte	0x19d
	.string	"Point"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	.LBB97
	.4byte	.LBE97
	.4byte	0x0
	.4byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"operator-"
.LASF1:
	.string	"next"
.LASF31:
	.string	"operator/"
.LASF24:
	.string	"operator+="
.LASF34:
	.string	"operator*="
.LASF17:
	.string	"_vptr.Point"
.LASF0:
	.string	"start"
.LASF40:
	.string	"this"
.LASF43:
	.string	"/home/pete/code/liiner/src/Segment.cpp"
.LASF27:
	.string	"_ZN5PointIiEmIERS0_"
.LASF9:
	.string	"getStart"
.LASF11:
	.string	"setNext"
.LASF18:
	.string	"Point"
.LASF8:
	.string	"_ZN7Segment11getPreviousEv"
.LASF37:
	.string	"operator/="
.LASF38:
	.string	"_ZN5PointIiEdVEd"
.LASF6:
	.string	"getPrevious"
.LASF19:
	.string	"~Point"
.LASF45:
	.string	"_ZN5PointIiEdVEi"
.LASF36:
	.string	"_ZN5PointIiEmLEi"
.LASF39:
	.string	"double"
.LASF2:
	.string	"previous"
.LASF33:
	.string	"_ZN5PointIiEdvEi"
.LASF16:
	.string	"_vptr.Segment"
.LASF44:
	.string	"__vtbl_ptr_type"
.LASF15:
	.string	"Point<int>"
.LASF32:
	.string	"_ZN5PointIiEdvEd"
.LASF14:
	.string	"_ZN7Segment6getEndEv"
.LASF3:
	.string	"Segment"
.LASF26:
	.string	"operator-="
.LASF5:
	.string	"getNext"
.LASF10:
	.string	"_ZN7Segment8getStartEv"
.LASF7:
	.string	"_ZN7Segment7getNextEv"
.LASF12:
	.string	"getEnd"
.LASF28:
	.string	"operator*"
.LASF20:
	.string	"operator+"
.LASF21:
	.string	"_ZN5PointIiEplERS0_"
.LASF13:
	.string	"_ZN7Segment7setNextEPS_"
.LASF35:
	.string	"_ZN5PointIiEmLEd"
.LASF29:
	.string	"_ZN5PointIiEmlEd"
.LASF41:
	.string	"__in_chrg"
.LASF4:
	.string	"~Segment"
.LASF42:
	.string	"GNU C++ 4.5.1"
.LASF23:
	.string	"_ZN5PointIiEmiERS0_"
.LASF30:
	.string	"_ZN5PointIiEmlEi"
.LASF25:
	.string	"_ZN5PointIiEpLERS0_"
	.ident	"GCC: (devkitPPC release 22) 4.5.1"
