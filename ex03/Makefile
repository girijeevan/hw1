CROSS_COMPILE ?= arm-none-eabi

AOPS = --warn --fatal-warnings -g
COPS = -Wall -Werror -g -O2 -nostdlib -nostartfiles -ffreestanding 

hw00.bin : hw00.s hw00_memmap
	$(CROSS_COMPILE)-as $(AOPS) hw00.s -o hw00.o
	$(CROSS_COMPILE)-ld hw00.o -T hw00_memmap -o hw00.elf
	$(CROSS_COMPILE)-objdump -D hw00.elf > hw00.list
	$(CROSS_COMPILE)-objcopy hw00.elf -O binary hw00.bin


# run with: qemu-system-arm -S -s -M versatilepb -daemonize -m 128M -d in_asm,cpu,exec -kernel hw00.bin
# gdb-multiarch --batch --command=hw00.gdb
#
# qemu-system-arm launches the bare metal ARM processor emulator (along with some other devices, like a UART interface, etc.)
# the -M versatilepb indicates a particular machine mode
# the -m 128M gives the processor access to 128MB RAM
# the program is hw00.bin
# the gdb-multiarch enables a GDB connection to the QEMU system for debugging purposes
#
# to see if the given program works, once running, it should have launched a QEMU console window, then press control+alt+3, which opens the UART port

