function [] = CorrectionMakr(sampMean1,sampMean2, sampSTD, alpha,coolor)

pArray=zeros(1,1000);
for testr=1:1000
samp1 = sampSTD*randn(1000,1) + sampMean1; samp2 = sampSTD*randn(1000,1) + sampMean2;
[~,pArray(testr)]=ttest(samp1,samp2);
end
figure
histogram(pArray,'BinWidth',0.05, 'facecolor', coolor); vline(0.05, 'k')
BonfRate=sum(pArray < (alpha/length(pArray)) )*100;
sigWFDR=fdr_bh(pArray); FDRrate= sum(pArray==1/length(pArray))*100;
title([num2str((sum(pArray<alpha)/length(pArray) )*100 ), ' % sig w/o correction ',...
    num2str(BonfRate), ' % sig w/ bonf correction ',...
    num2str(FDRrate), ' % sig w/ BHP'])
xlabel('pvals')


