execute if score structure_left value > NONE value run function battleroyale_structure:add_stand
execute if score structure_left value = NONE value if score structure_done value = FALSE value run function battleroyale_structure:gen_structure
