# sup yarn
# https://yarnpkg.com

if (( $+commands[pnpm] ))
then
  export PATH="$PATH:`pnpm bin`"
fi
