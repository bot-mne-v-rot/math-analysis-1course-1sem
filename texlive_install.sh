#!/usr/bin/env sh

# Originally from https://github.com/latex3/latex3

# This script is used for testing using Travis
# It is intended to work on their VM set up: Ubuntu 12.04 LTS
# A minimal current TL is installed adding only the packages that are
# required

# See if there is a cached version of TL available
export PATH=/tmp/texlive/bin/x86_64-linux:$PATH
if ! command -v texlua > /dev/null; then
  # Obtain TeX Live
  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
  tar -xzf install-tl-unx.tar.gz
  cd install-tl-20*

  # Install a minimal system
  ./install-tl --profile=../texlive/texlive.profile

  cd ..
fi

# Just including texlua so the cache check above works
# Needed for any use of texlua even if not testing LuaTeX
tlmgr install luatex

# Other contrib packages: done as a block to avoid multiple calls to tlmgr
# texlive-latex-base is needed to run pdflatex
tlmgr install   \
  exam          \
  amsfonts      \
  stmaryrd      \
  amsmath       \
  cyrillic      \
  inputenc      \
  babel         \
  babel-russian \
  hyphen-russian \
  t2 \
  lh \
  cm-super \
  euscript      \
  latexsym \
  showkeys \
  pythonhighlight \
  mdframed \
  lipsum \
  soul \
  parskip \
  graphicx \
  mathtools \
  stackengine \
  tocloft \
  xcolor \
  hyperref \
  tikz \
  thmtools \
  pdfcomment \
  blindtext \
  todonotes \
  authblk \
  import \
  listings \
  etoolbox \
  datetime2 \
  tracklang \
  zref \
  marginnote \
  soulpos \
  titlesec \
  hyphsubst \
  datetime2-russian \
  bookmark
  

# Keep no backups (not required, simply makes cache bigger)
tlmgr option -- autobackup 0

# Update the TL install but add nothing new
tlmgr update --self --all