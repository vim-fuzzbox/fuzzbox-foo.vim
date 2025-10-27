vim9script

import autoload 'fuzzbox/selector.vim'

def Preview(wid: number, result: string)
    if wid == -1
        # preview window disabled
        return
    endif
    popup_settext(wid, "Press enter to select " .. result)
enddef

def Select(wid: number, result: string)
    echow "You selected " .. result
enddef

def Close(wid: number)
    echow "Closed foo selector"
enddef

export def Start(opts: dict<any> = {})
    opts.prompt_title = has_key(opts, 'prompt_title') ? opts.prompt_title : 'Fuzzy Foo'

    selector.Start(['foo.js', 'bar.json', 'baz.jsx'], extend(opts, {
        devicons: true,
        dropdown: true,
        preview_cb: Preview,
        select_cb: Select,
        close_cb: Close
    }))
enddef
