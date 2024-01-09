O = Debug/
K = kernel/
U = user/
CC = gcc
AS = nasm
ASFLAGS = -f elf
CFLAGS = -m32 -I $Kinclude/ -I $Uinclude/ -nostdinc
LDFLAGS = -e main -Ttext 0xc0001500 -m elf_i386
objects = $Omain.o $Oinit_int.o $Okernel.o $Oput_char.o $Oput_str.o $Ointerrupt.o $Odebug.o $Ostring.o \
          $Obitmap.o $Osmalloc.o $Opool.o $Othread.o $Olist.o $Oswitch.o $Osemaphore.o $Oconsole.o \
          $Okeyboard_drive.o $Ocondition_var.o $Ocir_queue.o $Oproc.o $Osyscall.o $Ostdio.o $Oprocess.o \
          $Omalloc.o $Oide.o $Ostdio_kernel.o $Ofsys.o
cc_comd = gcc $(CFLAGS) -c $^ -o $@
as_comd = nasm $(ASFLAGS) $^ -o $@

main : $(objects)
	ld $^ $(LDFLAGS) -o $@
$Omain.o : main.c
	$(cc_comd)
$Oinit_int.o : $Kinterrupt/init_int.c
	$(cc_comd)
$Okernel.o : $Kinterrupt/kernel.s
	$(as_comd)
$Oput_char.o : $Klib/print/put_char.s
	$(as_comd)
$Oput_str.o : $Klib/print/put_str.c
	$(cc_comd)
$Ointerrupt.o : $Kinterrupt/interrupt.c
	$(cc_comd)
$Odebug.o : $Klib/debug/debug.c
	$(cc_comd)
$Ostring.o : $Klib/string/string.c
	$(cc_comd)
$Obitmap.o : $Klib/data_structure/bitmap.c
	$(cc_comd)
$Osmalloc.o : $Kmem_manger/smalloc.c
	$(cc_comd)
$Opool.o : $Kmem_manger/pool.c
	$(cc_comd)
$Olist.o : $Klib/data_structure/list.c
	$(cc_comd)
$Othread.o : $Kprocess/thread.c
	$(cc_comd)
$Oswitch.o : $Kprocess/switch.s
	$(as_comd)
$Osemaphore.o : $Kprocess/semaphore.c
	$(cc_comd)
$Oconsole.o : $Klib/print/console.c
	$(cc_comd)
$Okeyboard_drive.o : $Kdrive/keyboard_drive.c
	$(cc_comd)
$Ocondition_var.o : $Kprocess/condition_var.c
	$(cc_comd)
$Ocir_queue.o : $Klib/data_structure/cir_queue.c
	$(cc_comd)
$Oproc.o : $Kprocess/proc.c
	$(cc_comd)
$Osyscall.o : $Kinterrupt/syscall.c
	$(cc_comd)
$Ostdio.o : $Ustd/stdio.c
	$(cc_comd)
$Oprocess.o : $Ustd/process.c
	$(cc_comd)
$Omalloc.o : $Ustd/malloc.c
	$(cc_comd)
$Oide.o : $Kdrive/ide.c
	$(cc_comd)
$Ostdio_kernel.o : $Klib/print/stdio_kernel.c
	$(cc_comd)
$Ofsys.o : $Kfsys/fsys.c
	$(cc_comd)
.PHONY: clean out all disasm
clean:
	-rm $O*.o main
out:
	dd if=main of=/home/wu/Documents/bochsdbg/bochs-2.7/hd60M.img seek=7 bs=512 conv=notrunc
disasm:
	objdump -e -d main > main.s
run:
	cd /home/wu/Documents/bochsdbg/bochs-2.7 ; \
	if [ -f "hd60M.img.lock" ];\
	then rm hd60M.img.lock ; fi ;\
	if [ -f "hd80M.img.lock" ];\
	then rm hd80M.img.lock ; fi ;\
	bin/bochs -f bochsrc.disk ;\
	cd /home/wu/project/code;
all : main out disasm run

