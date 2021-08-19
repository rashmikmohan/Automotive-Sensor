function [rotationmatrix] = rotz(ang)
angle=ang*(pi/180);
r=[cos(angle),-sin(angle),0;sin(angle),cos(angle),0;0,0,1];
rotationmatrix=r;
end

