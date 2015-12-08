function res = CCDF_SIR(lambda,pw,p,theta)
%return Pr{SIR > theta}
numerator = sum(lambda.*sqrt(pw));
level = length(lambda);
denominator = 0;
for i = 1:level
  tmp = lambda(i)*sqrt(pw(i))*(1+p(i)*sqrt(theta).*(pi/2-atan(1./sqrt(theta))));
  denominator = denominator + tmp;
end
res = numerator./denominator;