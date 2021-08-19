image=imread('lena.bmp'); %loading Lena.bmp image into memory
imshow(image); %display Lena.bmp
reference=edge(image,'canny',0.1,1); %f(i,j) reference canny image
imshow(reference)
%noise1 for variance 0.01
noise1=imnoise(image,"gaussian",0,0.01); %noise of variance=0.01
imshow(noise1)
prewitt_1=edge(noise1,'prewitt'); %prewitt edge detection for image
with noise of variance 0.01
imshow(prewitt_1)
Sobel_1=edge(noise1,'sobel'); %Sobel edge detection for image with
noise of variance 0.01
imshow(Sobel_1)
LoG_1=edge(noise1,'LoG'); %Laplace of Gaussian edge detection for
image with noise of variance 0.01
imshow(LoG_1)
Canny_1=edge(noise1,'canny'); %Laplace of Gaussian edge detection for
image with noise of variance 0.01
imshow(Canny_1)
%calculating Sobel RMSE value
mse_Sobel_1=(1/(512*512))*(Sobel_1-reference).^2;
ans=sum(sum(mse_Sobel_1))
rmse_Sobel_1=sqrt(ans)
%Prewitt RMSE
mse_prewitt_1=(1/(512*512))*(prewitt_1-reference).^2;
ans=sum(sum(mse_prewitt_1))
rmse_prewitt_1=sqrt(ans)
%LoG RMSE
mse_LoG_1=(1/(512*512))*(LoG_1-reference).^2;
ans=sum(sum(mse_LoG_1))
rmse_LoG_1=sqrt(ans)
%Canny RMSE
mse_Canny_1=(1/(512*512))*(Canny_1-reference).^2;
ans=sum(sum(mse_Canny_1))
rmse_Canny_1=sqrt(ans)
%for noise_2 of variance 0.1
noise2=imnoise(image,"gaussian",0,0.05); %noise of variance=0.01
imshow(noise2)
prewitt_2=edge(noise2,'prewitt'); %prewitt edge detection for image
with noise of variance 0.01
imshow(prewitt_2)
Sobel_2=edge(noise2,'sobel'); %Sobel edge detection for image with
noise of variance 0.01
imshow(Sobel_2)
LoG_2=edge(noise2,'LoG'); %Laplace of Gaussian edge detection for
image with noise of variance 0.01
imshow(LoG_2)
of variance 0.01
imshow(Canny_3)
%calculating Sobel RMSE value
mse_Sobel_3=(1/(512*512))*(Sobel_3-reference).^2;
ans=sum(sum(mse_Sobel_3))
rmse_Sobel_3=sqrt(ans)
%Prewitt RMSE
mse_prewitt_3=(1/(512*512))*(prewitt_3-reference).^2;
ans=sum(sum(mse_prewitt_3))
rmse_prewitt_3=sqrt(ans)
%LoG RMSE
mse_LoG_3=(1/(512*512))*(LoG_3-reference).^2;
ans=sum(sum(mse_LoG_3))
rmse_LoG_3=sqrt(ans)
%Canny RMSE
mse_Canny_3=(1/(512*512))*(Canny_3-reference).^2;
ans=sum(sum(mse_Canny_3))
rmse_Canny_3=sqrt(ans)
%for noise_4 of variance 0.5
noise4=imnoise(image,"gaussian",0,0.5); %noise of variance=0.01
imshow(noise4)
prewitt_4=edge(noise4,'prewitt'); %prewitt edge detection for image
with noise of variance 0.01
imshow(prewitt_4)
Sobel_4=edge(noise4,'sobel'); %Sobel edge detection for image with
noise of variance 0.01
imshow(Sobel_4)
LoG_4=edge(noise4,'LoG'); %Laplace of Gaussian edge detection for
image with noise of variance 0.01
imshow(LoG_4)
Canny_4=edge(noise4,'canny'); %Laplace of Gaussian edge detection for
image with noise of variance 0.01
imshow(Canny_4)
%calculating Sobel RMSE value
mse_Sobel_4=(1/(512*512))*(Sobel_4-reference).^2;
ans=sum(sum(mse_Sobel_4))
rmse_Sobel_4=sqrt(ans)
%Prewitt RMSE
mse_prewitt_4=(1/(512*512))*(prewitt_4-reference).^2;
ans=sum(sum(mse_prewitt_4))
rmse_prewitt_4=sqrt(ans)
%LoG RMSE
mse_LoG_4=(1/(512*512))*(LoG_4-reference).^2;
ans=sum(sum(mse_LoG_4))
rmse_LoG_4=sqrt(ans)
%Canny RMSE
mse_Canny_4=(1/(512*512))*(Canny_4-reference).^2;
ans=sum(sum(mse_Canny_4))
rmse_Canny_4=sqrt(ans)
%for noise_4 of variance 1
noise5=imnoise(image,"gaussian",0,1); %noise of variance=0.01
imshow(noise5)
prewitt_5=edge(noise5,'prewitt'); %prewitt edge detection for image
with noise of variance 0.01
imshow(prewitt_5)
Sobel_5=edge(noise5,'sobel'); %Sobel edge detection for image with
noise of variance 0.01
imshow(Sobel_5)
LoG_5=edge(noise5,'LoG'); %Laplace of Gaussian edge detection for
image with noise of variance 0.01
imshow(LoG_5)
Canny_5=edge(noise5,'canny'); %Laplace of Gaussian edge detection for
image with noise of variance 0.01
imshow(Canny_5)
%calculating Sobel RMSE value
mse_Sobel_5=(1/(512*512))*(Sobel_5-reference).^2;
ans=sum(sum(mse_Sobel_5))
rmse_Sobel_5=sqrt(ans)
%Prewitt RMSE
mse_prewitt_5=(1/(512*512))*(prewitt_5-reference).^2;
ans=sum(sum(mse_prewitt_5))
rmse_prewitt_5=sqrt(ans)
%LoG RMSE
mse_LoG_5=(1/(512*512))*(LoG_5-reference).^2;
ans=sum(sum(mse_LoG_5))
rmse_LoG_5=sqrt(ans)
%Canny RMSE
mse_Canny_5=(1/(512*512))*(Canny_5-reference).^2;
ans=sum(sum(mse_Canny_5));
rmse_Canny_5=sqrt(ans)
%OUTPUT IN SUBPLOTS
subplot(2,3,1),imshow(prewitt_1)
subplot(2,3,2),imshow(prewitt_2)
subplot(2,3,3),imshow(prewitt_3)
subplot(2,3,4),imshow(prewitt_4)
subplot(2,3,6),imshow(prewitt_5)
subplot(2,3,1),imshow(Sobel_1)
subplot(2,3,2),imshow(Sobel_2)
subplot(2,3,3),imshow(Sobel_3)
subplot(2,3,4),imshow(Sobel_4)
subplot(2,3,6),imshow(Sobel_5)
subplot(2,3,1),imshow(LoG_1)
subplot(2,3,1),imshow(LoG_1)
subplot(2,3,2),imshow(LoG_2)
subplot(2,3,3),imshow(LoG_3)
subplot(2,3,4),imshow(LoG_4)
subplot(2,3,6),imshow(LoG_5)
subplot(2,3,1),imshow(Canny_1)
subplot(2,3,2),imshow(Canny_2)
subplot(2,3,3),imshow(Canny_3)
subplot(2,3,4),imshow(Canny_4)
subplot(2,3,6),imshow(Canny_5)