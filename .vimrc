set fencs=ucs-bom,utf-8,euc-kr,default,latin1
set ai		" autoindent
"set ar 	" autoread when modified externally
"set aw 	" autowrite with specific command and modified contents
set bs=indent,eol,start	" backspace. type :help bs
"set bk		" backup
"set bdir a,b	" backupdir. paths to save backup.
"set bsk a,b	" backupskip. paths or files not to save backup
"set cedit=<C-f>	" shortcut for history window on command-line mode
set cin		" cindent. apply c-style indent
"set cp		" compatible. compatiblity with original vi
set nocp	" nocompatible.
"set cuc	" cursorcolumn. highlight whole column of current
"set nocuc	" nocursorcolumn.
"set cul		" cursorline. highlight whole line of current
set et		" expandtab. input space instead of tab character
set ts=2	" tabstop. size of tab.
set hls 	" hlsearch. highlight the matched for searching strings
"set noh	" nohlsearch
set hi=1000	" history. number of history of command. default 50. max 10000
"set ic		" ignorecase. ignore case when searching. default off
"set scs	" smartcase. do not ignore case when the capital is involved on searching keyword
" langmap. map specific non-english character to english alphabet
"set lmap=ㅇㅜㅔㅣㅕㅏㅡㄴㅁㅇㄱㅈㅎㅅㅊㅍㅅㅐㄴㅓㄷㅗㄹㄱㄹㅁ;abcdefghijklmnopqrstuvwxytuvwxytuvwxytuvwxytuvwxytuvwxyz
set ls=2	" laststatus. option for displaying status line to last window
		" 0: don't 1: don't on a single window 2: always
set lz 		" lazyredraw. don't redraw when something is working on
set lbr 	" linebreak. don't break word on line-wrapping
" list. show space characters into specified one on listchars
" listchars. tab:대체문자, trail:대체문자
" vim에서 특수하게 해석되는 특수문자는 \를 앞에 써준다
set list lcs=tab:\|\ ,trail:~
set mps+=<:>	" matchpairs. %로 매칭되는 괄호 짝 지정. 기본 (:),{:},[:]
set nf+=alpha	" nrformats. <C-a>, <C-x>로 각각 증가 감소할 수 있는 대상
"set nu		" number. 줄번호 보이기
"set nuw=3	" numberwidth. 줄번호 폭. 기본값 4
"set rnu	" relativenumber. 줄번호를 상대적으로 보여줌. nornu로 끔
set ru		" ruler. 커서 위치 정보를 상태 라인에 보여줌
set sw=2	" shiftwidth. cindent, <<, >> 등 들여쓰기 길이 지정
"set sc		" showcmd, normal 모드에서 입력중인 명령어를 화면 오른쪽 하단에 보여줌
set sm		" showmatch. 짝이 맞는 괄호에 하이라이팅 처리
set si		" smartindent. 문법에 맞게 자동 들여쓰기 추가
set sta		" smarttab. <BS>로 공백 들여쓰기 삭제시 탭 단위로 삭제
" 상태줄 설정
"set laststatus=2 "상태줄 켜기
set statusline+=\(\%-.(%l,%c%V%)\) "(행번호, 바이트 열번호, 스크린 열번호) 표시
set statusline+=/\(%L "전체행 갯수 표시
"set statusline+=/%4L "전체행 갯수 표시
set statusline+=행,1열\)
set statusline+=\ \ \%P "스페이스바 두번 후 비율 표시
set statusline+=%= "이하 우측 정렬
set statusline+=%r  "읽기전용
set statusline+=%m  "수정여부
"set statusline+=%F  "파일명과 full 경로 표시
set statusline+=%f  "파일명과 relative 경로 표시
set statusline+=\ \ \%{&fileencoding?&fileencoding:&encoding}\  "스페이스바 두번 후 파일 인코딩 형태 표시
set stl+=0x%B\(%b\) "현재 커서 위치 문자 ascii 코드값 16진수(10진수)
set tags+=$TILERA_ROOT/tags
"set tags+=/opt/tilera/TileraMDE-4.3.4.193953/tilegx/tags
set tags+=tags
