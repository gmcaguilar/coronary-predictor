function p = accuracy(X, theta)

m = size(X,1);
p = zeros(m,1);

for i = 1:m
    if sigmoid(X(i,:) * theta) >= 0.50
        p(i) = 1;
    else
        p(i) = 0;
        
    end
end



