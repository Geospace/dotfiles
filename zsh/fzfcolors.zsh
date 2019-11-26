# Base16 One Light
# Author: Daniel Pfeifer (http://github.com/purpleKarrot)

_gen_fzf_default_opts() {

local color00='#fafafa'
local color01='#f0f0f1'
local color02='#e5e5e6'
local color03='#a0a1a7'
local color04='#696c77'
local color05='#383a42'
local color06='#202227'
local color07='#090a0b'
local color08='#ca1243'
local color09='#d75f00'
local color0A='#c18401'
local color0B='#50a14f'
local color0C='#0184bc'
local color0D='#4078f2'
local color0E='#a626a4'
local color0F='#986801'

export FZF_DEFAULT_OPTS="
  --color=light
  --color=bg+:-1
  --color=spinner:$color0C,hl:$color0D
  --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C
  --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D
  --no-height --no-reverse
"

}

_gen_fzf_default_opts
