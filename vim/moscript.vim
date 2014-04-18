" Vim syntax file
" Language:     Java
" Maintainer:   Claudio Fleiner <claudio@fleiner.com>
" URL:		http://www.fleiner.com/vim/syntax/moscript.vim
" Last Change:  2007 Dec 21

" Please check :help moscript.vim for comments on some of the options available.

" Quit when a syntax file was already loaded
if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  " we define it here so that included files can test for it
  let main_syntax='moscript'
endif

" don't use standard HiLink, it will not work with included syntax files
if version < 508
  command! -nargs=+ JavaHiLink hi link <args>
else
  command! -nargs=+ JavaHiLink hi def link <args>
endif

" some characters that cannot be in a moscript program (outside a string)
syn match moscriptError "[\\@`]"
syn match moscriptError "<<<\|\.\.\|=>\|<>\|||=\|&&=\|[^-]->\|\*\/"
syn match moscriptOK "\.\.\."

" use separate name so that it can be deleted in moscriptcc.vim
syn match   moscriptError2 "#\|=<"
JavaHiLink moscriptError2 moscriptError



" keyword definitions
syn keyword moscriptConditional	if else
syn keyword moscriptRepeat		while
syn keyword moscriptOperator	arrayAppendItem arrayContainsKey arrayDelItem arrayEqual arrayFromStr arrayGetArrayValue arrayGetBoolValue arrayGetIntValue arrayGetKey arrayGetLen arrayGetStrValue arrayGetValueType arrayHasKeyAt arrayInsertItem arraySetItem arrayToStr createSignal notifySignal openThreadEx openThread sleep strCat strCmp strLen strMatch strPos strReplace subStr toBoolean toInt toStr urlEncode waitForSignal funcToInt intToFunc
syn keyword moscriptType		boolean int string array native void
syn keyword moscriptType		moscript molibrary moinclude moml
syn keyword moscriptStatement	return
" to differentiate the keyword class from MyClass.class we use a match here
syn keyword moscriptBranch		break continue

syn keyword moscriptOperator cinf_supportNoAutoBackRefresh cinf_supportExecuteVmSynchrounously cinf_supportSupportOnPushEx cinf_supportSupportAreAllImagesReady cinf_supportTabSet cinf_supportPopGroup cinf_supportOnItemInputFinished cinf_supportOnTouch cinf_supportOnKey cinf_supportPhoneNumberVerification cinf_getClientType cinf_getClientVersion cinf_getClientBuild cinf_getPlatformName cinf_getPlatformVersion cinf_getEncoding cinf_getLocale cinf_getLang cinf_getJConf cinf_getJProf cinf_getDotNETCF cmnt_create cmnt_delete cmnt_deleteByIds cmnt_deleteByAuthor cmnt_count cmnt_getByObj cmnt_getByAuthor cmnt_getByIds cmui_prompt cmui_init dbug_log dbug_alert imgl_startLoading like_like like_unlike like_count like_getUserIds locl_add locl_tr2 locl_tr rqst_post rqst_get stts_create stts_delete stts_deleteByIds stts_deleteByAuthor stts_getByAuthor stts_getByIds stts_getFriendStatus

syn match moscriptAnnotation "@param\|@author\|@data\|@return\|@see"
syn match moscriptAnnotation "typeFlags\|fullText\|fullTextColor\|mopage\|moblock\|title\|firstLineText\|apos\|absoluteX\|absoluteY\|absoluteXYMode\|areAllImagesReady"
syn match moscriptAnnotation "contact\.addOneByArray\|contact\.getAllByArray\|contact\.selectManyByArray\|contact\.selectOneByArray"
syn match moscriptAnnotation "browser\.close\|browser\.open\|contact\.addOne\|contact\.getAll\|contact\.selectMany\|contact\.selectOne"
syn match moscriptAnnotation "db\.clear\|db\.load\|db\.memClear\|db\.memLoad\|db\.memSave\|db\.save"
syn match moscriptAnnotation "friend\.getAllByArray\|friend\.getMyselfByArray\|friend\.selectByArray"
syn match moscriptAnnotation "file\.downloadOne\|file\.run\|file\.selectOne\|file\.uploadOne\|friend\.getAll"
syn match moscriptAnnotation "friend\.getMyself\|friend\.select\|friend\.startChat"
syn match moscriptAnnotation "graphics\.drawLine\|graphics\.drawRect\|graphics\.fillRect\|graphics\.setColor"
syn match moscriptAnnotation "history\.back\|history\.close\|history\.closeAll"
syn match moscriptAnnotation "phone\.beep\|phone\.getClientCaps\|phone\.getClientLang\|phone\.getClientType"
syn match moscriptAnnotation "phone\.getClientVersion\|phone\.getInfoByArray\|phone\.getInfo\|phone\.getUAByArray\|phone\.sendSMS\|phone\.vibrate"
syn match moscriptAnnotation "photo\.getUploadingPhotos\|photo\.onPhotoUploaded\|photo\.uploadPhoto\|time\.curTimeSec\|photo.save\|photo.view"
syn match moscriptAnnotation "util\.randomInt\|util\.getUrlPath\|util\.getUrlRoot\|util.getUrlHash\|util.copy\|util.alert"
syn match moscriptAnnotation "util\.splitStrByArray\|util\.joinStr"
syn match moscriptAnnotation "view\.copyItem\|view\.delItem\|view\.disableAutoRepaint\|view\.enableAutoRepaint"
syn match moscriptAnnotation "view\.fetchPage\|view\.fetchImages\|view.isPageCached\|view.isImageCached"
syn match moscriptAnnotation "view\.fireEvent\|view\.getFocusedItemId\|view\.getInt\|view\.getPageInt"
syn match moscriptAnnotation "view\.getPageStr\|view\.getStr\|view\.hideMsgBox\|view\.loadImages\|view\.moveItem"
syn match moscriptAnnotation "view\.onFrameLoaded\|view\.onImagesLoaded\|view\.onItemFocused"
syn match moscriptAnnotation "view\.onItemInputFinished\|view\.onItemStateChanged\|view\.onItemUnfocused\|view\.onItem"
syn match moscriptAnnotation "view\.onKey\|view\.onLeave\|view\.onPaint\|view\.onPush\|view\.onShown\|view\.onTouch"
syn match moscriptAnnotation "view\.openItem\|view\.openUrl\|view\.regEventProcFunc\|view\.reload\|view\.reloadFrame"
syn match moscriptAnnotation "view\.sendRequestBlocking\|view\.sendRequestNonblocking\|view\.sendRequestWithCallback"
syn match moscriptAnnotation "view\.setFocus\|view\.setInt\|view\.setPageInt\|view\.setPageStr\|view\.setStr\|view\.setVisible"
syn match moscriptAnnotation "view\.showMsgBoxEx\|view\.showMsgBox\|view\.showProgressMsgBox\|view\.showProgressMsgBox"
syn match moscriptAnnotation "view\.startAnimation\|view\.swapItems\|view\.touchItemState"

syn region moscriptDocTags   contained start="{@\(link\|linkplain\|inherit[Dd]oc\|doc[rR]oot\|value\)" end="}"
syn match  moscriptDocTags   contained "@\(version\|author\|return\|deprecated\|serial\|serialField\|serialData\)\>"

if exists("moscript_highlight_moscript_lang_ids")
  let moscript_highlight_all=1
endif
if exists("moscript_highlight_all")  || exists("moscript_highlight_moscript")  || exists("moscript_highlight_moscript_lang")
  " moscript.lang.*
  syn match moscriptLangClass "\<System\>"
  syn keyword moscriptR_JavaLang NegativeArraySizeException ArrayStoreException IllegalStateException RuntimeException IndexOutOfBoundsException UnsupportedOperationException ArrayIndexOutOfBoundsException ArithmeticException ClassCastException EnumConstantNotPresentException StringIndexOutOfBoundsException IllegalArgumentException IllegalMonitorStateException IllegalThreadStateException NumberFormatException NullPointerException TypeNotPresentException SecurityException
  syn cluster moscriptTop add=moscriptR_JavaLang
  syn cluster moscriptClasses add=moscriptR_JavaLang
  JavaHiLink moscriptR_JavaLang moscriptR_Java
  syn keyword moscriptC_JavaLang Process RuntimePermission StringKeySet CharacterData01 Class ThreadLocal ThreadLocalMap CharacterData0E Package Character StringCoding Long ProcessImpl ProcessEnvironment Short AssertionStatusDirectives 1PackageInfoProxy UnicodeBlock InheritableThreadLocal AbstractStringBuilder StringEnvironment ClassLoader ConditionalSpecialCasing CharacterDataPrivateUse StringBuffer StringDecoder Entry StringEntry WrappedHook StringBuilder StrictMath State ThreadGroup Runtime CharacterData02 MethodArray Object CharacterDataUndefined Integer Gate Boolean Enum Variable Subset StringEncoder Void Terminator CharsetSD IntegerCache CharacterCache Byte CharsetSE Thread SystemClassLoaderAction CharacterDataLatin1 StringValues StackTraceElement Shutdown ShortCache String ConverterSD ByteCache Lock EnclosingMethodInfo Math Float Value Double SecurityManager LongCache ProcessBuilder StringEntrySet Compiler Number UNIXProcess ConverterSE ExternalData CaseInsensitiveComparator CharacterData00 NativeLibrary
  syn cluster moscriptTop add=moscriptC_JavaLang
  syn cluster moscriptClasses add=moscriptC_JavaLang
  JavaHiLink moscriptC_JavaLang moscriptC_Java
  syn keyword moscriptE_JavaLang IncompatibleClassChangeError InternalError UnknownError ClassCircularityError AssertionError ThreadDeath IllegalAccessError NoClassDefFoundError ClassFormatError UnsupportedClassVersionError NoSuchFieldError VerifyError ExceptionInInitializerError InstantiationError LinkageError NoSuchMethodError Error UnsatisfiedLinkError StackOverflowError AbstractMethodError VirtualMachineError OutOfMemoryError
  syn cluster moscriptTop add=moscriptE_JavaLang
  syn cluster moscriptClasses add=moscriptE_JavaLang
  JavaHiLink moscriptE_JavaLang moscriptE_Java
  syn keyword moscriptX_JavaLang CloneNotSupportedException Exception NoSuchMethodException IllegalAccessException NoSuchFieldException Throwable InterruptedException ClassNotFoundException InstantiationException
  syn cluster moscriptTop add=moscriptX_JavaLang
  syn cluster moscriptClasses add=moscriptX_JavaLang
  JavaHiLink moscriptX_JavaLang moscriptX_Java

  JavaHiLink moscriptR_Java moscriptR_
  JavaHiLink moscriptC_Java moscriptC_
  JavaHiLink moscriptE_Java moscriptE_
  JavaHiLink moscriptX_Java moscriptX_
  JavaHiLink moscriptX_		     moscriptExceptions
  JavaHiLink moscriptR_		     moscriptExceptions
  JavaHiLink moscriptE_		     moscriptExceptions
  JavaHiLink moscriptC_		     moscriptConstant

  syn keyword moscriptLangObject clone equals finalize getClass hashCode
  syn keyword moscriptLangObject notify notifyAll toString wait
  JavaHiLink moscriptLangObject		     moscriptConstant
  syn cluster moscriptTop add=moscriptLangObject
endif

if filereadable(expand("<sfile>:p:h")."/moscriptid.vim")
  source <sfile>:p:h/moscriptid.vim
endif

if exists("moscript_space_errors")
  if !exists("moscript_no_trail_space_error")
    syn match   moscriptSpaceError  "\s\+$"
  endif
  if !exists("moscript_no_tab_space_error")
    syn match   moscriptSpaceError  " \+\t"me=e-1
  endif
endif

syn region  moscriptLabelRegion     transparent matchgroup=moscriptLabel start="\<case\>" matchgroup=NONE end=":" contains=moscriptNumber,moscriptCharacter
syn match   moscriptUserLabel       "^\s*[_$a-zA-Z][_$a-zA-Z0-9_]*\s*:"he=e-1 contains=moscriptLabel
syn keyword moscriptLabel		default

if !exists("moscript_allow_cpp_keywords")
  " The default used to be to highlight C++ keywords.  But several people
  " don't like that, so default to not highlighting these.
  let moscript_allow_cpp_keywords = 1
endif
if !moscript_allow_cpp_keywords
  syn keyword moscriptError auto delete extern friend inline redeclared
  syn keyword moscriptError register signed sizeof struct template typedef union
  syn keyword moscriptError unsigned operator
endif

" The following cluster contains all moscript groups except the contained ones
syn cluster moscriptTop add=moscriptExternal,moscriptError,moscriptError,moscriptBranch,moscriptLabelRegion,moscriptLabel,moscriptConditional,moscriptRepeat,moscriptBoolean,moscriptConstant,moscriptTypedef,moscriptOperator,moscriptType,moscriptType,moscriptStatement,moscriptStorageClass,moscriptAssert,moscriptExceptions,moscriptMethodDecl,moscriptClassDecl,moscriptClassDecl,moscriptClassDecl,moscriptScopeDecl,moscriptError,moscriptError2,moscriptUserLabel,moscriptLangObject,moscriptAnnotation,moscriptVarArg


" Comments
syn keyword moscriptTodo		 contained TODO FIXME XXX
if exists("moscript_comment_strings")
  syn region  moscriptCommentString    contained start=+"+ end=+"+ end=+$+ end=+\*/+me=s-1,he=s-1 contains=moscriptSpecial,moscriptCommentStar,moscriptSpecialChar,@Spell
  syn region  moscriptComment2String   contained start=+"+  end=+$\|"+  contains=moscriptSpecial,moscriptSpecialChar,@Spell
  syn match   moscriptCommentCharacter contained "'\\[^']\{1,6\}'" contains=moscriptSpecialChar
  syn match   moscriptCommentCharacter contained "'\\''" contains=moscriptSpecialChar
  syn match   moscriptCommentCharacter contained "'[^\\]'"
  syn cluster moscriptCommentSpecial add=moscriptCommentString,moscriptCommentCharacter,moscriptNumber
  syn cluster moscriptCommentSpecial2 add=moscriptComment2String,moscriptCommentCharacter,moscriptNumber
endif
syn region  moscriptComment		 start="/\*"  end="\*/" contains=@moscriptCommentSpecial,moscriptTodo,@Spell
syn match   moscriptCommentStar      contained "^\s*\*[^/]"me=e-1
syn match   moscriptCommentStar      contained "^\s*\*$"
syn match   moscriptLineComment      "//.*" contains=@moscriptCommentSpecial2,moscriptTodo,@Spell
JavaHiLink moscriptCommentString moscriptString
JavaHiLink moscriptComment2String moscriptString
JavaHiLink moscriptCommentCharacter moscriptCharacter

syn cluster moscriptTop add=moscriptComment,moscriptLineComment

if !exists("moscript_ignore_moscriptdoc") && main_syntax != 'jsp'
  syntax case ignore
  " syntax coloring for moscriptdoc comments (HTML)
"  syntax include @moscriptHtml <sfile>:p:h/html.vim
"  unlet b:current_syntax
  syn region  moscriptDocComment    start="/\*\*"  end="\*/" keepend contains=moscriptCommentTitle,@moscriptHtml,moscriptDocTags,moscriptDocSeeTag,moscriptTodo,@Spell
  syn region  moscriptCommentTitle  contained matchgroup=moscriptDocComment start="/\*\*"   matchgroup=moscriptCommentTitle keepend end="\.$" end="\.[ \t\r<&]"me=e-1 end="[^{]@"me=s-2,he=s-1 end="\*/"me=s-1,he=s-1 contains=@moscriptHtml,moscriptCommentStar,moscriptTodo,@Spell,moscriptDocTags,moscriptDocSeeTag

  syn match  moscriptDocTags         contained "@\(param\|since\)\s\+\S\+" contains=moscriptDocParam
  syn match  moscriptDocParam        contained "\s\S\+"
  syn match  moscriptDocTags         contained "@\(date\|author\|return\|deprecated\)\>"
  syn region moscriptDocSeeTag       contained matchgroup=moscriptDocTags start="@see\s\+" matchgroup=NONE end="\_."re=e-1 contains=moscriptDocSeeTagParam
  syn match  moscriptDocSeeTagParam  contained @"\_[^"]\+"\|<a\s\+\_.\{-}</a>\|\(\k\|\.\)*\(#\k\+\((\_[^)]\+)\)\=\)\=@ extend
  syntax case match
endif

" match the special comment /**/
syn match   moscriptComment		 "/\*\*/"

" Strings and constants
syn match   moscriptSpecialError     contained "\\."
syn match   moscriptSpecialCharError contained "[^']"
syn match   moscriptSpecialChar      contained "\\\([4-9]\d\|[0-3]\d\d\|[\"\\'ntbrf]\|u\x\{4\}\)"
syn region  moscriptString		start=+"+ end=+"+ end=+$+ contains=moscriptSpecialChar,moscriptSpecialError,@Spell
" next line disabled, it can cause a crash for a long line
"syn match   moscriptStringError	  +"\([^"\\]\|\\.\)*$+
syn match   moscriptCharacter	 "'[^']*'" contains=moscriptSpecialChar,moscriptSpecialCharError
syn match   moscriptCharacter	 "'\\''" contains=moscriptSpecialChar
syn match   moscriptCharacter	 "'[^\\]'"
syn match   moscriptNumber		 "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syn match   moscriptNumber		 "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn match   moscriptNumber		 "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syn match   moscriptNumber		 "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"

" unicode characters
syn match   moscriptSpecial "\\u\d\{4\}"

syn cluster moscriptTop add=moscriptString,moscriptCharacter,moscriptNumber,moscriptSpecial,moscriptStringError

if exists("moscript_highlight_functions")
  if moscript_highlight_functions == "indent"
    syn match  moscriptFuncDef "^\(\t\| \{8\}\)[_$a-zA-Z][_$a-zA-Z0-9_. \[\]]*([^-+*/()]*)" contains=moscriptScopeDecl,moscriptType,moscriptStorageClass,@moscriptClasses
    syn region moscriptFuncDef start=+^\(\t\| \{8\}\)[$_a-zA-Z][$_a-zA-Z0-9_. \[\]]*([^-+*/()]*,\s*+ end=+)+ contains=moscriptScopeDecl,moscriptType,moscriptStorageClass,@moscriptClasses
    syn match  moscriptFuncDef "^  [$_a-zA-Z][$_a-zA-Z0-9_. \[\]]*([^-+*/()]*)" contains=moscriptScopeDecl,moscriptType,moscriptStorageClass,@moscriptClasses
    syn region moscriptFuncDef start=+^  [$_a-zA-Z][$_a-zA-Z0-9_. \[\]]*([^-+*/()]*,\s*+ end=+)+ contains=moscriptScopeDecl,moscriptType,moscriptStorageClass,@moscriptClasses
  else
    " This line catches method declarations at any indentation>0, but it assumes
    " two things:
    "   1. class names are always capitalized (ie: Button)
    "   2. method names are never capitalized (except constructors, of course)
    syn region moscriptFuncDef start=+^\s\+\(\(public\|protected\|private\|static\|abstract\|final\|native\|synchronized\)\s\+\)*\(\(void\|boolean\|char\|byte\|short\|int\|long\|float\|double\|\([A-Za-z_][A-Za-z0-9_$]*\.\)*[A-Z][A-Za-z0-9_$]*\)\(<[^>]*>\)\=\(\[\]\)*\s\+[a-z][A-Za-z0-9_$]*\|[A-Z][A-Za-z0-9_$]*\)\s*([^0-9]+ end=+)+ contains=moscriptScopeDecl,moscriptType,moscriptStorageClass,moscriptComment,moscriptLineComment,@moscriptClasses
  endif
  syn match  moscriptBraces  "[{}]"
  syn cluster moscriptTop add=moscriptFuncDef,moscriptBraces
endif

if exists("moscript_highlight_debug")

  " Strings and constants
  syn match   moscriptDebugSpecial		contained "\\\d\d\d\|\\."
  syn region  moscriptDebugString		contained start=+"+  end=+"+  contains=moscriptDebugSpecial
  syn match   moscriptDebugStringError      +"\([^"\\]\|\\.\)*$+
  syn match   moscriptDebugCharacter	contained "'[^\\]'"
  syn match   moscriptDebugSpecialCharacter contained "'\\.'"
  syn match   moscriptDebugSpecialCharacter contained "'\\''"
  syn match   moscriptDebugNumber		contained "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
  syn match   moscriptDebugNumber		contained "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
  syn match   moscriptDebugNumber		contained "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
  syn match   moscriptDebugNumber		contained "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"
  syn keyword moscriptDebugBoolean		contained true false
  syn keyword moscriptDebugType		contained null this super
  syn region moscriptDebugParen  start=+(+ end=+)+ contained contains=moscriptDebug.*,moscriptDebugParen

  " to make this work you must define the highlighting for these groups
  syn match moscriptDebug "\<System\.\(out\|err\)\.print\(ln\)*\s*("me=e-1 contains=moscriptDebug.* nextgroup=moscriptDebugParen
  syn match moscriptDebug "\<p\s*("me=e-1 contains=moscriptDebug.* nextgroup=moscriptDebugParen
  syn match moscriptDebug "[A-Za-z][a-zA-Z0-9_]*\.printStackTrace\s*("me=e-1 contains=moscriptDebug.* nextgroup=moscriptDebugParen
  syn match moscriptDebug "\<trace[SL]\=\s*("me=e-1 contains=moscriptDebug.* nextgroup=moscriptDebugParen

  syn cluster moscriptTop add=moscriptDebug

  if version >= 508 || !exists("did_c_syn_inits")
    JavaHiLink moscriptDebug		 Debug
    JavaHiLink moscriptDebugString		 DebugString
    JavaHiLink moscriptDebugStringError	 moscriptError
    JavaHiLink moscriptDebugType		 DebugType
    JavaHiLink moscriptDebugBoolean		 DebugBoolean
    JavaHiLink moscriptDebugNumber		 Debug
    JavaHiLink moscriptDebugSpecial		 DebugSpecial
    JavaHiLink moscriptDebugSpecialCharacter DebugSpecial
    JavaHiLink moscriptDebugCharacter	 DebugString
    JavaHiLink moscriptDebugParen		 Debug

    JavaHiLink DebugString		 String
    JavaHiLink DebugSpecial		 Special
    JavaHiLink DebugBoolean		 Boolean
    JavaHiLink DebugType		 Type
  endif
endif

if exists("moscript_mark_braces_in_parens_as_errors")
  syn match moscriptInParen		 contained "[{}]"
  JavaHiLink moscriptInParen	moscriptError
  syn cluster moscriptTop add=moscriptInParen
endif

" catch errors caused by wrong parenthesis
syn region  moscriptParenT  transparent matchgroup=moscriptParen  start="("  end=")" contains=@moscriptTop,moscriptParenT1
syn region  moscriptParenT1 transparent matchgroup=moscriptParen1 start="(" end=")" contains=@moscriptTop,moscriptParenT2 contained
syn region  moscriptParenT2 transparent matchgroup=moscriptParen2 start="(" end=")" contains=@moscriptTop,moscriptParenT  contained
syn match   moscriptParenError       ")"
" catch errors caused by wrong square parenthesis
syn region  moscriptParenT  transparent matchgroup=moscriptParen  start="\["  end="\]" contains=@moscriptTop,moscriptParenT1
syn region  moscriptParenT1 transparent matchgroup=moscriptParen1 start="\[" end="\]" contains=@moscriptTop,moscriptParenT2 contained
syn region  moscriptParenT2 transparent matchgroup=moscriptParen2 start="\[" end="\]" contains=@moscriptTop,moscriptParenT  contained
syn match   moscriptParenError       "\]"

JavaHiLink moscriptParenError       moscriptError

if !exists("moscript_minlines")
  let moscript_minlines = 10
endif
exec "syn sync ccomment moscriptComment minlines=" . moscript_minlines

" The default highlighting.
if version >= 508 || !exists("did_moscript_syn_inits")
  if version < 508
    let did_moscript_syn_inits = 1
  endif
  JavaHiLink moscriptFuncDef		Function
  JavaHiLink moscriptVarArg                 Function
  JavaHiLink moscriptBraces			Function
  JavaHiLink moscriptBranch			Conditional
  JavaHiLink moscriptUserLabelRef		moscriptUserLabel
  JavaHiLink moscriptLabel			Label
  JavaHiLink moscriptUserLabel		Label
  JavaHiLink moscriptConditional		Conditional
  JavaHiLink moscriptRepeat			Repeat
  JavaHiLink moscriptExceptions		Exception
  JavaHiLink moscriptAssert			Statement
  JavaHiLink moscriptStorageClass		StorageClass
  JavaHiLink moscriptMethodDecl		moscriptStorageClass
  JavaHiLink moscriptClassDecl		moscriptStorageClass
  JavaHiLink moscriptScopeDecl		moscriptStorageClass
  JavaHiLink moscriptBoolean		Boolean
  JavaHiLink moscriptSpecial		Special
  JavaHiLink moscriptSpecialError		Error
  JavaHiLink moscriptSpecialCharError	Error
  JavaHiLink moscriptString			String
  JavaHiLink moscriptCharacter		Character
  JavaHiLink moscriptSpecialChar		SpecialChar
  JavaHiLink moscriptNumber			Number
  JavaHiLink moscriptError			Error
  JavaHiLink moscriptStringError		Error
  JavaHiLink moscriptStatement		Statement
  JavaHiLink moscriptOperator		Operator
  JavaHiLink moscriptComment		Comment
  JavaHiLink moscriptDocComment		Comment
  JavaHiLink moscriptLineComment		Comment
  JavaHiLink moscriptConstant		Constant
  JavaHiLink moscriptTypedef		Typedef
  JavaHiLink moscriptTodo			Todo
  JavaHiLink moscriptAnnotation             PreProc

  JavaHiLink moscriptCommentTitle		SpecialComment
  JavaHiLink moscriptDocTags		Special
  JavaHiLink moscriptDocParam		Function
  JavaHiLink moscriptDocSeeTagParam		Function
  JavaHiLink moscriptCommentStar		moscriptComment

  JavaHiLink moscriptType			Type
  JavaHiLink moscriptExternal		Include

  JavaHiLink htmlComment		Special
  JavaHiLink htmlCommentPart		Special
  JavaHiLink moscriptSpaceError		Error
endif

delcommand JavaHiLink

let b:current_syntax = "moscript"

if main_syntax == 'moscript'
  unlet main_syntax
endif

let b:spell_options="contained"

" vim: ts=8
set sw=4
set ts=4
set noet
