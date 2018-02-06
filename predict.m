function verdict = predict(X, theta)

Z = X * theta;
if sigmoid(Z) >= 0.50
    fprintf('POSITIVE');
else
    fprintf('NEGATIVE');
    
end
end