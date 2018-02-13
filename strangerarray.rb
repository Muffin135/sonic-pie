# Stranger Things Main Theme
# NOTE: Each measure's total sleep adds up to 4 because the time signature is 4/4

# Beat per minute to be used. Currently set to 160 beats per minute
use_bpm 160

# Synthesizer to be used in the song. Currently using the "Saw" synthesizer
use_synth :saw

# Array data set containing the notes for the first verse of the song
first_set = [:c2, :e2, :g2,:b2, :c3, :b2, :g2, :e2] 

# Live loop that will execute the function to play through the array
live_loop :main_theme do
  
  # Starting position for the data array. Set to 0, which will start at the very beginning of the array (Corresponding to note :C2)
  index = 0 
  
  # Sets the song to be played with a "Distortion" filter
  with_fx :distortion do
    
    # Repeats the contained code for 8 instances
    8.times do
      # Plays the note currently set in the array's index
      play first_set[index]
      sleep 0.5
      # Adds 1 to the value of the array's index, effectively moving on to the next note contained in the array
      index = index +1
    end
    
  end
end

# Live loop that plays the drum line
live_loop :drums do
  sleep 2
  # Currently set to play the 808 audio sample file, as well as to play 100% amplitude (Normal volume)
  sample :bd_808, amp: 100
  sleep 3.5
  sample :bd_808, amp: 100, sustain: 0.25
  sleep 0.5
  sample :bd_808, amp: 100
  sleep 2
end
