function difference = mySSD(MatrixP,MatrixQ)
difference=sum(sum(abs(MatrixP-MatrixQ)));%SSD calculation
end
