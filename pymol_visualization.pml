# ── GFLG closeup ──
reinitialize
load ctsb2_chainA.pdb
load GFLG_v2_best.pdb
hide everything
show cartoon, ctsb2_chainA
show surface, ctsb2_chainA
show sticks, GFLG_v2_best
show sticks, ctsb2_chainA and resi 26+199
color lightblue, ctsb2_chainA
util.cbac GFLG_v2_best
color yellow, ctsb2_chainA and resi 26+199
set cartoon_transparency, 0.5
set transparency, 0.8
set specular, 0
set ambient, 0.35
set cartoon_highlight_color, grey
set ray_trace_depth_factor, 1
set ray_trace_disco_factor, 1
set ray_trace_mode, 1
set antialias, 2
set ray_shadow, off
distance hbonds, GFLG_v2_best, ctsb2_chainA and resi 26+199, 3.2
set_view (\
     -0.323251694,    0.645625830,    0.691850662,\
     -0.821030676,    0.172170490,   -0.544278085,\
     -0.470518529,   -0.743977964,    0.474430084,\
      0.000000000,    0.000000000,  -59.186012268,\
    -10.888792992,  -18.220996857,   21.116210938,\
     40.597049713,   77.774978638,  -20.000000000 )
ray 2000
png GFLG_closeup.png

# ── EGFLGE closeup ──
reinitialize
load ctsb2_chainA.pdb
load EGFLGE_v2_best.pdb
hide everything
show cartoon, ctsb2_chainA
show surface, ctsb2_chainA
show sticks, EGFLGE_v2_best
show sticks, ctsb2_chainA and resi 26+199
color lightblue, ctsb2_chainA
util.cbag EGFLGE_v2_best
color yellow, ctsb2_chainA and resi 26+199
set cartoon_transparency, 0.5
set transparency, 0.8
set specular, 0
set ambient, 0.35
set cartoon_highlight_color, grey
set ray_trace_depth_factor, 1
set ray_trace_disco_factor, 1
set ray_trace_mode, 1
set antialias, 2
set ray_shadow, off
distance hbonds, EGFLGE_v2_best, ctsb2_chainA and resi 26+199, 3.2
set_view (\
     -0.323251694,    0.645625830,    0.691850662,\
     -0.821030676,    0.172170490,   -0.544278085,\
     -0.470518529,   -0.743977964,    0.474430084,\
      0.000000000,    0.000000000,  -59.186012268,\
    -10.888792992,  -18.220996857,   21.116210938,\
     40.597049713,   77.774978638,  -20.000000000 )
ray 2000
png EGFLGE_closeup.png

# ── GFLGD closeup ──
reinitialize
load ctsb2_chainA.pdb
load GFLGD_v2_best.pdb
hide everything
show cartoon, ctsb2_chainA
show surface, ctsb2_chainA
show sticks, GFLGD_v2_best
show sticks, ctsb2_chainA and resi 26+199
color lightblue, ctsb2_chainA
util.cbaw GFLGD_v2_best
color yellow, ctsb2_chainA and resi 26+199
set cartoon_transparency, 0.5
set transparency, 0.8
set specular, 0
set ambient, 0.35
set cartoon_highlight_color, grey
set ray_trace_depth_factor, 1
set ray_trace_disco_factor, 1
set ray_trace_mode, 1
set antialias, 2
set ray_shadow, off
distance hbonds, GFLGD_v2_best, ctsb2_chainA and resi 26+199, 3.2
set_view (\
     -0.323251694,    0.645625830,    0.691850662,\
     -0.821030676,    0.172170490,   -0.544278085,\
     -0.470518529,   -0.743977964,    0.474430084,\
      0.000000000,    0.000000000,  -59.186012268,\
    -10.888792992,  -18.220996857,   21.116210938,\
     40.597049713,   77.774978638,  -20.000000000 )
ray 2000
png GFLGD_closeup.png
