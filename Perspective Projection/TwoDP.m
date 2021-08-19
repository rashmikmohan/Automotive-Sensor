function [r] =TwoDP(X,Y,Z) 
f=1;%focal length=1
%from similarity of triangles- 2D perpective points can be obtained
x = f*(X./Z); 
y=f*(Y./Z);
MatrixP=[x',y']
end