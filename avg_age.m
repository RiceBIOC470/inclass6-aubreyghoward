%returns the average age of the students in Q1.

function [Avg] = avg_age(x)
    if isfield(x,'age')
    Avg = mean([x.age]);
    else
    disp('no ages inputed')
end