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
let s:tundra_base1 = "#202e3c"
let s:tundra_base2 = "#374757"
let s:tundra_base3 = "#506274"
let s:tundra_base4 = "#6a7e93"
let s:tundra_base5 = "#929aa3"
let s:tundra_base6 = "#b9b7b2"
let s:tundra_base7 = "#e1d5c2"
let s:tundra_base8 = "#f0eae1"

let s:tundra_red = "#c15642"
let s:tundra_orange = "#d78348"
let s:tundra_yellow ="#e5b059"
let s:tundra_chartreuse = "#a3b057"
let s:tundra_green = "#43854d"
let s:tundra_spring_green = "#068672"
let s:tundra_cyan = "#0e848c"
let s:tundra_azure = "#0f81a3"
let s:tundra_blue = "#3e7bb6"
let s:tundra_violet = "#7b6eb3"
let s:tundra_magenta = "#a95c9a"
let s:tundra_rose = "#c25071"

let s:tundra_light_red = "#f9856d"
let s:tundra_light_orange = "#f9a974"
let s:tundra_light_yellow = "#fcc97c"
let s:tundra_light_chartreuse = "#c2ce73"
let s:tundra_light_green = "#72b57a"
let s:tundra_light_spring-green = "#4eb7a0"
let s:tundra_light_cyan = "#52b4bd"
let s:tundra_light_azure = "#56b0d4"
let s:tundra_light_blue = "#73a9e8"
let s:tundra_light_violet = "#ab9ce5"
let s:tundra_light_magenta = "#dc8bcb"
let s:tundra_light_rose = "#f880a0"

let s:tundra_dark_red = "#9e4130"
let s:tundra_dark_orange = "#ac6532"
let s:tundra_dark_yellow = "#b6893d"
let s:tundra_dark_chartreuse = "#7f8a3d"
let s:tundra_dark_green = "#306a3a"
let s:tundra_dark_spring-green = "#096b5a"
let s:tundra_dark_cyan = "#036970"
let s:tundra_dark_azure = "#006783"
let s:tundra_dark_blue = "#236297"
let s:tundra_dark_violet = "#615692"
let s:tundra_dark_magenta = "#8a467d"
let s:tundra_dark_rose = "#9f3c5a"

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
let s:tundra_magenta_term = "5"
let s:tundra_cyan_term = "6"
let s:tundra_light_red_term = "9"
let s:tundra_light_green_term = "10"
let s:tundra_yellow_term = "11"
let s:tundra_light_blue_term = "12"
let s:tundra_light_magenta_term = "13"
let s:tundra_light_cyan_term = "14"

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
