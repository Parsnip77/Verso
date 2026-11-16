#!/bin/sh
set -eu
cd "$(dirname "$0")"
if command -v xelatex >/dev/null 2>&1; then
  compiler="$(command -v xelatex)"
elif [ -x /Library/TeX/texbin/xelatex ]; then
  compiler=/Library/TeX/texbin/xelatex
else
  echo "Install TeX Live or MacTeX with XeLaTeX first." >&2
  exit 1
fi
mkdir -p build
for lang in zh en; do
  for pass in 1 2; do
    "$compiler" -no-shell-escape -interaction=nonstopmode -halt-on-error -output-directory=build "resume-$lang.tex" > "build/compile-$lang.txt" 2>&1 || {
      cat "build/compile-$lang.txt"
      exit 1
    }
  done
  cp "build/resume-$lang.pdf" "resume-$lang.pdf"
done
echo "Built resume-zh.pdf and resume-en.pdf"
