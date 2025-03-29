# Define the build script
BUILD_SCRIPT = sh scripts/build.sh
RUN_SCRIPT = sh scripts/run.sh

# Default target (runs if no target is specified)
all:
	@echo "Building img..."
	@$(BUILD_SCRIPT) all
	@echo "Done!..."
# Build only the bootloader
bootloader:
	@$(BUILD_SCRIPT) bootloader

# Build only the kernel
kernel:
	@$(BUILD_SCRIPT) kernel

# Build only the floppy image
floppy:
	@$(BUILD_SCRIPT) floppy

# Run the floppy image in QEMU
run:
	@echo "Running the OS in QEMU..."
	@$(RUN_SCRIPT)

r:run

# Clean the build directory
clean:
	@$(BUILD_SCRIPT) clean

# Show available commands
help:
	@echo "Available targets:"
	@echo "  make all        - Build bootloader, kernel, and floppy"
	@echo "  make bootloader - Build only the bootloader"
	@echo "  make kernel     - Build only the kernel"
	@echo "  make floppy     - Create the floppy disk image"
	@echo "  make run        - Run the OS in QEMU"
	@echo "  make clean      - Clean the build directory"

