function [noise] = meas_noise(sigma_2, sigma_2_v, sim_noise)
%MEAS_NOISE function that computes a normal noise with covariance sigma_2
%if sim_noise =1
% noise only for x and y coordinates
    if sim_noise
        R1 = chol(sigma_2);
        R2 = chol(sigma_2_v);
        noise = [randn*R1; randn*R1; randn*R2; randn*R2];
    else
        noise = 0;
    end
end

