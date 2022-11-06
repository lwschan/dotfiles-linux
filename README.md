# dotfiles-linux

Dotfiles for my Linux VM, Fedora.

## Instructions

1. Initialize the submodules for the repository.

   ```bash
   git submodule update --init --recursive
   ```

2. Make git ignore executable file changes.

   ```bash
   git config core.filemode false
   ```

3. Make all scripts executable.

   ```bash
   chmod +x **/*.sh
   ```

4. Execute the `start.sh` script.

   ```bash
   ./start.sh
   ```

5. Execute the `install.sh` script.

   ```bash
   ./install.sh
   ```

6. Execute the `stow.sh` script.

   ```bash
   ./stow.sh
   ```
