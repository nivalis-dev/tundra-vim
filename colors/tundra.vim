" @author Stefan Peterson

if version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

if !(has("termguicolors") && termguicolors) && !has("gui_running") && &t_Co != 256
  finish
endif

let g:colors_name = "tundra"
let s:tundra_version="0.1.0"

" ##########
"  Pallette
" ##########

let s:tundra_base0 = "#081723"
let s:tundra_base1 = "#1f2e3c"
let s:tundra_base2 = "#374758"
let s:tundra_base3 = "#506274"
let s:tundra_base4 = "#6a7e93"
let s:tundra_base5 = "#929aa3"
let s:tundra_base6 = "#b9b7b2"
let s:tundra_base7 = "#e1d5c2"
let s:tundra_base8 = "#f0eae1"

let s:tundra_red = "#c15642"
let s:tundra_vermilion = "#d17345"
let s:tundra_orange = "#dc914c"
let s:tundra_yellow = "#e5b059"
let s:tundra_olive = "#afa84a"
let s:tundra_moss_green = "#7b9c49"
let s:tundra_green = "#468d51"
let s:tundra_teal = "#008e83"
let s:tundra_azure = "#0088aa"
let s:tundra_blue = "#3e7bb6"
let s:tundra_violet = "#8c68ad"
let s:tundra_purple = "#bd527f"

let s:tundra_light_red = "#f9856d"
let s:tundra_light_vermilion = "#ff9f6e"
let s:tundra_light_orange = "#ffba72"
let s:tundra_light_yellow = "#ffd57c"
let s:tundra_light_olive = "#dad070"
let s:tundra_light_moss_green = "#a6c872"
let s:tundra_light_green = "#74bd7d"
let s:tundra_light_teal = "#18beb1"
let s:tundra_light_azure = "#00b8dc"
let s:tundra_light_blue = "#73a9e8"
let s:tundra_light_violet = "#bd96df"
let s:tundra_light_purple = "#f282af"

let s:tundra_dark_red = "#842f21"
let s:tundra_dark_vermilion = "#904723"
let s:tundra_dark_orange = "#985f27"
let s:tundra_dark_yellow = "#9f7630"
let s:tundra_dark_olive = "#757025"
let s:tundra_dark_moss_green = "#4d6826"
let s:tundra_dark_green = "#215c2d"
let s:tundra_dark_teal = "#005d54"
let s:tundra_dark_azure = "#005874"
let s:tundra_dark_blue = "#134e7d"
let s:tundra_dark_violet = "#5b3f76"
let s:tundra_dark_purple = "#812c52"

let s:tundra_base0_term = "0"
let s:tundra_base1_term = "NONE"
let s:tundra_base3_term = "8"
let s:tundra_base5_term = "7"
let s:tundra_base7_term = "NONE"
let s:tundra_base8_term = "15"
let s:tundra_red_term = "1"
let s:tundra_green_term = "2"
let s:tundra_orange_term = "3"
let s:tundra_blue_term = "4"
let s:tundra_purple_term = "5"
let s:tundra_teal_term = "6"
let s:tundra_light_red_term = "9"
let s:tundra_light_green_term = "10"
let s:tundra_yellow_term = "11"
let s:tundra_light_blue_term = "12"
let s:tundra_light_purple_term = "13"
let s:tundra_light_teal_term = "14"

" ####
"
" ####

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  let cmd = ""
  if a:guifg != ""
    let cmd = cmd . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    let cmd = cmd . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    let cmd = cmd . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    let cmd = cmd . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    let cmd = cmd . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", "underline", "")
  endif
  if a:guisp != ""
    let cmd = cmd . " guisp=" . a:guisp
  endif
  if cmd != ""
    exec "hi " . a:group . cmd
  endif
endfunction

" ###########
"  Interface
" ###########

set background=dark

call s:hi("Bold", "", "", "", "", "bold", "")
call s:hi("Italic", "", "", "", "", "italic", "")
call s:hi("Underline", "", "", "", "", "underline", "")

call s:hi("ColorColumn", "", s:tundra_base1, "NONE", s:tundra_base1_term, "", "") 
call s:hi("Cursor", s:tundra_base3, s:tundra_base5, s:tundra_base3_term, s:tundra_base5_term, "", "")
call s:hi("CursorLine", "", s:tundra_base2, "NONE", s:tundra_base3, "", "")
call s:hi("Error", s:tundra_base1, s:tundra_red, s:tundra_base0_term, s:tundra_red_term, "", "")
call s:hi("iCurosr", s:tundra_base3, s:tundra_base5, "NONE", "NONE", "", "")
call s:hi("LineNr", s:tundra_base3, s:tundra_base2, s:tundra_base3_term, "NONE", "", "")
