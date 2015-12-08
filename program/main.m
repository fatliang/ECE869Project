lambda = [1e-6,1e-4];
pw = [1,1e-4];
p_array = [0.1 0.2 0.3:0.2:0.9];
marks = {'-x','-o','-*','-s','-d','-^'};
threshold_dB = [-5:15];
threshold = 10.^(threshold_dB/10); 
figure();
legend_text = {};
for i = 1:length(p_array)
    p = [p_array(i) p_array(i)];
    ccdf = CCDF_SIR(lambda,pw,p,threshold);
    plot(threshold_dB, 1-ccdf, marks{i});
    hold on;
    legend_text{i} = sprintf('p_1 = p_2 = %.1f',p_array(i));
end

% ccdf_single = CCDF_SIR(lambda(1),pw(1),0.5,threshold);
% plot(threshold_dB, 1-ccdf_single, '-v');
% legend_text{length(legend_text)+1} = sprintf('p = 1, single tier');

grid on;
xlabel('SIR Threshold (dB)');
ylabel('Outage Probability');
legend(legend_text);

