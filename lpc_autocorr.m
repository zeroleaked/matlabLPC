function [a, residue] = lpc_autocorr(x)
    % Computes the LPC coefficients using the autocorrelation method
    % Inputs:
    %   x: input signal (column vector)
    %   p: order of LPC analysis
    % Outputs:
    %   a: LPC coefficients (column vector)
    p = 10;
    x_len = 160;
    
    % Compute autocorrelation vector
    R = my_autocorr(x, p, x_len);
    
    
    % Construct autocorrelation matrix
    Rmat = my_toeplitz(R(1:end-1));

    % Construct target vector
    r = R(2:end);
    
    % Solve for LPC coefficients
    a = [1; my_linsolve(Rmat, r)];
    a(2:end) = -a(2:end);
    residue = my_conv(a, x, p+1, x_len);
    residue = residue(1:x_len);
end
