%1. a. Write a function which takes as inputs: a. a cell array of names. b.
% an array of numbers with the ages corresponding to the names, and c. a binary
% variable which is a P/F grade (true for pass) and returns a structure
% array called students with one structure storing this information for each student.

function [students] = makestudents (names,ages,PF)
    students = struct('name',names,'age',ages,'ispassfail',PF)
end
    