side = 80; %the length of the area
lambda = 0.01; %the intensity of nodes
N = round(side*side*lambda);%the number of nodes
x = zeros(1,N);% the x-coordinate of points
y = zeros(1,N);% the y-coordinate of points

for i = 1:N
  x(i) = rand(1)*side;
  y(i) = rand(1)*side;
end

voronoi(x,y);
