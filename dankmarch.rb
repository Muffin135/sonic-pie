# Song Name

# X is the variable used to set the synthesizer to be used
# The X vairable is currently set to the "Subpulse" synthesizer
x = :subpulse

# B is the variable used to set the BPM to be used
# The B vairable is currently set to 200 
b = 200

# A is the variable used to set the amplitude to be used
a = 1

# This is a loop that repeats 7 times
# This is the portion of the song that is contains the melody only
7.times do
  
  # Where the BPM is set. BPM is set to the B variable
  use_bpm b
  
  # This function tells the computer to run the contained code with the following synthesizer
  # The synthesizer is currently set to the X variable, which is set to the "Subpulse" synthesizer
  with_synth x do
    
    # Set the following code to run with a "Bitcrusher" effect
    with_fx :bitcrusher do
      
       # Set the following code to run with a "Reverb" effect
      with_fx :reverb, room: 0.5 do
        
         # Set the following code to run with a "Band" effect
        with_fx :band_eq, freq: 0.4 do
          
          # Each note is set with an amplitude parameter. This parameter is set to the A variable
          play :A2, amp: a
          sleep 1
          play :A2, amp: a
          sleep 1
          play :A2, amp: a
          sleep 1
          play :F1, amp: a
          sleep 0.5
          play :C3, amp: a
          sleep 0.5
          play :A2, amp: a
          sleep 1
          play :F1, amp: a
          sleep 0.5
          play :C3, amp: a
          sleep 0.5
          play :A2, amp: a
          sleep 2
          play :E4, amp: a
          sleep 1
          play :E4, amp: a
          sleep 1
          play :E4, amp: a
          sleep 1
          play :F5, amp: a
          sleep 0.5
          play :C3, amp: a
          sleep 0.5
          play :Ab2, amp: a
          sleep 1
          play :F1, amp: a
          sleep 0.5
          play :C3, amp: a
          sleep 0.5
          play :A2, amp: a
          sleep 2
          # At the end of the loop, the A variable is increased by 0.5
          a = (a+0.5)
           # At the end of the loop, the B variable is increased by 25
          b = (b+25)
        end
        
      end
      
    end
    
  end
  
end

# This portion is used to reset the A and B variable before the main melody kicks in
a = (a-2)
b = (b-50)

# This sets a live loop called "Melody"
live_loop :melody do
  
  # This function tells the computer to run the contained code with the following synthesizer
  # The synthesizer is currently set to the X variable, which is set to the "Subpulse" synthesizer
  with_synth x do
    
    # Set the following code to run with a "Bitcrusher" effect
    with_fx :bitcrusher do
      
      # Set the following code to run with a "Reverb" effect
      with_fx :reverb, room: 0.5 do
        
        # Set the following code to run with a "Band" effect
        with_fx :band_eq, freq: 0.4 do
          
           # Each note is set with an amplitude parameter. This parameter is set to the A variable
          play :A2, amp: a 
          sleep 1
          play :A2, amp: a
          sleep 1
          play :A2, amp: a
          sleep 1
          play :F1, amp: a
          sleep 0.5
          play :C3, amp: a
          sleep 0.5
          play :A2, amp: a
          sleep 1
          play :F1, amp: a
          sleep 0.5
          play :C3, amp: a
          sleep 0.5
          play :A2, amp: a
          sleep 2
          play :E4, amp: a
          sleep 1
          play :E4, amp: a
          sleep 1
          play :E4, amp: a
          sleep 1
          play :F5, amp: a
          sleep 0.5
          play :C3, amp: a
          sleep 0.5
          play :Ab2, amp: a
          sleep 1
          play :F1, amp: a
          sleep 0.5
          play :C3, amp: a
          sleep 0.5
          play :A2, amp: a
          sleep 2
          
          
        end
        
      end
      
    end
    
  end
  
end

# This sets a live loop called "Drums"
live_loop :drums do
  
   # Set the following code to run with a "Bitcrusher" effect
  with_fx :bitcrusher do
    
    # Set the following code to run with a "Reverb" effect
    with_fx :reverb, room: 0.5 do
      
      # Set the following code to run with a "Band" effect
      with_fx :band_eq, freq: 0.4 do
        
        # This sets up a standard loop function
        loop do
          
          # This plays the audio sample file "Drume_Snare"
          sample :drum_snare_soft, amp: a
          sleep 2
          
        end
        
      end
      
    end
    
  end
  
end
