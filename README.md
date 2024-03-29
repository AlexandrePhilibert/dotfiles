# Intalling the dotfiles

```
curl https://raw.githubusercontent.com/AlexandrePhilibert/dotfiles/main/scripts/config-init | bash
```

## LSP

### Typescript

```
pnpm add -g typescript typescript-language-server
```

### Svelte

```
pnpm add -g svelte-language-server
```

### Rust

```
curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.cargo/bin/rust-analyzer
chmod +x ~/.cargo/bin/rust-analyzer
```

### Go

```
 go install golang.org/x/tools/gopls@latest
```

## Prettier

For prettierd:

```
pnpm add -g @fsouza/prettierd
```

For prettier:

```
pnpm add -g prettier
```
