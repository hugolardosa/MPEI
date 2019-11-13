function [Y] = string2hash_v2(string,N)
%UNTITLED Summary of this function goes here
    string=double(string);
    hash = 5381*ones(size(string,1),1); 
    for i=1:size(string,2)
        hash = mod(hash * 33 + string(:,i), N); 
    end
end

