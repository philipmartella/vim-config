" Normal mode
"let s:N1 = [ '#ffffff' , '#5f00af' , 15 , 55  ]
let s:N1 = [ '#ffffff' , '#662441' , 15 , 91  ]
let s:N2 = [ '#ffffff' , '#875fd7' , 15 , 98  ]
let s:N3 = [ '#ffffff' , '#121212' , 15 , 91  ]

" Insert mode
let s:I1 = [ '#ffffff' , '#005fff' , 15 , 33  ]
let s:I2 = [ '#ffffff' , '#00afff' , 15 , 39  ]
let s:I3 = [ '#ffffff' , '#121212' , 15 , 91  ]

" Visual mode
let s:V1 = [ '#ffffff' , '#ff5f00' , 15 , 202 ]
let s:V2 = [ '#ffffff' , '#ffaf00' , 233 , 214 ]
let s:V3 = [ '#ffffff' , '#121212' , 15 , 91  ]

" Replace mode
let s:R1 = [ '#ffffff' , '#ff0000' , 15 , 196 ]
let s:R2 = [ '#ffffff' , '#ff5f5f' , 15 , 203 ]
let s:R3 = [ '#ffffff' , '#121212' , 15 , 91  ]

let g:airline#themes#fleet#palette = {}
let g:airline#themes#fleet#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#fleet#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#fleet#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#fleet#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Inactive mode
let s:IN1 = [ '#9e9e9e' , '#626262' , 247 , 7 ]
let s:IN2 = [ '#ffffff' , '#121212' , 15  , 53 ]

let s:IA = [ s:IN1[1] , s:IN2[1] , s:IN1[3] , s:IN2[3] , '' ]
let g:airline#themes#fleet#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 =  [ '#ffffff' , '#5f00af' , 15 , 55 ]
let s:CP2 =  [ '#ffffff' , '#875fd7' , 15 , 98 ]
let s:CP3 =  [ '#5f00af' , '#ffffff' , 55 , 15 ]

let g:airline#themes#fleet#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

" Tabline
let g:airline#themes#fleet#palette.tabline = {
	\ 'airline_tabsel': ['#262626', '#005faf', 235, 25, 'bold'],
	\ 'airline_tabtype': ['#262626', '#5faf00', 235, 70, 'bold'],
	\ 'airline_tabmod': ['#262626', '#df0000', 235, 160, 'bold'],
	\ 'airline_tabmod_unsel': ['#df0000', '#444444', 160, 238],
	\ 'airline_tab_right': ['#bcbcbc', '#444444', 250, 238],
	\ 'airline_tabsel_right': ['#262626', '#5faf00', 235, 70, 'bold'],
	\ 'airline_tabmod_right': ['#262626', "#df8700", 235, 172, 'bold'],
	\ 'airline_tabmod_unsel_right': ['#df0000', '#444444', 160, 238]}
