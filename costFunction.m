function [J,grad] = costFunction(theta,X,y,lambda)

m = length(y);
n = length(theta);
J = 0;
trans_X = X'
grad = zeros(size(theta));
hypothesis = sigmoid(X * theta);



J = -(1/m) * ((y' * log(hypothesis)) + (1 - y') * (log(1 - hypothesis))) ...
    + ((lambda/(2*m)) * sum(theta([2:n], :).^2));


grad(1) = (1/m) * trans_X(1,:) *  (hypothesis - y);
grad(2:n) = (1/m) * trans_X([2:n],:) * (hypothesis - y) ... 
    + (lambda/m) .* theta(2:n);




end


