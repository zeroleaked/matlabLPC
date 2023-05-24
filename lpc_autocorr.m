function [a, e] = lpc_autocorr(x, p)
    % Computes the LPC coefficients using the autocorrelation method
    % Inputs:
    %   x: input signal (column vector)
    % Outputs:
    %   a: LPC coefficients (column vector)
    %   e: prediction error variance
    
    % Compute autocorrelation vector   
    R = my_autocorr(x, p);

    % Construct autocorrelation matrix
    Rmat = my_toeplitz(R(p+1:end-1));

    % Construct target vector
    r = R(p:-1:1);
    
    % Solve for LPC coefficients
    a = [1; my_linsolve(Rmat, r)];
    a(2:end) = -a(2:end);
    e = R(1) - sum(R(2:p+1) .* a(1:p));
end
