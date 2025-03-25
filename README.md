# ✨ Vim 설정 모음

이 저장소는 **Raspberry Pi 5 환경에 최적화된 Vim 설정 파일들**을 제공합니다.  
상황과 목적에 따라 다음 두 가지 설정을 선택해 사용할 수 있습니다:

---

## 📁 1. `.vimrc`: 가볍고 전통적인 기본 설정

> 💡 Vim 플러그인 없이도 빠르게 시작할 수 있는 **전통형 `.vimrc`**

### 주요 특징

- 자동 들여쓰기 및 smart tab
- 상태줄 커스터마이징 (행/열, 인코딩, ASCII 코드 표시 등)
- C 스타일 코딩에 적합한 기본 설정들
- 특수 문자 시각화 (공백, 탭 등)
- 마지막 커서 위치 기억
- 간단한 단축키 (예: `<F8>`로 검색어 초기화)

### 추천 사용 환경

- 최소한의 설정으로 Vim을 사용하는 환경
- 서버, 리모트 쉘, 빠른 부팅이 필요한 시스템
- 플러그인 설치가 제한되거나 불가능한 경우

---

## 📁 2. `.vimrc_plugversion`: 플러그인 기반의 최신 Vim 설정

> 🚀 자동완성, 포맷터, Git 연동, 파일 탐색기까지 갖춘 **풀옵션 `.vimrc`**

### 주요 특징

- `vim-plug` 기반 플러그인 관리
- `coc.nvim`을 통한 LSP 기반 자동완성 지원
- `black`, `clang-format` 연동 자동 포맷
- `NERDTree` 파일 탐색기
- `lightline` 상태줄 + Git 브랜치 + ASCII 표시
- 컬러 테마: `everforest` (눈에 편한 다크톤)
- 기능별 주석과 설치 순서가 포함된 자체 문서화 `.vimrc`

### 설치 순서 요약

```bash
sudo apt install -y vim nodejs npm clang-format
python3 -m pip install --break-system-packages black isort
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc_plugversion ~/.vimrc
vim  # 실행 후 아래 명령 수행
:PlugInstall
:CocInstall coc-python coc-clangd
