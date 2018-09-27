cp -u ../Bibtex/PhDMendeley.bib/library.bib .
#cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/Analysis/Pr04Val-ErrorPlots.png images/Pr04Val-ErrorPlots.png

rm TargetHtc.glsdefs
bibtex TargetHtc.aux
makeglossaries  TargetHtc
#pdflatex -file-line-error -synctex=1 -interaction=nonstopmode TargetHtc.tex
makeindex VTUF-TargetHtc.nlo -s nomencl.ist -o TargetHtc.nls
pdflatex -file-line-error -synctex=1 -interaction=errorstopmode --shell-escape TargetHtc.tex
#makeindex elsarticle-template.nlo -s nomencl.ist -o elsarticle-template.nls
bibtex TargetHtc.aux
