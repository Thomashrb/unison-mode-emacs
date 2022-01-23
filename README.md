# unison-mode-emacs
Very simple Unison syntax highlighting for Emacs

[![MELPA](https://melpa.org/packages/unisonlang-mode-badge.svg)](https://melpa.org/#/unisonlang-mode)


![Example](https://i.imgur.com/XaZnkfy.png)

## Commands

| Command | Keys | Description |
|---------|------|-------------|
| unisonlang-mode-add-fold | C-c C-f | Adds a fold above the cursor |
| unisonlang-mode-remove-fold | C-c C-d | Removes the fold above the cursor |

## Install

```elisp
(use-package unisonlang-mode
  :straight (unisonlang-mode :type git :host github :repo "thomashrb/unison-mode-emacs")
  :config
  (add-hook 'after-init-hook #'auto-revert-mode)
  :mode (("\\.u\\'" . unisonlang-mode)))
```

## Development

```bash
# ensure emacs
$ nix-shell

# start blank emacs, evaluate unisonlang-mode and open unison source file
$ emacs --no-init-file --load unisonlang-mode.el --file src/unison/test.u
```

### Run tests

```bash
$ emacs -batch -l ert -l unison-font-lock-regression-tests.el -f ert-run-tests-batch-and-exit
```
