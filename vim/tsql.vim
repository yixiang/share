" Vim syntax file
" Language:	SQL, PL/SQL (Oracle 8i)
" Maintainer:	Paul Moore <pf_moore AT yahoo.co.uk>
" Last Change:	2005 Dec 23

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

" The SQL reserved words, defined as keywords.

syn keyword sqlSpecial  null

syn keyword sqlFunction sum avg max min
syn keyword sqlFunction row_number isnull
syn keyword sqlFunction year month day dateadd datediff getdate
syn keyword sqlFunction cast convert

syn keyword sqlKeyword	add as asc begin by case check column
syn keyword sqlKeyword	current cursor decimal declare default desc
syn keyword sqlKeyword	else end file for from function group having if 
syn keyword sqlKeyword	index into is level loop modify
syn keyword sqlKeyword	nowait of offline on online 
syn keyword sqlKeyword	synonym table then to trigger uid
syn keyword sqlKeyword	unique user values view 
syn keyword sqlKeyword	where with option order partition procedure
syn keyword sqlKeyword	public return rows size type 

syn keyword sqlKeyword	exit primary fetch print fillfactor proc foreign
syn keyword sqlKeyword	authorization freetext raiserror  freetexttable
syn keyword sqlKeyword	read backup readtext full reconfigure goto
syn keyword sqlKeyword	references break repeatable browse replication
syn keyword sqlKeyword	bulk restore holdlock restrict cascade identity
syn keyword sqlKeyword	identity_insert identitycol right checkpoint close
syn keyword sqlKeyword	rowcount clustered rowguidcol coalesce inner rule
syn keyword sqlKeyword	save schema committed compute serializable
syn keyword sqlKeyword	isolation session_user constraint join contains
syn keyword sqlKeyword	key setuser containstable kill shutdown continue
syn keyword sqlKeyword	left statistics lineno system_user load cross
syn keyword sqlKeyword	tape current_date current_time national textsize
syn keyword sqlKeyword	current_timestamp nocheck current_user
syn keyword sqlKeyword	nonclustered top database tran dbcc nullif
syn keyword sqlKeyword	transaction deallocate off offsets tsequal
syn keyword sqlKeyword	uncommitted deny disk open opendatasource
syn keyword sqlKeyword	updatetext distributed openquery use double
syn keyword sqlKeyword	openrowset dummy varying dump outer waitfor over
syn keyword sqlKeyword	when errlvl percent while except exec plan
syn keyword sqlKeyword	writetext precision  

syn keyword sqlOperator	not and or
syn keyword sqlOperator	in any some all between exists
syn keyword sqlOperator	like escape
syn keyword sqlOperator union intersect 
syn keyword sqlOperator prior distinct
syn keyword sqlOperator	out

syn keyword sqlStatement alter commit create
syn keyword sqlStatement delete drop execute grant insert 
syn keyword sqlStatement revoke rollback select set
syn keyword sqlStatement truncate update

syn keyword sqlType	bit char character datetime float int 
syn keyword sqlType	raw rowid varchar 
syn keyword sqlType	nchar nvarchar numeric decimal smallint tinyint

" Strings and characters:
syn region sqlString		start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region sqlString		start=+'+  skip=+\\\\\|\\'+  end=+'+

" Numbers:
syn match sqlNumber		"-\=\<\d*\.\=[0-9_]\>"

" Comments:
syn region sqlComment    start="/\*"  end="\*/" contains=sqlTodo
syn match sqlComment	"--.*$" contains=sqlTodo

syn sync ccomment sqlComment

" Todo.
syn keyword sqlTodo contained TODO FIXME XXX DEBUG NOTE

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_sql_syn_inits")
  if version < 508
    let did_sql_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink sqlComment	Comment
  HiLink sqlKeyword	sqlSpecial
  HiLink sqlFunction	sqlSpecial
  HiLink sqlNumber	Number
  HiLink sqlOperator	sqlStatement
  HiLink sqlSpecial	Special
  HiLink sqlStatement	Statement
  HiLink sqlString	String
  HiLink sqlType	Type
  HiLink sqlTodo	Todo

  delcommand HiLink
endif

let b:current_syntax = "sql"

set sw=4
set noet
set ts=4
" vim: ts=8
