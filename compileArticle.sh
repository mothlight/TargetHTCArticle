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

cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/Sunbury1.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/Sunbury2.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/Sunbury3.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/Sunbury4.png images/

cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/SunburyDiff12.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/SunburyDiff23.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/SunburyDiff34.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/SunburyDiff13.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/SunburyDiff14.png images/


cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/Sunbury1_Small.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/Sunbury2_Small.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/Sunbury3_Small.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/Sunbury4_Small.png images/

cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/SunburyDiff12_Small.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/SunburyDiff23_Small.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/SunburyDiff34_Small.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/SunburyDiff13_Small.png images/
cp -u /home/kerryn/git/2018-03-TargetHtcArticle/Data/SunburyLC/SunburyDiff14_Small.png images/

rm TargetHtc.glsdefs
bibtex TargetHtc.aux
makeglossaries  TargetHtc
#pdflatex -file-line-error -synctex=1 -interaction=nonstopmode TargetHtc.tex
makeindex VTUF-TargetHtc.nlo -s nomencl.ist -o TargetHtc.nls
pdflatex -file-line-error -synctex=1 -interaction=errorstopmode --shell-escape TargetHtc.tex
#makeindex elsarticle-template.nlo -s nomencl.ist -o elsarticle-template.nls
bibtex TargetHtc.aux
