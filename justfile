default:
    just --list

pre-publish:
  npx bumpp --no-tag --no-push --no-commit && pnpm run build && cd dist && npx publint

publish:
  cd dist && NPM_TOKEN=$(op read "op://Development/kr5vz4b3jo2vjxw4rbvjg2xk6e/token") pnpm publish --no-git-checks

setup:
  pnpm install

build:
  pnpm run build
