/*
# _____     ___ ____     ___ ____
#  ____|   |    ____|   |        | |____|
# |     ___|   |____ ___|    ____| |    \    PS2DEV Open Source Project.
#-----------------------------------------------------------------------
# Copyright 2001-2004, ps2dev - http://www.ps2dev.org
# Licenced under Academic Free License version 2.0
# Review ps2sdk README & LICENSE files for further details.
#
# Module Manager Functions.
*/

	.text
	.set	noreorder


/* ############################### MODLOAD STUB ####### */
/* # Added by Sjeep, 28th March 2002                  # */

	.local	modload_stub
modload_stub:
	.word	0x41e00000
	.word	0
	.word	0x00000101
	.ascii	"modload\0"
	.align	2

	.globl	ReBootStart			# 004
ReBootStart:
	jr	$31
	li	$0, 0x04

	.globl	LoadModuleAddress			# 005
LoadModuleAddress:
	jr      $31
	li      $0, 0x05

	.globl	LoadModule				# 006
LoadModule:
	jr      $31
	li      $0, 0x06

	.globl	LoadStartModule			# 007
LoadStartModule:
	jr      $31
	li      $0, 0x07

	.globl	StartModule				# 008
StartModule:
	jr      $31
	li      $0, 0x08

	.globl	LoadModuleBufferAddress		# 009
LoadModuleBufferAddress:
	jr      $31
	li      $0, 0x09

	.globl	LoadModuleBuffer			# 010
LoadModuleBuffer:
	jr      $31
	li      $0, 0x0A

	.globl	SetSecrmanCallbacks		# 012
SetSecrmanCallbacks:
	jr      $31
	li      $0, 0x0C

	.globl	SetCheckKelfPathCallback	# 013
SetCheckKelfPathCallback:
	jr      $31
	li      $0, 0x0D

	.word	0
	.word	0
