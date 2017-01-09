A = [1 2 3; 4 5 6; 7 8 9; 10 11 12; 13 14 15];
B = [1 1 1 1 1; 2 2 2 2 2; 3 3 3 3 3];
R = [ 1 0 0 0 1; 1 1 1 0 0;0 0 0 1 0;1 0 1 0 1;0 0 0 1 1];



C = A * B;
total = 0;
for i = 1:5
	for j = 1:5
		if (R(i, j) == 1)
			total = total + C(i, j);
		end
	end
end

total1 = sum(sum((A * B) .* R))
total2 = sum(sum((A * B) * R))


C = (A * B) * R;
total3 = sum(C(:))

disp(total)