function MMcreate()

fid=fopen('list2019.txt','r'); %opens the password file

MM=zeros(95,95); %pre-allocates the Markov Model matrix for efficiency

while ~feof(fid) %following code executes as long the end of the file is not met
    line=split(fgetl(fid)); %separates the password from the number of times it was written
    pw=char(line(2));
    number=str2double(line(1));
    for i=1:length(pw) %updated the MM-matrix for each bigram in the password
       to=pw(i)-31;
       if i-1==0
           MM(1,to)=MM(1,to)+number;
           continue;
       end
       from=pw(i-1)-31;
       MM(from,to)=MM(from,to)+number;
    end
end

%converts the values in MM to probabilities between 0 and 1
rowsum=sum(MM,2);
for i=1:size(MM,1)
    MM(i,:)=MM(i,:)/rowsum(i);
end


save('model2019.mat','MM'); %saves the variable



