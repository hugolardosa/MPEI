function [J] = JaccardDistance(users,Set)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
Nu = length(users);
J = zeros(Nu,Nu);
for n1= 1:Nu
    for n2=n1+1:Nu
         %%distância de Jaccard
            int=intersect(Set{users(n1)},Set{users(n2)});
            un=union(Set{users(n1)},Set{users(n2)});
            J(n1,n2)=1-(length(int)/length(un));
    end
end

end

