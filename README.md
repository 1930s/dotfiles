# dotfiles
VimScripts for Haskell &amp; Purescript dev

![](.vim/screenshots/ScreenShot1.png)


### Features:

#### Run Repl/Ghci function calls in the code buffer (Haskell & Purescript):

Run `gei` ("go evaluate insert") on a (commented) expression (e.g. function call):

```
-- getDog14 andr17
```
The result of the evaluation is inserted below:
```
-- Dog {dogsName = DogName "Suslik", dogsAddress = Address "Berlin"}
```
See `ReplEvalExpr_Insert` in `.vimrc` and `PursEval` in `.vim/utils/termin1.vim`

### Import Haskell identifiers using Hoogle and Hsimport:
1. Use `gsd` ("go search docs") on a missing identifier or run (e.g.) `:Hoogle replicateM`/ or `:Hoogle (Applicative m) ⇒ Int → m a → m [a]`
2. In the Hoogle list of available identifiers (see screenshot above), go to the line/indentifier you want to import and type `<leader>ii`. Confirm the identifier has been added to the import section of your source file.
  
See `HoogleImportIdentifier` in `.vimrc`

#### Syntax highlight and auto-expand/close the quickfix list
See `QuickfixRefeshStyle` in `.vimrc`



