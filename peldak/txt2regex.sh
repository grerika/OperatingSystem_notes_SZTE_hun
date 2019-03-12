 #!/bin/bash

# Peldaprogram a BASH verziojanak megallapitasara
# Forras: txt2regex.sh - Regular Expressions "wizard" in bash2 builtins
# http://conectiva.com.br/~aurelio/programas/bash/txt2regex


case "$BASH_VERSION" in
  4.0[4-9]*|4.[1-9]*): ;;
  *)echo "bash version >=4.04 required..."; exit 1 ;;
esac
