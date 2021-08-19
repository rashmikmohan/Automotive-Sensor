function [matrixQ]=weakp(X,Y,Z0)
%focal length=1
%from similarity of triangles- 2D weak perpective points can be obtained
f=1;
x = f*(X./Z0);
y=f*(Y./Z0);
matrixQ=[x',y']
end

