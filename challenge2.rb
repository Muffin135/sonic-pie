# X is the variable that determines the note to be played
# X is initially set to play note 21
x = 21

# The "Piano" synthesizer is used in this song
# "With_Synth" tells the computer to play all notes within the parameter to use the designated synth (Piano)
with_synth :piano do
  
  # This is a loop that repeats 87 times before terminating
  87.times do
    
    # Begins by playing the X value already assigned
    play x
    # It then increases the value of X b
    x = (x+1)
    # It then waits for 1 beat before repeating the loop
    sleep 1
  end
    
end
  

