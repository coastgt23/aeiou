set shell := ["powershell.exe", "-NoLogo", "-Command"]

help:
    just --list

alias new-pkg := new-package
alias new-worker := gen
alias up := update
alias i := install

install:
    pnpm install --child-concurrency=10

check *args:
    bun runx check {{args}}

fix *args:
    bun runx fix {{args}}

test *args:
    bun vitest {{args}}

build *args:
    bun turbo build {{args}}

dev *args:
    bun runx dev {{args}}

preview:
    bun run preview

deploy *args:
    bun turbo deploy {{args}}

migrate *args:
    bun turbo migrate {{args}}

gen *args:
    bun turbo gen {{args}}

new-package *args:
    bun turbo gen new-package {{args}}

update *args:
    bun runx update {{args}}

runx *args:
    bun runx {{args}}

admin *args:
    bun runx admin {{args}}