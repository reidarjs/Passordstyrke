function score=MMcheck(pw)

load('model2019.mat','MM'); %loads the Markov model


probs=zeros(1,length(pw));%pre-alloctes a vector to contain all probablities

for i=1:length(pw) %looks up the MM-value for all bigrams and updates probability-vector
    charto=double(pw(i)-31);
    if i==1
        probs(i)=MM(1,charto);
        continue;
    end
    
    charfrom=double(pw(i-1)-31);
    probs(i)=MM(charfrom,charto);
end

%calculates the score as defined in the slides
productprob=prod(probs);
score=log(1/productprob);