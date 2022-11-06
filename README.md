# dotfiles-linux

Dotfiles for my Linux VM, Fedora.

## Instructions

1. Create a new SSH key following the instructions in [generating a new SSH key and adding it to the ssh-agent](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

   ```bash
   ssh-keygen -t ed25519 -C "my-email@example.com"
   ```

   ```bash
   eval "$(ssh-agent -s)"
   ```

   ```bash
   ssh-add ~/.ssh/id_ed25519
   ```

2. Clone this repository.

   ```bash
   git clone git@github.com:lwschan/dotfiles-linux.git $HOME/.dotfiles
   ```

3. Update `./dotfiles/git/.gitconfig` and `./dotfiles/ssh/allowed_signers` with the new SSH key.

4. Initialize the submodules for the repository.

   ```bash
   git submodule update --init --recursive
   ```

5. Make git ignore executable file changes.

   ```bash
   git config core.filemode false
   ```

6. Make all scripts executable.

   ```bash
   chmod +x **/*.sh
   ```

7. Execute the `start.sh` script.

   ```bash
   ./start.sh
   ```

8. Execute the `install.sh` script.

   ```bash
   ./install.sh
   ```

9. Execute the `stow.sh` script.

   ```bash
   ./stow.sh
   ```
