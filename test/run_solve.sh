# bash script to execute FEA python files   

# ENTER file path and input filename (without file ending)

input_path='./input_files/truss_test/'
output_path='./results/truss_test/'

filename=(
# Truss Models
"rod_fixed_displacement"
"rod_fixed_point_load"
"plane_truss_triangle_F"
"plane_truss_triangle_U"
"plane_bridge_structure_LC_1"
"plane_bridge_structure_LC_2"
"truss_structure_w_six_members"
# Beam Models
# "beam_w_square_cross_section_LC_1"
# "beam_w_square_cross_section_LC_2"
# "beam_w_square_cross_section_LC_3"
# "beam_w_square_cross_section_LC_4"
# "beam_w_distributed_load"
# "portal_frame_w_distr_load"
# "plane_bridge_structure"
# Truss/Beam Models
# "ws_11_12"
# "ss_09"
# "ss_10"
# "ws_09_10"
)

# run python 1D FE solver
# tee $output_path$file.log saves the screen outputs to a log file. Delete if no log file save should be saved

for file in "${filename[@]}"; do
    python main_sol_linear_static.py --infile $input_path$file.txt --outpath $output_path
done

echo 'Done bash run.'   
