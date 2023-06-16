function echelon = gauss_elim(aug)
% Menyelesaikan sistem persamaan linear Ax = b
% Inputs:
%   - A: Matriks augmentasi
% Outputs:
%   - x: Vektor solusi

% Menentukan ukuran matriks koefisien
echelon = aug;

for i = 1:9 %pivots
    pivot = echelon(i,i);
    for j = i+1:10 %targets to eliminate
        target = echelon(j,i);
        factor = target/pivot;
        for k = i+1:11
            pivot_row = echelon(i,k);
            target_row = echelon(j,k);
            echelon(j,k) = target_row - pivot_row * factor;
        end
    end
end



end
