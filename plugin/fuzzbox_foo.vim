vim9script

import autoload 'fuzzbox/launcher.vim'

command! FuzzyFoo launcher.Start('foo', { prompt_title: 'Fuzzy Foo' })
