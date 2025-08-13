vim9script

import autoload 'fuzzbox/selector.vim'

def Preview(wid: number, result: string)
    var msg = "Press enter to select " .. result
    if wid == -1
        echo msg
    else
        popup_settext(wid, msg)
    endif
enddef

def Select(wid: number, result: string)
    echow "You selected " .. result
enddef

def Close(wid: number)
    echow "Closed foo selector"
enddef

export def Start(opts: dict<any> = {})
    selector.Start(['foo.js', 'bar.json', 'baz.jsx'], extend(opts, {
        devicons: true,
        dropdown: true,
        preview_cb: Preview,
        select_cb: Select,
        close_cb: Close
    }))
enddef
