function [noise] = meas_noise(sigma_2, sigma_2_t, sigma_2_v, sigma_2_o, sim_noise)
%MEAS_NOISE function that computes a normal noise with covariance sigma_2
%if sim_noise =1
% noise only for x and y coordinates
    if sim_noise

        R1 = chol(sigma_2);
        R2 = chol(sigma_2_t);
        R1_dot = chol(sigma_2_v);
        R2_dot = chol(sigma_2_o);
        
        noise_p = [randn*R1; randn*R1];
        noise_t = randn*R2;
        noise_v = [randn*R1_dot; randn*R1_dot];
        noise_o = randn*R2_dot;

        noise = [noise_p; noise_t; noise_v; noise_o];
    
    else
        noise = 0;
    end
end

