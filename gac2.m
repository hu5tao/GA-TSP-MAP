function[bestpop,tracebest]=gac(d,termOps,num,pc,cxops,pm,alpha)
%[bestpop,trace]=ga(D,termOps,num,pc,cxOps,pm,alpha) 
%D:距离矩阵
 %termOps:种群带数
 %num:每带染色体的个数
 %pc:交叉概率
 %cxops:由于本程序采用单点交叉，交叉点的设置在本程序中没有很好的解决，所以本文了采用定点，即第cxops，可以随机产生。
 %pm:变异概率
 %alpha:评价函数eval(Vi)=alpha*(1-alpha).^(i-1). 
 %bestpop:返回的最优种群
 %trace:进化轨迹
 load datajulijuzhen
 d=RANGENEW;
citynum=size(d,2);%返回列数
n=nargin;

    termOps=100;
    num=100;
    pc=0.25;
    cxops=3;
    pm=0.3;
    alpha=0.10;
[T]=initializega(num,citynum); %初始化，得到一个50*5的随机矩阵
for i=1:termOps 
        [L]=f(d,T);    %计算适应度，取反或者取倒数（因为距离之和要求最小，相应的适度函数最大，距离之和为整数，可以取反或者取倒数），
        [x,y]=find(L==max(L)); %得到50个染色体当中适应度最大的，；
        trace(i)=-L(y(1));
        bestpop1(i,:)=T(y(1),:);
%         [T]=select(T,L,alpha);
         [T]=select_2(T,L);
%          [G]=grefenstette(T); 
        [T]=crossover_2(T,pc,cxops); 
%         [G]=mutation(G1,pm);  %均匀变异,permutation:序列，排列
        [T]=mutation_dynamic(T,pm,termOps,i);
%  [T]=congrefenstette(G);
end
index=find(trace==min(trace));
bestpop=bestpop1(index(1),:);
tracebest=trace(index(1));
fprintf('最短路径为：%0.5f\n',tracebest);
end
 function [T]=initializega(num,citynum)%生成50*5的随机矩阵，比如第一行 1 2 4 5 3
  for i=1:num     
  T(i,:)=randperm(citynum); 
  end
 end
 function [L]=f(D,T)%d为距离矩阵，T为产生的50*5的随机矩阵
[m,n]=size(T); 
for k=1:m     
     for i=1:n-1       
         l(k,i)=D(T(k,i),T(k,i+1));     
     end
     l(k,n)=D(T(k,n),T(k,1));      
     L(k)=-sum(l(k,:)); %取负号求适度最大
 end
 end

 function [T]=select(T,L,alpha) 
     [m,n]=size(L); 
     T1=T; 
     [beforesort,aftersort1]=sort(L,2);%fsort from l to u ，，，，sort:从小到大排序，sort(L,2)横向排列；sort(L,1)纵向排列
     for i=1:n     
         aftersort(i)=aftersort1(n+1-i);      %change  
     end
     for k=1:n;     
         T(k,:)=T1(aftersort(k),:);     
         L1(k)=L(aftersort(k)); 
     end
     T1=T; 
     L=L1; 
     for i=1:size(aftersort,2)     
         evalv(i)=alpha*(1-alpha).^(i-1); 
     end
     m=size(T,1);
     q=cumsum(evalv); %cumsum(A) 返回一个和A同行同列的矩阵，矩阵中第m行第n列元素是A中第1行到第m行的所有第n列元素的累加和；
     qmax=max(q);
     for k=1:m     
         r=qmax*rand(1);     
         for j=1:m         
             if j==1&r<=q(1)             
                 T(k,:)=T1(1,:);         
             elseif j~=1&r>q(j-1)&r<=q(j)             
                 T(k,:)=T1(j,:);         
             end
         end
     end
 end 
  function [T]=select_2(T,L) 
     [m,n]=size(T); 
     L1=-L;
     sum1=sum(L1);
    for i1=1:m
        p(i1)=L1(i1)/sum1;
        if(i1==1)
            q(i1)=p(i1);
        end
        if(i1>1)
            q(i1)=p(i1)+q(i1-1);
        end       
    end
    for i2=1:m
         r=rand(1,1);

         for j2=1:m
            if(j2==1)
                if(r<q(j2))
                    T(i2,:)=T(j2,:);
                end
            end
            if(j2>1)
                if(q(j2-1)<r<q(j2))
                    T(i2,:)=T(j2,:);
                     break;
                end
            end
         end
    end 
 end 
 
function [G]=grefenstette(T) 
    [m,n]=size(T); 
    for k=1:m     
        T0=1:n;    
        for i=1:n 
           for j=1:length(T0)            
               if T(k,i)==T0(j)               
                   G(k,i)=j;               
                   T0(j)=[];              
                   break            
               end
           end
        end
    end
end
function [G]=crossover(G,pc,cxOps) 
       [m,n]=size(G); 
       ran=rand(1,m); 
       r=cxOps; 
       [x,ru]=find(ran<pc); 
       if ru>=2     
           for k=1:2:length(ru)-1        
               G1(ru(k),:)=[G(ru(k),[1:r]),G(ru(k+1),[(r+1):n])];        
               G(ru(k+1),:)=[G(ru(k+1),[1:r]),G(ru(k),[(r+1):n])];        
               G(ru(k),:)=G1(ru(k),:);     
           end
       end
end
function [G]=crossover_2(G,pc,cxOps)    %TSP经典交叉方法，详见自然算法PPT141
       [m,n]=size(G); 
       ran=rand(1,m); 
       r=cxOps; 
       [x,ru]=find(ran<pc); 
       if ru>=2     
           for k=1:2:length(ru)-1             
               G1(1,:)=G(ru(k),:);
               G2(1,:)=G(ru(k+1),:);
               cnt=0;
               cnt1=0;
%               [x1,mu01]=find(G(ru(k),:)==G(ru(k+1),k1));
               for k2=1:n                         
                   int=1;
                   int1=1;
                   for k3=1:r
                       if(G(ru(k),k2)==G(ru(k+1),k3))
                          int=0;
                          break;
                        end
                   end
                   for k3=1:r
                       if(G(ru(k+1),k2)==G(ru(k),k3))
                           int1=0;
                           break;
                       end
                   end
                   if(int~=0)
                       cnt=cnt+1;
                       G1(r+cnt)=G(ru(k),k2);
                   end
                   if(int1~=0)
                       cnt1=cnt1+1;
                       G2(r+cnt1)=G(ru(k+1),k2);
                   end
               end 
               G1(1:3)=G(ru(k+1),1:3);
               G2(1:3)=G(ru(k),1:3);
               G(ru(k),:)=G1(:);
               G(ru(k+1),:)=G2(:);
           end
       end
   end
function [G]=mutation(G,pm)    %均匀变异
 [m,n]=size(G);
 ran=rand(1,m); 
 r=rand(1,3);      %dai gai jin 
 rr=floor(n*rand(1,3)+1); 
 [x,mu]=find(ran<pm); 
   for k=1:length(mu)     
     for i=1:length(r)         
         umax(i)=n+1-rr(i);         
         umin(i)=1;         
         G(mu(k),rr(i))=umin(i)+floor((umax(i)-umin(i))*r(i));     
     end
   end
end
function [G]=mutation_dynamic(G,pm,temps,i)    %非均匀性变异
 [m,n]=size(G);
 ran=rand(1,m); 
%  r=rand(1,3);      %dai gai jin 
%  rr=floor(n*rand(1,3)+1); 
 [x,mu]=find(ran<pm); 
   for k1=1:length(mu)
       ran1=rand(1);
%        ran2=floor(n*(i/temps)^2);
       ran2=floor(ran1*n);
       [x,k2]=find(G(mu(k1),:)==ran2);
       k2=ceil(k2*(i/temps));
       if(k2==n+1)
           k2=n;
       end
      if(k2<n/2)
%           xmax=n-k;
          xmin=k2;
          xk=floor(xmin*ran1*((1-i/temps)^2));
          c=G(mu(k1),k2);
          G(mu(k1),k2)=G(mu(k1),k2+xk);
          G(mu(k1),k2+xk)=c;
      end
      if(k2>=n/2)
          xmin=n-k2;
          xk=floor(xmin*ran1*((1-i/temps)^2));
          c=G(mu(k1),k2);
          G(mu(k1),k2)=G(mu(k1),k2-xk);
          G(mu(k1),k2-xk)=c;
      end
   end
end
function [T]=congrefenstette(G) 
     [m,n]=size(G); 
     for k=1:m     
         T0=1:n;    
         for i=1:n       
             T(k,i)=T0(G(k,i));       
             T0(G(k,i))=[]; 
         end
     end
end
      