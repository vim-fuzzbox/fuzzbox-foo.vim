vim9script

import autoload 'fuzzbox/launcher.vim'

command! -nargs=? FuzzyFoo launcher.Start('foo', { prompt_title: 'Fuzzy Foo' })
