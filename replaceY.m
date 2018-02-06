function y = replaceY(y)

for i = 1:length(y)
    if y(i) > 0
        y(i) = 1;
    end
end
