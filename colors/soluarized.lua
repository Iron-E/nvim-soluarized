-- This file should be edited by the user. Read the instructions of each section and then edit them as desired.

--[[ Highlite, a Neovim colorscheme template.
	* Author:     Iron-E (https://github.com/Iron-E)
	* Repository: https://github.com/Iron-E/nvim-soluarized

	Initially forked from vim-rnb, a Vim colorsheme template:
	* Author:        Romain Lafourcade (https://github.com/romainl)
	* Canonical URL: https://github.com/romainl/vim-rnb
]]

--[[ Introduction
	This template is designed to help Neovim users create their own colorschemes without much effort.

	You will not need any additional tooling to run this file. Just open it in Neovim and follow the instructions.

	The process is divided in five steps:
	1. Rename the template,
	2. Edit your colorscheme's information,
	3. Define your colors,
	4. Define your highlight groups and links, and
	5. Sourcing your colorscheme.
]]

--[[ Step 1: Renaming
	* If this file is distributed with a colorscheme it's probably already named correctly
	  and you can skip this step.
	* If you forked/cloned/copied this repository to create your own colorscheme, you will have to
	  rename this template to match the name of your colorscheme.

	NOTE: Neovim doesn't really care about whitespace in the name of the colorscheme but it does for
	filenames so make sure your filename doesn't have any whitespace character.

	| colorscheme name  | module name | template filename |
	|:-----------------:|:-----------:|:-----------------:|
	| foobar            | foobar      | foobar.lua        |
	| foo-bar           | foo_bar     | foo_bar.lua       |
	| foo bar           | foo_bar     | foo_bar.lua       |
	| foo_bar           | foo_bar     | foo_bar.lua       |

	Rename the following files:
	* `colors/soluarized.vim`
	* `lua/soluarized.lua`

	Where 'soluarized' is the name of your colorscheme.

	TIP: If you are on a Unix-based system (or have WSL on Windows) you can use the setup script at the root of this repo.
	     See the README for more details.
]]


--[[ Step 2: Information
	In this step you will define information that helps Neovim process:

	1. How users access your colorscheme;
	2. How your colorscheme should be rendered.
]]

-- This is the name of your colorscheme which will be used as per |g:colors_name|.
vim.g.colors_name = 'soluarized'

--[[ Step 3: Colors
	Next you will define all of the colors that you will use for the color scheme.

	Each one should be made up of three parts:

```lua
	<color name> = { -- Give each color a distinctive name.
		'#<hex color code>', -- Hexadecimal color used in GVim/MacVim or 'NONE'.
		<16-bit color code>, -- Integer 0–255 used by terminals supporting 256 colors or 'NONE'.
		'<ANSI color name>'  -- color name used by less capable color terminals, can be 'darkred',
		                       'red', 'darkgreen', 'green', 'darkyellow', 'yellow', 'darkblue',
		                       'blue', 'darkmagenta', 'magenta', 'black', 'darkgrey', 'grey',
		                       'white', or 'NONE'
	}
```

	If your colors are defined correctly, the resulting colorscheme is guaranteed
	to work in GVim (Windows/Linux), MacVim (MacOS), and any properly set up terminal emulator.

	NOTE: |Replace-mode| will probably be useful here.
]]

local back    = {'#002b36', 235, 8}
local base0   = {'#839496', 246, 12}
local base00  = {'#657b83', 66, 11}
local base01  = {'#586e75', 242, 10}
local base02  = {'#073642', 236, 0}
local base1   = {'#93a1a1', 247, 14}
local base2   = {'#eee8d5', 254, 7}
local base3   = {'#fdf6e3', 230, 15}
local blue    = {'#268bd2', 32, 4}
local cyan    = {'#2aa198', 37, 6}
local green   = {'#859900', 106, 2}
local magenta = {'#d33682', 162, 5}
local orange  = {'#cb4b16', 166, 9}
local red     = {'#dc322f', 160, 1}
local violet  = {'#6c71c4', 61, 13}
local yellow  = {'#b58900', 136, 3}

local back_light    = {'#fdf6e3', 230, 15}
local base0_light   = {'#657b83', 66, 11}
local base00_light  = {'#839496', 246, 12}
local base01_light  = {'#93a1a1', 247, 14}
local base02_light  = {'#eee8d5', 254, 7}
local base1_light   = {'#586e75', 242, 10}
local base2_light   = {'#073642', 236, 0}
local base3_light   = {'#002b36', 235, 8}
local blue_light    = {'#268bd2', 32, 4}
local cyan_light    = {'#2aa198', 37, 6}
local green_light   = {'#859900', 106, 2}
local magenta_light = {'#d33682', 162, 5}
local orange_light  = {'#cb4b16', 166, 9}
local red_light     = {'#dc322f', 160, 1}
local violet_light  = {'#6c71c4', 61, 13}
local yellow_light  = {'#b58900', 136, 3}

--[[ Step 4: highlights
	You can define highlight groups like this:

```lua
	<highlight group name> = {
		-- The color for the background, `NONE`, `FG` or `BG`
		bg = <color>,

		-- The color for the foreground, `NONE`, `FG` or `BG`
		fg = <color>

		-- The |highlight-blend| value, if one is desired.
		[, blend = <integer>]

		-- Style can be 'bold', 'italic', and more. See |attr-list| for more information.
		-- It can also have a color, and/or multiple <cterm>s.
		[, style = <cterm>|{<cterm> (, <cterm>) [color=<color>]} ]
	}
```

	You can also link one highlight group to another:

```lua
	<highlight group name> = '<highlight group name>'
```
	____________________________________________________________________________

	Here is an example to define `SpellBad` and then link some new group
	`SpellWorse` to it:

```lua
	SpellBad = { -- ← name of the highlight group
		bg=NONE, -- background color
		fg=red, -- foureground color
		style={ -- the style
			'undercurl', -- undercurl (squiggly line)
			color=red -- the color of the undercurl
		}
	},
	SpellWorse = 'SpellBad'
```

	If you weren't satisfied with undercurl, and also wanted another effect, you can
	add another one below 'undercurl' and it will be applied as well:

```lua
	SpellBad = { -- ← name of the highlight group
		bg=NONE, -- background color
		fg=red, -- foureground color
		style={ -- the style
			'undercurl', -- undercurl (squiggly line)
			'standout'
			color=red -- the color of the undercurl
		}
	}
```
	____________________________________________________________________________

	If you want to create a colorscheme that is responsive to the user's
	'background' setting, you can specify special `light` and `dark` keys to
	define how each group should be highlighted in each case.

```lua
	SpellBad = {
		bg=NONE,
		dark={fg=white},
		light={fg=black},
		style={'undercurl', color=red}
	}
```

	Whenever the user changes their 'background' setting, the settings inside of
	whichever key is relevant will be loaded.
	____________________________________________________________________________

	You can add any custom highlight group to the standard list below but you
	shouldn't remove any if you want a working colorscheme. Most of them are
	described under |highlight-default|, some from |group-name|, and others from
	common syntax groups.  Both help sections are good reads.
	____________________________________________________________________________

	If you want to inherit a specific attribute of another highlight group, you
	can do the following:

```lua
	SpellBad = function(self)
		local inherited_style = self.SpellRare.style
		inherited_style.color = red

		return {
			bg=NONE,
			fg=NONE,
			style=inherited_style
		}
	end
```

	The function will be executed by |soluarized| and transformed into the
	expected result.
	____________________________________________________________________________

	NOTE: |Replace-mode| will probably be useful here.

	NOTE: /As long as you do not remove any highlight groups or colors/, you can
	      safely ignore any highlight groups that are `link`ed to others.

	      For example, programming languages almost exclusively link to the 1st
	      and 2nd sections, so as long as you define everything there you will
	      automatically be defining the rest of the highlights, which is one of
	      the benefits of using this template.
]]

--[[ DO NOT EDIT `BG` NOR `FG`. ]]
local BG = 'bg'
local FG = 'fg'
local NONE = {}

--[[ These are the ones you should edit. ]]
-- This is the only highlight that must be defined separately.
local highlight_group_normal =
{
	fg=base1_light, bg=back_light,
	dark={fg=base1, bg=back},
}

-- This is where the rest of your highlights should go.
local highlight_groups =
{
	--[[ 4.1. Text Analysis ]]
	Comment =
	{
		fg=base01_light, bg=NONE, style='italic',
		dark={fg=base01, bg=NONE, style='italic'},
	},
	NonText =
	{
		fg=orange_light, bg=NONE, style='bold',
		dark={fg=orange, bg=NONE, style='bold'},
	},
	EndOfBuffer =
	{
		fg=NONE, bg=NONE, style='NONE',
		dark={fg=NONE, bg=NONE, style='NONE'},
	},
	Whitespace  = 'NonText',

	--[[ 4.1.1. Literals]]
	Constant =
	{
		fg=cyan_light, bg=NONE, style='NONE',
		dark={fg=cyan, bg=NONE, style='NONE'},
	},
	String = 'Constant',
	Character = 'Constant',
	Number  = 'Constant',
	Boolean = 'Constant',
	Float   = 'Constant',

	--[[ 4.1.2. Identifiers]]
	Identifier =
	{
		fg=blue_light, bg=NONE, style='NONE',
		dark={fg=blue, bg=NONE, style='NONE'},
	},
	Function = 'Identifier',

	--[[ 4.1.3. Syntax]]
	Statement =
	{
		fg=green_light, bg=NONE, style='NONE',
		dark={fg=green, bg=NONE, style='NONE'},
	},
	Conditional = 'Statement',
	Repeat   = 'Statement',
	Label    = 'Statement',
	Operator = 'Statement',
	Keyword  = 'Statement',
	Exception = 'Statement',
	Noise = 'Delimiter',

	--[[ 4.1.4. Metatextual Information]]
	PreProc =
	{
		fg=orange_light, bg=NONE, style='NONE',
		dark={fg=orange, bg=NONE, style='NONE'},
	},
	Include = 'PreProc',
	Define = 'PreProc',
	Macro  = 'PreProc',
	PreCondit = 'PreProc',

	--[[ 4.1.5. Semantics]]
	Type =
	{
		fg=yellow_light, bg=NONE, style='NONE',
		dark={fg=yellow, bg=NONE, style='NONE'},
	},
	StorageClass = 'Type',
	Structure = 'Type',
	Typedef = 'Type',

	--[[ 4.1.6. Edge Cases]]
	Special =
	{
		fg=orange_light, bg=NONE, style='NONE',
		dark={fg=orange, bg=NONE, style='NONE'},
	},
	SpecialChar = 'Special',
	SpecialKey =
	{
		fg=orange_light, bg=NONE, style='reverse',
		dark={fg=orange, bg=NONE, style='reverse'},
	},
	Tag = 'Special',
	Delimiter = 'Special',
	SpecialComment = 'Special',
	Debug = 'Special',

	--[[ 4.1.7. Help Syntax]]
	Underlined =
	{
		fg=violet_light, bg=NONE, style='NONE',
		dark={fg=violet, bg=NONE, style='NONE'},
	},
	Ignore =
	{
		fg=NONE, bg=NONE, style='NONE',
		dark={fg=NONE, bg=NONE, style='NONE'},
	},
	Error =
	{
		fg=red_light, bg=base3_light, style={'bold','reverse'},
		dark={fg=red, bg=base3, style={'bold','reverse'}},
	},
	Todo =
	{
		fg=magenta_light, bg=NONE, style='bold',
		dark={fg=magenta, bg=NONE, style='bold'},
	},
	Hint =
	{
		fg=violet_light, bg=NONE, style='bold',
		dark={fg=violet, bg=NONE, style='bold'},
	},
	Info =
	{
		fg=cyan_light, bg=NONE, style={'undercurl',color=cyan_light},
		dark={fg=cyan, bg=NONE, style='undercurl',color=cyan},
	},
	Warning =
	{
		fg=yellow_light, bg=NONE, style={'undercurl',color=yellow_light},
		dark={fg=yellow, bg=NONE, style='undercurl',color=yellow},
	},

	--[[ 4.2... Editor UI  ]]
	--[[ 4.2.1. Status Line]]
	StatusLine =
	{
		fg=base02_light, bg=base2_light, style='reverse',
		dark={fg=base02, bg=base2, style='reverse'},
	},
	StatusLineNC =
	{
		fg=base02_light, bg=base1_light, style='reverse',
		dark={fg=base02, bg=base1, style='reverse'},
	},
	StatusLineTerm = 'StatusLine',
	StatusLineTermNC = 'StatusLineNC',

	--[[ 4.2.2. Separators]]
	VertSplit =
	{
		fg=base01_light, bg=base02_light, style='NONE',
		dark={fg=base01, bg=base02, style='NONE'},
	},
	TabLineSel =
	{
		fg=base2_light, bg=base02_light, style='NONE',
		dark={fg=base2, bg=base02, style='NONE'},
	},
	TabLine =
	{
		fg=base01_light, bg=base02_light, style='NONE',
		dark={fg=base01, bg=base02, style='NONE'},
	},
	TabLineFill =
	{
		fg=base01_light, bg=base02_light, style='NONE',
		dark={fg=base01, bg=base02, style='NONE'},
	},
	Title =
	{
		fg=yellow_light, bg=NONE, style='bold',
		dark={fg=yellow, bg=NONE, style='bold'},
	},

	--[[ 4.2.3. Conditional Line Highlighting]]
	Conceal =
	{
		fg=blue_light, bg=NONE, style='NONE',
		dark={fg=blue, bg=NONE, style='NONE'},
	},
	CursorLine =
	{
		fg=NONE, bg=base02_light, style='NONE',
		dark={fg=NONE, bg=base02, style='NONE'},
	},
	CursorLineNr =
	{
		fg=orange_light, bg=base02_light, style='bold',
		dark={fg=orange, bg=base02, style='bold'},
	},
	debugBreakpoint = 'ErrorMsg',
	debugPC = 'ColorColumn',
	LineNr  =
	{
		fg=base0_light, bg=base02_light,
		dark={fg=base0, bg=base02},
	},
	QuickFixLine = 'Search',
	Visual =
	{
		fg=base01_light, bg=back_light, style='reverse',
		dark={fg=base01, bg=back, style='reverse'},
	},
	VisualNOS =
	{
		fg=NONE, bg=base02_light, style='reverse',
		dark={fg=NONE, bg=base02, style='reverse'},
	},

	--[[ 4.2.4. Popup Menu]]
	Pmenu =
	{
		fg=base1_light, bg=base02_light, style='NONE',
		dark={fg=base1, bg=base02, style='NONE'},
	},
	PmenuSbar =
	{
		fg=NONE, bg=base01_light, style='NONE',
		dark={fg=NONE, bg=base01, style='NONE'},
	},
	PmenuSel =
	{
		fg=base2_light, bg=base00_light, style='NONE',
		dark={fg=base2, bg=base00, style='NONE'},
	},
	PmenuThumb =
	{
		fg=NONE, bg=base0_light, style='NONE',
		dark={fg=NONE, bg=base0, style='NONE'},
	},
	WildMenu =
	{
		fg=base2_light, bg=base02_light, style='reverse',
		dark={fg=base2, bg=base02, style='reverse'},
	},

	--[[ 4.2.5. Folds]]
	FoldColumn = {
		fg=base0_light, bg=base02_light,
		dark={fg=base0, bg=base02},
	},
	Folded =
	{
		fg=base0_light, bg=base02_light, style={'bold',color=back_light},
		dark={fg=base0, bg=base02, style={'bold',color=back}},
	},

	--[[ 4.2.6. Diffs]]
	DiffAdd =
	{
		fg=green_light, bg=NONE, style='reverse',
		dark={fg=green, bg=NONE, style='reverse'},
	},
	DiffChange =
	{
		fg=yellow_light, bg=NONE, style='reverse',
		dark={fg=yellow, bg=NONE, style='reverse'},
	},
	DiffDelete =
	{
		fg=red_light, bg=NONE, style='reverse',
		dark={fg=red, bg=NONE, style='reverse'},
	},
	DiffText =
	{
		fg=blue_light, bg=NONE, style='reverse',
		dark={fg=blue, bg=NONE, style='reverse'},
	},

	--[[ 4.2.7. Searching]]
	IncSearch =
	{
		fg=orange_light, bg=NONE, style='standout',
		dark={fg=orange, bg=NONE, style='standout'},
	},
	MatchParen =
	{
		fg=base3_light, bg=base02_light, style='bold',
		dark={fg=base3, bg=base02, style='bold'},
	},
	Search =
	{
		fg=yellow_light, bg=NONE, style='reverse',
		dark={fg=yellow, bg=NONE, style='reverse'},
	},

	--[[ 4.2.8. Spelling]]
	SpellBad =
	{
		fg=violet_light, bg=base3_light, style={'reverse','undercurl',color=red_light},
		dark={fg=violet, bg=base3, style={'reverse','undercurl',color=red}},
	},
	SpellCap =
	{
		fg=violet_light, bg=base3_light, style={'reverse','undercurl',color=red_light},
		dark={fg=violet, bg=base3, style={'reverse','undercurl',color=red}},
	},
	SpellLocal =
	{
		fg=yellow_light, bg=base3_light, style={'reverse','undercurl',color=red_light},
		dark={fg=yellow, bg=base3, style={'reverse','undercurl',color=red}},
	},
	SpellRare =
	{
		fg=cyan_light, bg=base3_light, style={'reverse','undercurl',color=red_light},
		dark={fg=cyan, bg=base3, style={'reverse','undercurl',color=red}},
	},

	--[[ 4.2.9. Conditional Column Highlighting]]
	ColorColumn =
	{
		fg=NONE, bg=base02_light, style='NONE',
		dark={fg=NONE, bg=base02, style='NONE'},
	},
	SignColumn =
	{
		fg=base0_light, bg=NONE, style='NONE',
		dark={fg=base0, bg=NONE, style='NONE'},
	},

	--[[ 4.2.10. Messages]]
	ErrorMsg =
	{
		fg=red_light, bg=base3_light, style='reverse',
		dark={fg=red, bg=base3, style='reverse'},
	},
	HintMsg  = 'Hint',
	InfoMsg  = 'Info',
	ModeMsg =
	{
		fg=blue_light, bg=NONE, style='NONE',
		dark={fg=blue, bg=NONE, style='NONE'},
	},
	MoreMsg =
	{
		fg=blue_light, bg=NONE, style='NONE',
		dark={fg=blue, bg=NONE, style='NONE'},
	},
	WarningMsg =
	{
		fg=orange_light, bg=NONE, style='bold',
		dark={fg=orange, bg=NONE, style='bold'},
	},
	Question =
	{
		fg=cyan_light, bg=NONE, style='bold',
		dark={fg=cyan, bg=NONE, style='bold'},
	},

	--[[ 4.2.11. LSP ]]
	LspDiagnosticsDefaultError = 'Error',
	LspDiagnosticsFloatingError = 'ErrorMsg',
	LspDiagnosticsSignError = 'LspDiagnosticsFloatingError',

	LspDiagnosticsDefaultWarning = 'Warning',
	LspDiagnosticsFloatingWarning = 'WarningMsg',
	LspDiagnosticsSignWarning = 'LspDiagnosticsFloatingWarning',

	LspDiagnosticsDefaultHint = 'Hint',
	LspDiagnosticsFloatingHint = 'HintMsg',
	LspDiagnosticsSignHint = 'LspDiagnosticsFloatingHint',

	LspDiagnosticsDefaultInformation = 'Info',
	LspDiagnosticsFloatingInformation = 'InfoMsg',
	LspDiagnosticsSignInformation = 'LspDiagnosticsFloatingInformation',

	LspDiagnosticsUnderlineError = 'CocErrorHighlight',
	LspDiagnosticsUnderlineHint  = 'CocHintHighlight',
	LspDiagnosticsUnderlineInfo  = 'CocInfoHighlight',
	LspDiagnosticsUnderlineWarning = 'CocWarningHighlight',

	--[[ 4.2.12. Cursor ]]
	Cursor =
	{
		fg=base3_light, bg=blue_light, style='NONE',
		dark={fg=base3, bg=blue, style='NONE'},
	},
	CursorIM =
	{
		fg=NONE, bg=FG, style='NONE',
		dark={fg=NONE, bg=FG, style='NONE'},
	},
	CursorColumn =
	{
		fg=NONE, bg=base02_light, style='NONE',
		dark={fg=NONE, bg=base02, style='NONE'},
	},
	TermCursor = 'Cursor',
	TermCursorNC =
	{
		fg=back_light, bg=base01_light, style='NONE',
		dark={fg=back, bg=base01, style='NONE'},
	},

	--[[ 4.2.13. Misc ]]
	Directory =
	{
		fg=blue_light, bg=NONE, style='NONE',
		dark={fg=blue, bg=NONE, style='NONE'},
	},

	--[[ 4.3. Programming Languages
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]
	--[[ 4.3.1. C ]]
	cConstant    = 'Constant',
	cCustomClass = 'Type',

	--[[ 4.3.2. C++ ]]
	cppSTLexception = 'Exception',
	cppSTLnamespace = 'String',

	--[[ 4.3.3 C# ]]
	csBraces = 'Delimiter',
	csClass  = 'Structure',
	csClassType = 'Type',
	csContextualStatement = 'Conditional',
	csEndColon = 'Delimiter',
	csGeneric  = 'Typedef',
	csInterpolation = 'Include',
	csInterpolationDelimiter = 'SpecialChar',
	csLogicSymbols  = 'Operator',
	csModifier = 'Keyword',
	csNew = 'Operator',
	csNewType = 'Type',
	csParens  = 'Delimiter',
	csPreCondit  = 'PreProc',
	csQuote = 'Delimiter',
	csRepeat  = 'Repeat',
	csStorage = 'StorageClass',
	csUnspecifiedStatement = 'Statement',
	csXmlTag = 'Define',
	csXmlTagName = 'Define',
	razorCode = 'PreProc',
	razorcsLHSMemberAccessOperator = 'Noise',
	razorcsRHSMemberAccessOperator = 'razorcsLHSMemberAccessOperator',
	razorcsStringDelimiter = 'razorhtmlValueDelimiter',
	razorcsTypeNullable = 'Special',
	razorcsUnaryOperatorKeyword = 'Operator',
	razorDelimiter = 'Delimiter',
	razorEventAttribute = 'PreCondit',
	razorFor  = 'razorIf',
	razorhtmlAttribute = 'htmlArg',
	razorhtmlAttributeOperator = 'Operator',
	razorhtmlTag = 'htmlTag',
	razorhtmlValueDelimiter = 'Delimiter',
	razorIf  = 'PreCondit',
	razorImplicitExpression = 'PreProc',
	razorLine = 'Constant',
	razorUsing = 'Include',

	--[[ 4.3.4. CSS ]]
	cssAtRule          = 'PreCondit',
	cssAttr            = 'Keyword',
	cssAttrComma       = 'Noise',
	cssAttrRegion      = 'Keyword',
	cssBraces          = 'Delimiter',
	cssClassName       = 'Identifier',
	cssClassNameDot    = 'Noise',
	cssFlexibleBoxAttr = 'cssAttr',
	cssFunctionComma   = 'Noise',
	cssImportant       = 'Exception',
	cssNoise           = 'Noise',
	cssProp            = 'Label',
	cssPseudoClass     = 'Special',
	cssPseudoClassId   = 'cssSelectorOp',
	cssSelectorOp      = 'Operator',
	cssTagName         = 'Structure',
	cssUnitDecorators  = 'Type',
	scssAmpersand      = 'Special',
	scssAttribute      = 'Noise',
	scssBoolean        = 'Boolean',
	scssDefault        = 'Keyword',
	scssElse           = 'scssIf',
	scssMixinName      = function(self)
		local super = self.cssClassName
		return
		{
			bg=super.bg, fg=super.fg, style='italic',
			dark={bg=super.dark.bg, fg=super.dark.fg, style='italic'},
		}
	end,
	scssIf             = 'PreCondit',
	scssInclude        = 'Include',
	scssSelectorChar   = 'Delimiter',
	scssDefinition     = 'PreProc',
	scssSelectorName   = 'Identifier',
	scssVariable       = 'Define',
	scssVariableAssignment = 'Operator',

	--[[ 4.3.5. Dart ]]
	dartLibrary = 'Statement',

	--[[ 4.3.6. dot ]]
	dotKeyChar = 'Character',
	dotType    = 'Type',

	--[[ 4.3.7. Go ]]
	goBlock    = 'Delimiter',
	goBoolean  = 'Boolean',
	goBuiltins = 'Operator',
	goField    = 'Identifier',
	goFloat    = 'Float',
	goFormatSpecifier = 'Character',
	goFunction = 'Function',
	goFunctionCall   = 'goFunction',
	goFunctionReturn = NONE,
	goMethodCall = 'goFunctionCall',
	goParamType  = 'goReceiverType',
	goPointerOperator = 'SpecialChar',
	goPredefinedIdentifiers = 'Constant',
	goReceiver     = 'goBlock',
	goReceiverType = 'goTypeName',
	goSimpleParams = 'goBlock',
	goType = 'Type',
	goTypeConstructor = 'goFunction',
	goTypeName  = 'Type',
	goVarAssign = 'Identifier',
	goVarDefs   = 'goVarAssign',

	--[[ 4.3.8. HTML ]]
	htmlArg    = 'Label',
	htmlBold   = {style='bold'},
	htmlTitle  = 'Title',
	htmlEndTag = 'htmlTag',
	htmlH1 = 'markdownH1',
	htmlH2 = 'markdownH2',
	htmlH3 = 'markdownH3',
	htmlH4 = 'markdownH4',
	htmlH5 = 'markdownH5',
	htmlH6 = 'markdownH6',
	htmlItalic  = {style='italic'},
	htmlSpecialTagName = 'Keyword',
	htmlTag  = 'Special',
	htmlTagN = 'Typedef',
	htmlTagName = 'Type',

	--[[ 4.3.9. Java ]]
	javaClassDecl = 'Structure',

	--[[ 4.3.10. JavaScript ]]
	jsFuncBlock   = 'Function',
	jsObjectKey   = 'Type',
	jsReturn      = 'Keyword',
	jsVariableDef = 'Identifier',

	--[[ 4.3.11. JSON ]]
	jsonBraces = 'luaBraces',
	jsonEscape = 'SpecialChar',
	jsonKeywordMatch = 'Operator',
	jsonNull   = 'Constant',
	jsonQuote  = 'Delimiter',
	jsonString = 'String',
	jsonStringSQError = 'Exception',

	--[[ 4.3.12. Lua ]]
	luaBraces   = 'Structure',
	luaBrackets = 'Delimiter',
	luaBuiltin  = 'Keyword',
	luaComma    = 'Delimiter',
	luaFuncArgName = 'Identifier',
	luaFuncCall = 'Function',
	luaFuncId   = 'luaNoise',
	luaFuncKeyword = 'Type',
	luaFuncName   = 'Function',
	luaFuncParens = 'Delimiter',
	luaFuncTable  = 'Structure',
	luaIn     = 'luaRepeat',
	luaLocal  = 'Type',
	luaNoise  = 'Delimiter',
	luaParens = 'Delimiter',
	luaSpecialTable = 'Structure',
	luaSpecialValue = 'Function',
	luaStringLongTag = function(self)
		local super = self.Delimiter
		return
		{
			bg=super.bg, fg=super.fg, style='italic',
			dark={super.dark.bg, fg=super.dark.fg, style='italic'},
		}
	end,

	--[[ 4.3.12. Make ]]
	makeCommands   = 'Statment',
	makeSpecTarget = 'Type',

	--[[ 4.3.13. Markdown ]]
	markdownH1 =
	{
		fg=red_light, style='bold',
		dark={fg=red},
	},
	markdownH2 =
	{
		fg=orange_light, style='bold',
		dark={fg=orange},
	},
	markdownH3 =
	{
		fg=yellow_light, style='bold',
		dark={fg=yellow},
	},
	markdownH4 =
	{
		fg=green_light, style='bold',
		dark={fg=green},
	},
	markdownH5 =
	{
		fg=cyan_light, style='bold',
		dark={fg=cyan},
	},
	markdownH6 =
	{
		fg=violet_light, style='bold',
		dark={fg=violet},
	},
	mkdBold = 'Ignore',
	mkdCode = 'Keyword',
	mkdCodeDelimiter = 'mkdBold',
	mkdCodeStart = 'mkdCodeDelimiter',
	mkdCodeEnd = 'mkdCodeStart',
	mkdHeading = 'Delimiter',
	mkdItalic  = 'mkdBold',
	mkdLineBreak = 'NonText',
	mkdListItem  = 'Special',
	mkdRule = function(self)
		local ignore = self.Ignore
		local delimiter = self.Delimiter
		return
		{
			fg=ignore.fg, style={'underline', color=delimiter.fg},
			dark={fg=ignore.dark.fg, style={'underline', color=delimiter.dark.fg}},
		}
	end,

	--[[ 4.3.20. Python ]]
	pythonBrackets    = 'Delimiter',
	pythonBuiltinFunc = 'Operator',
	pythonBuiltinObj  = 'Type',
	pythonBuiltinType = 'Type',
	pythonClass       = 'Structure',
	pythonClassParameters = 'pythonParameters',
	pythonDecorator  = 'PreProc',
	pythonDottedName = 'Identifier',
	pythonError     = 'Error',
	pythonException = 'Exception',
	pythonInclude   = 'Include',
	pythonIndentError = 'pythonError',
	pythonLambdaExpr  = 'pythonOperator',
	pythonOperator = 'Operator',
	pythonParam    = 'Identifier',
	pythonParameters = 'Delimiter',
	pythonSelf = 'Statement',
	pythonSpaceError = 'pythonError',
	pythonStatement  = 'Statement',

	--[[ 4.3.21. Ruby ]]
	rubyClass  = 'Structure',
	rubyDefine = 'Define',
	rubyInterpolationDelimiter = 'Delimiter',

	--[[ 4.3.23. Scala ]]
	scalaKeyword = 'Keyword',
	scalaNameDefinition = 'Identifier',

	--[[ 4.3.24. shell ]]
	shDerefSimple = 'SpecialChar',
	shFunctionKey = 'Function',
	shLoop  = 'Repeat',
	shParen = 'Delimiter',
	shQuote = 'Delimiter',
	shSet   = 'Statement',
	shTestOpr = 'Debug',

	--[[ 4.3.25. Solidity ]]
	solBuiltinType  = 'Type',
	solContract     = 'Typedef',
	solContractName = 'Function',

	--[[ 4.3.26. TOML ]]
	tomlComment = 'Comment',
	tomlDate  = 'Special',
	tomlFloat = 'Float',
	tomlKey   = 'Label',
	tomlTable = 'Structure',

	--[[ 4.3.27. VimScript ]]
	vimCmdSep   = 'Delimiter',
	vimFunction = 'Function',
	vimFgBgAttrib = 'Constant',
	vimHiCterm = 'Label',
	vimHiCtermFgBg = 'vimHiCterm',
	vimHiGroup = 'Typedef',
	vimHiGui   = 'vimHiCterm',
	vimHiGuiFgBg = 'vimHiGui',
	vimHiKeyList = 'Operator',
	vimIsCommand = 'Identifier',
	vimOption = 'Keyword',
	vimScriptDelim = 'Ignore',
	vimSet = 'String',
	vimSetEqual = 'Operator',
	vimSetSep   = 'Delimiter',
	vimUserFunc = 'vimFunction',

	--[[ 4.3.28. XML ]]
	xmlAttrib = 'htmlArg',
	xmlEndTag = 'xmlTag',
	xmlEqual  = 'Operator',
	xmlTag    = 'htmlTag',
	xmlTagName = 'htmlTagName',

	--[[ 4.3.29. SQL ]]
	sqlKeyword = 'Keyword',
	sqlParen   = 'Delimiter',
	sqlSpecial = 'Constant',
	sqlStatement = 'Statement',
	sqlParenFunc = 'Function',

	--[[ 4.3.30. dos INI ]]
	dosiniHeader = 'Title',
	dosiniLabel  = 'Label',

	--[[ 4.3.31. Crontab ]]
	crontabDay  = 'StorageClass',
	crontabDow  = 'String',
	crontabHr   = 'Number',
	crontabMin  = 'Float',
	crontabMnth = 'Structure',

	--[[ 4.3.32. PlantUML ]]
	plantumlArrowLR   = 'Statement',
	plantumlColonLine = NONE,
	plantumlMindmap   = 'Label',
	plantumlMindmap2  = 'Label',

	--[[ 4.3.33. YAML ]]
	yamlKey = 'Label',

	--[[ 4.3.34. Git ]]
	diffAdded = 'DiffAdd',
	diffRemoved = 'DiffDelete',
	gitcommitHeader = 'SpecialComment',
	gitcommitDiscardedFile = 'gitcommitSelectedFile',
	gitcommitOverFlow = 'Error',
	gitcommitSelectedFile = 'Directory',
	gitcommitSummary  = 'Title',
	gitcommitUntrackedFile = 'gitcommitSelectedFile',
	gitconfigAssignment = 'String',
	gitconfigEscape = 'SpecialChar',
	gitconfigNone  = 'Operator',
	gitconfigSection = 'Structure',
	gitconfigVariable = 'Label',
	gitrebaseBreak = 'Keyword',
	gitrebaseCommit = 'Tag',
	gitrebaseDrop = 'Exception',
	gitrebaseEdit = 'Define',
	gitrebaseExec = 'PreProc',
	gitrebaseFixup = 'gitrebaseSquash',
	gitrebaseMerge = 'PreProc',
	gitrebasePick  = 'Include',
	gitrebaseReset = 'gitrebaseLabel',
	gitrebaseReword  = 'gitrebasePick',
	gitrebaseSquash  = 'Macro',
	gitrebaseSummary = 'Title',

	--[[ 4.3.35. Vimtex ]]
	texMathRegion = 'Number',
	texMathSub   = 'Number',
	texMathSuper = 'Number',
	texMathRegionX  = 'Number',
	texMathRegionXX = 'Number',

	--[[ 4.3.36. Coq ]]
	coqConstructor   = 'Constant',
	coqDefBinderType = 'coqDefType',
	coqDefContents1  = 'coqConstructor',
	coqDefType  = 'Typedef',
	coqIndBinderTerm  = 'coqDefBinderType',
	coqIndConstructor = 'Delimiter',
	coqIndTerm = 'Type',
	coqKwd = 'Keyword',
	coqKwdParen   = 'Function',
	coqProofDelim = 'coqVernacCmd',
	coqProofDot   = 'coqTermPunctuation',
	coqProofPunctuation = 'coqTermPunctuation',
	coqRequire = 'Include',
	coqTactic  = 'Operator',
	coqTermPunctuation = 'Delimiter',
	coqVernacCmd = 'Statement',
	coqVernacPunctuation = 'coqTermPunctuation',

	--[[ 4.3.37 Help ]]
	helpHeader = 'Label',
	helpOption = 'Keyword',
	helpHeadline = 'Title',
	helpSectionDelim = 'Delimiter',
	helpHyperTextJump = 'Underlined',

	--[[ 4.4. Plugins
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]
	--[[ 4.4.1. ALE ]]
	ALEErrorSign   = 'ErrorMsg',
	ALEWarningSign = 'WarningMsg',

	--[[ 4.4.2. coc.nvim ]]
	CocErrorHighlight =
	{
		style={'undercurl', color=red_light},
		dark={style={'undercurl', color=red}},
	},
	CocHintHighlight  =
	{
		style={'undercurl', color=magenta_light},
		dark={style={'undercurl', color=magenta}},
	},
	CocInfoHighlight  =
	{
		style={'undercurl', color=cyan_light},
		dark={style={'undercurl', color=cyan}},
	},
	CocWarningHighlight =
	{
		style={'undercurl', color=orange_light},
		dark={style={'undercurl', color=orange}},
	},
	CocErrorSign = 'ALEErrorSign',
	CocHintSign  = 'HintMsg',
	CocInfoSign  = 'InfoMsg',
	CocWarningSign = 'ALEWarningSign',

	--[[ 4.4.2. vim-jumpmotion / vim-easymotion ]]
	EasyMotion = 'IncSearch',
	JumpMotion = 'EasyMotion',

	--[[ 4.4.4. vim-gitgutter / vim-signify ]]
	GitGutterAdd =
	{
		fg=green_light,
		dark={fg=green},
	},
	GitGutterChange =
	{
		fg=yellow_light,
		dark={fg=yellow},
	},
	GitGutterDelete =
	{
		fg=red_light,
		dark={fg=red},
	},
	GitGutterChangeDelete =
	{
		fg=cyan_light,
		dark={fg=cyan},
	},

	SignifySignAdd    = 'GitGutterAdd',
	SignifySignChange = 'GitGutterChange',
	SignifySignDelete = 'GitGutterDelete',
	SignifySignChangeDelete = 'GitGutterChangeDelete',

	--[[ 4.4.7. NERDTree ]]
	NERDTreeCWD = 'Label',
	NERDTreeUp  = 'Operator',
	NERDTreeDir = 'Directory',
	NERDTreeDirSlash = 'Delimiter',
	NERDTreeOpenable = 'NERDTreeDir',
	NERDTreeClosable = 'NERDTreeOpenable',
	NERDTreeExecFile = 'Function',
	NERDTreeLinkTarget = 'Tag',

	--[[ 4.4.8. nvim-treesitter ]]
	TSConstBuiltin = 'Constant',
	TSConstructor  = 'Typedef',
	TSFuncBuiltin  = 'Function',
	TSStringEscape = 'Character',
	TSStringRegex  = 'SpecialChar',
	TSURI = 'Tag',
	TSVariableBuiltin = 'Identifier',

	--[[ 4.4.9. barbar.nvim ]]
	BufferCurrent       = 'TabLineSel',
	BufferCurrentIndex  = function(self)
		local info_msg = self.InfoMsg
		local buffer_current = self.BufferCurrent
		return
		{
			fg=info_msg.fg, bg=buffer_current.bg,
			dark={fg=info_msg.dark.fg, bg=buffer_current.dark.bg},
		}
	end,
	BufferCurrentSign   = 'HintMsg',
	BufferCurrentTarget = 'BufferCurrentSign',

	BufferInactive       = 'BufferVisible',
	BufferInactiveIndex  = function(self)
		local info_msg = self.InfoMsg
		local buffer_inactive = self.BufferInactive
		return
		{
			fg=info_msg.fg, bg=buffer_inactive.bg,
			dark={fg=info_msg.dark.fg, bg=buffer_inactive.dark.bg},
		}
	end,
	BufferInactiveMod    = 'BufferVisibleMod',
	BufferInactiveSign   = 'BufferVisibleSign',
	BufferInactiveTarget = 'BufferVisibleTarget',

	BufferTabpages    = {fg=BG, bg=FG, style='bold'},
	BufferTabpageFill = 'TabLineFill',

	BufferVisible       = 'TabLine',
	BufferVisibleIndex  = function(self)
		local info_msg = self.InfoMsg
		local buffer_visible = self.BufferVisible
		return
		{
			fg=info_msg.fg, bg=buffer_visible.bg,
			dark={fg=info_msg.dark.fg, bg=buffer_visible.dark.bg},
		}
	end,
	BufferVisibleSign   = 'BufferVisible',

	--[[ 4.4.10. vim-sandwhich ]]
	OperatorSandwichChange = 'DiffText',

	--[[ 4.4.11. Fern ]]
	FernBranchText = 'Directory',

	--[[ 4.4.12. LSPSaga ]]
	DefinitionCount = 'Number',
	DefinitionIcon = 'Special',
	ReferencesCount = 'Number',
	ReferencesIcon = 'DefinitionIcon',
	TargetFileName = 'Directory',
	TargetWord = 'Title',
}

--[[ Step 5: Terminal Colors
	Define the color palette used by :terminal when in GUI Vim
	or in TUI Vim when 'termguicolors' is enabled. If this list
	is empty or if it doesn't contain exactly 16 items, the corresponding
	Vim variable won't be set.

	The expected values are colors defined in step 3.

	Terminal emulators use a basic palette of 16 colors that can be
	addressed by CLI and TUI tools via their name or their index, from
	0 to 15. The list is not really standardized but it is generally
	assumed to look like this:

	 | Index  | Name          |
	 |:------:|:-------------:|
	 | 1      | black         |
	 | 2      | darkred       |
	 | 3      | darkgreen     |
	 | 4      | darkyellow    |
	 | 5      | darkblue      |
	 | 6      | darkmagenta   |
	 | 7      | darkcyan      |
	 | 8      | gray          |
	 | 9      | darkgray      |
	 | 10     | red           |
	 | 11     | green         |
	 | 12     | yellow        |
	 | 13     | blue          |
	 | 14     | magenta       |
	 | 15     | cyan          |
	 | 16     | white         |

	While you are certainly free to make colors 0 to 7 shades of blue,
	this will inevitably cause usability issues so… be careful.
]]

local terminal_ansi_colors = vim.o.background == 'dark' and
{
	[1]  = base02,
	[2]  = red,
	[3]  = green,
	[4]  = yellow,
	[5]  = blue,
	[6]  = magenta,
	[7]  = cyan,
	[8]  = base2,
	[9]  = back,
	[10] = orange,
	[11] = base01,
	[12] = base00,
	[13] = base0,
	[14] = violet,
	[15] = base1,
	[16] = base3,
} or {
	[1]  = base02_light,
	[2]  = red_light,
	[3]  = green_light,
	[4]  = yellow_light,
	[5]  = blue_light,
	[6]  = magenta_light,
	[7]  = cyan_light,
	[8]  = base2_light,
	[9]  = back_light,
	[10] = orange_light,
	[11] = base01_light,
	[12] = base00_light,
	[13] = base0_light,
	[14] = violet_light,
	[15] = base1_light,
	[16] = base3_light,
}

--[[ Step 5: Sourcing
	When you wish to load your colorscheme, simply add this folder with a plugin manager
	and then use `colorscheme <your colorscheme name>`. For example, in my configuration,
	I source soluarized by using `colorscheme soluarized`.

	These online resources can help you design your colorscheme:

	1. the xterm palette.
		* http://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
	2. play with hexadecimal colors right in the address bar (currently down).
		* http://whatcolor.herokuapp.com/
	3. similar concept, fuzzier implementation.
		* http://color.hailpixel.com/
	4. similar concept, fancier implementation.
		* http://colourco.de/
	5. extract a palette from an image.
		* http://www.colr.org/
	6. search for 'word', get images and color palettes.
		* http://colores.manugarri.com/
	7. user-created palettes.
		* http://www.colourlovers.com/palettes
	8. a no-nonsense colorscheme generator.
		* http://www.pluaang.dk/color+scheme/
	9. Adobe's fancy colorscheme generator.
		* https://color.adobe.com/
	10. The classic 'Color Scheme Designer', rebranded.
		* http://paletton.com/
	11. A very smart palette generator.
		* http://vrl.cs.brown.edu/color
	12. 'I Made My Own Colour Scheme and You Can Too!'.
		* https://cmcenroe.me/2018/04/03/colour-scheme.html

	A few things to note:

	* The Windows console (`cmd`) is limited to the 16 so-called 'ANSI' colors but it used to
			have a few of them interverted which makes numbers impractical. Use color names
			instead of numbers: :help cterm-colors
		* The Windows console doesn't do italics, underlines or bolded text;
			it is limited to normal and reverse. Keep that in mind if you want
			your colorscheme to be usable in as many environments as possible by as many
			people as possible.
		* The Windows TERMINAL, however, is capable of more.
	* All of the terminal emulators in use these days allow their users to
		change the 16 so-called 'ANSI' colors. It is also possible on some platforms
		to change some or all of the 256 colors in the xterm palette. Don't take
		anything for granted.
	* When used against a light background, strong colors work better than muted
		ones. Light or dark doesn't really matters. Also, it is harder to discriminate
		between two similar colors on a light background.
	* Both strong and muted colors work well against a dark background. It is also
		easier to work with similar colors, but dark colors don't work at all.
	* Use as many text samples as possible. String-heavy languages may look completely
		different than keyword-heavy ones. This can have an impact on the usability
		of your colorscheme.
	* Most terminal emulators and terminal multiplexers currently in use on unix-like
		systems support 256 colors but they almost always default to a '$TERM' that tells
		Vim otherwise. Your users will need to make sure their terminal emulator/multiplexer
		is correctly set up if they want to enjoy the best possible experience.
]]

require(vim.g.colors_name)(
	highlight_group_normal,
	highlight_groups,
	terminal_ansi_colors
)

-- Thanks to Romain Lafourcade (https://github.com/romainl) for the original template (romainl/vim-rnb).