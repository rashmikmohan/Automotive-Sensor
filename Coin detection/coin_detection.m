image=imread('test2.jpg'); % reading the input test1 image
image1=rgb2gray(image);%convert the RGB to Gray scale
ref=edge(image1,'canny'); %Canny Edge Detected image
imshow(ref) 
r = 30;% fixed radius (either 30,35,40)
%parameterization
[x,y] = size(ref);%storing input image dimension
%initialising parameters
xmin = 0 - r;
xmax = x + r;
ymin = 0 - r;
ymax = y + r;
a0= (xmin:1:xmax); %a0 limit (center) 
b0 = (ymin:1:ymax);%b0 limit (center)
theta_sampling_frequency = 0.01; %set the theta sampling freq to 0.01
theta_1 = (0:theta_sampling_frequency:2*pi);%gradient angle in radians
num_a = numel(a0); %returns prod(size(a0))
num_b= numel(b0);%returns prod(size(b0))
num_theta = numel(theta_1);%returns prod(size(theta))
acc= zeros(num_a, num_b);%define the accumulator
%performing hough transform
for xi= 1:x
    for yj= 1:y
        if ref(xi,yj)==1 
            for theta_id= 1:num_theta
                th=theta_1(theta_id); 
                a=round((xi-r.*cos(th))+r);
                b=round((yj-r.*sin(th))+r);
         acc(a,b)=acc(a,b)+1;     
            end
        end
    end
end
%showing points in the parameter space
figure;
imagesc(a0, b0, acc);%Display image with scaled colors
title('Hough Transform');
xlabel('a');
ylabel('b');
colormap('gray');
hold on;
%extracting the parameters
[M,I] = max(acc(:));%detecting one line
[a , b] = ind2sub(size(acc),I);%a and b parameter values obtained in Hough transform space 
plot(a0(a),b0(b), 'o','LineWidth',3,'Color','g')
hold off
%circle in x,y plane
theta_new=0:pi/6:2*pi;
anew = r * cos(theta_new) + a0(a); %anew coordinates
bnew = r * sin(theta_new) + b0(b);%bnew coordinates
plot(anew, bnew)
%plot the superimposing detected circle on original
figure
subplot(1,2,1)
imagesc(ref);
colormap(gray);
hold on;
plot(bnew,anew,'c','linewidth',2)
subplot(1,2,2)
imagesc(image);
colormap(gray);
hold on;
plot(bnew,anew,'r','linewidth',2) 
