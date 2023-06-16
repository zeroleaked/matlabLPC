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
    R = my_autocorr(x);
    
    % Solve for LPC coefficients
    a = durbin(R(1), R(2:11), 10);

    residue = my_conv(a, x, p+1, x_len);
    residue = residue(1:x_len);
end
