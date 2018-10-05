cp -u ../Bibtex/PhDMendeley.bib/library.bib .
#cp -u /home/kerryn/Documents/Work/VTUF-Runs/PrestonBase/Analysis/Pr04Val-ErrorPlots.png images/Pr04Val-ErrorPlots.png

cp -u /home/kerryn/Documents/Work/Toolkit2-Runs/CoMUTCIValidation/Analysis/GippsEvaluation-ErrorPlots-UTCI.png images/Eval
cp -u /home/kerryn/Documents/Work/Toolkit2-Runs/CoMUTCIValidation/Analysis/GeorgeEvaluation-ErrorPlots-Tair.png images/Eval
cp -u /home/kerryn/Documents/Work/Toolkit2-Runs/CoMUTCIValidation/Analysis/GeorgeEvaluation-ErrorPlots-UTCI.png images/Eval
cp -u /home/kerryn/Documents/Work/Toolkit2-Runs/CoMUTCIValidation/Analysis/GeorgeEvaluation-ErrorPlots-Tmrt.png images/Eval
cp -u /home/kerryn/Documents/Work/Toolkit2-Runs/CoMUTCIValidation/Analysis/GippsEvaluation-ErrorPlots-Tmrt.png images/Eval
cp -u /home/kerryn/Documents/Work/Toolkit2-Runs/CoMUTCIValidation/Analysis/GippsEvaluation-ErrorPlots-Tair.png images/Eval

cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Code/SunburyAll_AOI.png images/temperatures
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Code/SunburyAll.png images/temperatures
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Code/SunburyAll_UTCI.png images/temperatures
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Code/SunburyAll_UTCI_AOI.png images/temperatures

rm TargetHtc.glsdefs
bibtex TargetHtc.aux
makeglossaries  TargetHtc
#pdflatex -file-line-error -synctex=1 -interaction=nonstopmode TargetHtc.tex
makeindex VTUF-TargetHtc.nlo -s nomencl.ist -o TargetHtc.nls
pdflatex -file-line-error -synctex=1 -interaction=errorstopmode --shell-escape TargetHtc.tex
#makeindex elsarticle-template.nlo -s nomencl.ist -o elsarticle-template.nls
bibtex TargetHtc.aux
