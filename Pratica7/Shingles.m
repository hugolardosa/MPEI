function [shinglematrix] = Shingles(users,listOfFilms, set)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
shinglematrix = zeros(length(user),length(listOfFilms));
for i = 1:length(users)
    for j= length(listOfFilms)
        if(listOfFilms == set{j})
            shinglematrix(i,j) = 1;
        end
    end
end

