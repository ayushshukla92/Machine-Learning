function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

X=[ones(m,1) X];
hl_size=size(Theta1,1)+1;
for j=1:m
    hidden_layer=ones(hl_size,1);
    for i=2:hl_size
        hidden_layer(i)=sigmoid(X(j,:)*(Theta1(i-1,:))');
    end
    final=zeros(10,1);
f_size=size(Theta2,1); 
    for i=1:f_size
        final(i)=sigmoid(hidden_layer'*(Theta2(i,:))');     
    end
    [maxi p(j)]=max(final);
    

end



% =========================================================================


end
