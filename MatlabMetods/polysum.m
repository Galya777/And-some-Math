function s=polysum(p,q)
% Presmjata suma ili razlika na wektori, kato izrawnjawa dyljinite im.
%
% C=polysum(p,q) ili C=polysum(p,-q)
% length(C)=max(length(p),length(q))
maxlen=max(length(p),length(q));
p1=zeros(1,maxlen);
q1=zeros(1,maxlen);
p1(maxlen-length(p)+1:maxlen)=p;
q1(maxlen-length(q)+1:maxlen)=q;
s=p1+q1;
end

