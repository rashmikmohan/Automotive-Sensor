a=[  -1     1     0     0]; %defining the 3D x coordinates as a matrix a
b=[ 0     0     1    -1]; %defining the 3D y coordinates as a matrix b
c=[2     5     4     3]; %defining the 3D z coordinates as a matrix c
c0=mean(c); %Finding the average depth of the scene [2,5,4,3] (Z0)

%coordinate of perspective camera  projections
xc=MatrixP(:,1);
yc=MatrixP(:,2);
 
%coordinate of weak perspective camera  projections
xw=MatrixQ(:,1);
yw=MatrixQ(:,2);

%plot the transformed points from 3D to 2D
plot(xc,yc,'-ro',xw,yw,'-*b','Markersize',10)
fill(xc,yc,'r',xw,yw,'c')
legend('Perspective','weak perspective')
xlabel('X');
ylabel('Y')
title('2D projection of Image O using perspective and weak perspective projections')

%finding rotated perpective matrix P and rotated weak perspective matrix Q
RotatedP=(R*MatrixP')'
RotatedQ=(R*MatrixQ')'

figure;
%coordinate of rotated perspective camera  projections
xrc=RotatedP(:,1);
yrc=RotatedP(:,2);
 
%coordinate of rotated weak perspective camera  projections
xrw=RotatedQ(:,1);
yrw=RotatedQ(:,2);

%plot the rotated perspective and weak perspective
plot(xrc,yrc,'-ro',xrw,yrw,'-*b','Markersize',10)
fill(xrc,yrc,'r',xrw,yrw,'c')
legend('Rotated Perspective','Rotated weak perspective')
xlabel('X');
ylabel('Y')
title('2D projection of rotated perspective and weak perspective projections','Fontsize',12)
% Calculation of SSD of rotated image:
mySSD(RotatedP,RotatedQ)

