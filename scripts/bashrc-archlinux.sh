if command -v pacman &> /dev/null; then
  alias install='pacman -S'
  alias uninstall='pacman -Rsn'
  alias listunused='pacman -Qdtq'
  alias aurinst='yay -S'
fi
