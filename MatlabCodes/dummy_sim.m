clear all;
close all;

plotting = false;
alg_fmincon = 'sqp';
fixed_horizon = true;
sim_perception_range = false;
sim_noise = false;
sigma_2 = (0.15/3)^2;
eps_loose_grip = 0.15;

N_short = 5;
N_long = 15;
N_fixed = 20;

env_name = "valzer"; % "no_obs", "two_obs", "three_obs", "valzer"

fprintf(['plotting=%d, alg_fmincon=%s, fixed_horizon=%d, sim_perception_range=%d, sim_noise=%d, ' ...
         'sigma_2=%.5f, eps_loose_grip=%.2f, N_short=%d, N_long=%d, N_fixed=%d, env_name=%s\n'], ...
        plotting, alg_fmincon, fixed_horizon, sim_perception_range, sim_noise, ...
        sigma_2, eps_loose_grip, N_short, N_long, N_fixed, env_name);


traj_fig_name = "trajectory.jpg";
coord_fig_name = "coordinates.jpg";
vel_fig_name = "velocities.jpg";
obj_dist_fig_name = "obstacle_distance.jpg";
times_fig_name = "times.jpg";
obs_fig_name = "obs.jpg";

simCooperativeTransport;