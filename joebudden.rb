# Song Name: Imperial March by John Williams

# Sheet Music: https://www.musicnotes.com/sheetmusic/mtd.asp?ppn=MN0133739

# BPM Used: https://songbpm.com/imperial-march?q=imperial%20march

# Variable that sets the synthesizer to be used
x = :subpulse

# Variable that sets the initial BPM value
b = 200

# Variable that sets the initial amplitude value
a = 1

# Custom sample that replicates Darth Vader's breathing
breathing = "C:/Users/Lionel Quintanilla/Desktop/breathing.wav"
# Custom sample that replicates TIE fighter flying overhead
tie_fighter = "C:/Users/Lionel Quintanilla/Desktop/tiefighter.wav"

# Array containing the notes for the melody of the song
first_verse = [:A2, :A2, :A2, :F1, :C3, :A2, :F1, :C3, :A2, :E4, :E4, :E4, :F5, :C3, :Ab2, :F1, :C3, :A2]
# Array containing the corresponding sleep values for the notes of the meledy of the song
first_times = [1, 1, 1, 0.5, 0.5, 1, 0.5, 0.5, 2, 1, 1, 1, 0.5, 0.5, 1, 0.5, 0.5, 2]

# Function that defines how a verse in the melody is to be played
define :main_theme do
  # Indicates the completion of one whole verse
  1.times do
    
    # Both arrays start at the 0 (begininning) position of the array
    index = 0
    
    # An 18-times loop is required to play all 18 notes once
    18.times do
      
      # Plays the current note in the array
      play first_verse[index]
      # Sleeps for the beats indicated in the array
      sleep first_times[index]
      # Increases the position of the array by 1
      index = index+ 1
      
    end
    
  end
end

# The main verse of the mekody is played 7 times
7.times do
  
  # Applies the 'bitcrusher' effect, creating an 8-bit sound
  with_fx :bitcrusher do
    
    # Applies the 'reverb' effect, creating a background echo
    with_fx :reverb, room: 0.5 do
      
      # Applies the 'band' effect, creating a slightly hollow sound
      with_fx :band_eq, freq: 0.4 do
        
        # Uses the predetermined synthisizer
        with_synth x do
          
          # All succeeding notes use the same amplitude value (set to the variabel 'a')
          with_synth_defaults amp: a do
            # Uses the BPM assigned above
            use_bpm b
            # Plays the verse as was previously described in the first_verse function
            main_theme
            # Adds 50 to variable 'b' (Increases BPM)
            b = b+50
            # Adds 1 to variable 'a' (Increases amplitude)
            a = a+1
            # Displays current value of 'a' variable
            print a
            # Displays current value of 'briable
            print b
          end
          
        end
        
      end
      
    end
    
  end
  
end

# Resets 'a' variable
a = 1
# Resets 'b' variable
b = 200

# Live loop that plays the main melody of the song
live_loop :melody do
  
  # Same operation as with the loop above
  with_fx :bitcrusher do
    
    with_fx :reverb, room: 0.5 do
      
      with_fx :band_eq, freq: 0.4 do
        
        with_synth x do
          
          with_synth_defaults amp: a do
            use_bpm b
            main_theme
            print a
            print b
          end
          
        end
        
      end
      
    end
    
  end
  
end


# Live loop that plays the drum line of the song
live_loop :drums do
  
  # Effects same as above examples
  with_fx :bitcrusher do
    
    with_fx :reverb, room: 0.5 do
      
      with_fx :band_eq, freq: 0.4 do
        
        # Plays the soft snare drum audio sample, using the 'a' variable to determine amplitude
        sample :drum_snare_soft, amp: a
        # Waits 5 beats to play next note
        sleep 5
        
      end
      
    end
    
  end
  
end

# Live loop that plays the ambient sounds of the song
live_loop :ambience do
  
  # Plays the audio sample of a TIE fighter with an amplitude value of 'a' variable
  sample tie_fighter, amp: a
  # Waits a random number of beats (between 100 and 200 beats) before playing the sound again
  sleep rrand_i(100, 200)
  
end

# Live loop that plays the sound of Darth Vader breathing
live_loop :breath do
  
  ## Effects same as above examples
  with_fx :bitcrusher do
    
    with_fx :reverb, room: 0.5 do
      
      with_fx :band_eq, freq: 0.4 do
        
        # Plays sample of Darth Vader breathing
        sample breathing
        sleep 50
        
      end
      
    end
    
  end
  
end

