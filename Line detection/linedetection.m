image=imread('test1.bmp'); % reading the input test1 image
image1=rgb2gray(image); %convert the RGB to Gray scale
ref=edge(image1,'canny');%Canny Edge Detected image
imshow(ref);
%parameterization
theta_sampling_frequency=0.01; %set the theta sampling freq to 0.01
[x,y]=size(ref); %storing input image dimension
rho=norm([x,y]); %norm of input image
rho_range=(-rho:1:rho);%range of rho
theta=(0:theta_sampling_frequency:pi); %gradient angle in radians
num_theta=numel(theta); %returns prod(size(theta))
num_rho = numel(rho_range);%returns prod(size(rho))
acc=zeros(num_rho,num_theta); %hough space accumulator
%performing hough transform
for xi= 1:x
    for yj= 1:y
        if ref(xi,yj)==1
            for theta_id= 1:num_theta
                th=theta(theta_id);
                r=xi*cos(th)+yj*sin(th);
                rho_id=round(r+num_rho/2);
                acc(rho_id,theta_id)=acc(rho_id,theta_id)+1;
            end
        end
    end
end
imagesc(theta,rho_range,acc)%Display image with scaled colors
title('Hough Transform');
xlabel('Theta in radians');
ylabel('Rho in pixels');
colormap('gray');hold on;
%extracting parameters 
[M,I]=max(acc(:)); %detecting one line
[rho_id,theta_id]=ind2sub(size(acc),I); %rho_id and theta_id parameter values obtained in Hough transform space 
plot(theta(theta_id),rho_range(rho_id),'o','linewidth',3);
hold off
m=-(cos(theta(theta_id))/sin(theta(theta_id))); %slope
b=(rho_range(rho_id)/sin(theta(theta_id))); %intercept
x=1:x; %x coordinates
y=m*x+b; % y cordinates i.e equation of a line
plot(x,y)%Computing the Line in  X and Y coordinates
%plot the superimposing detected line on original
figure()
subplot(1,2,1)
imagesc(ref);
colormap(gray)
hold on;
plot(y,x,'g','linewidth',2)
subplot(1,2,2)
imagesc(image);
colormap(gray);
hold on
plot(y,x,'linewidth',2)
