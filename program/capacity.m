function res = capacity(lambda,pw,p)
ccdf = @(x)CCDF_SIR(lambda,pw,p,exp(x)-1);
res = integral(ccdf,0,Inf);