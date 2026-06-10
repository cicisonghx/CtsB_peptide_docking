# CtsB peptide docking visualization
# Overview figures
reinitialize
load ctsb2_chainA.pdb
load GFLG_v2_best.pdb
hide everything
show surface, ctsb2_chainA
show cartoon, ctsb2_chainA
show sticks, GFLG_v2_best
show sticks, ctsb2_chainA and resi 26+199
color lightblue, ctsb2_chainA
util.cbac GFLG_v2_best
color yellow, ctsb2_chainA and resi 26+199
set transparency, 0.8
set specular, 0
set ambient, 0.35
set cartoon_highlight_color, grey
set ray_trace_depth_factor, 1
set ray_trace_disco_factor, 1
set ray_trace_mode, 1
set antialias, 2
set ray_shadow, off
ray 2000
png GFLG_overview.png
