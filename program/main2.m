lambda = [1e-6,1e-4];
pw = [1,1e-4];
p_array = [0.1:0.1:1];
cap_av = zeros(size(p_array));%spatial average
for i = 1:length(p_array)
  p = [p_array(i) p_array(i)];
  cap = capacity(lambda,pw,p);
  cap_av(i) = sum(p.*lambda)*cap;
  %cap_av(i) = cap;
end

figure();
plot(p_array,cap_av,'-o');
grid on;
xlabel('Access probability p');
ylabel('Spatial average of channel capacity (nat/m^2)');