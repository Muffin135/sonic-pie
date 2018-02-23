# Song Name: Imperial March by John Williams

# Sheet Music: https://www.musicnotes.com/sheetmusic/mtd.asp?ppn=MN0133739

# BPM Used: https://songbpm.com/imperial-march?q=imperial%20march


first_verse = [:A2, :A2, :A2, :F1, :C3, :A2, :F1, :C3, :A2, :E4, :E4, :E4, :F5, :C3, :Ab2, :F1, :C3, :A2]
first_times = [1, 1, 1, 0.5, 0.5, 1, 0.5, 0.5, 2, 1, 1, 1, 0.5, 0.5, 1, 0.5, 0.5, 2]

x = :subpulse




b = 200


with_synth x do
  
  a = 0.3
  
  with_synth_defaults amp: a do
    
    
    with_fx :bitcrusher do
      
      with_fx :reverb, room: 0.5 do
        
        with_fx :band_eq, freq: 0.4 do
          
          7.times do
            
            use_bpm b
            
            index = 0
            
            b = b+50
            
            a = a + 0.1
            
            18.times do
              
              play first_verse[index]
              sleep first_times[index]
              index = index+ 1
              
            end
            
          end
          
        end
        
      end
      
    end
    
  end
  
end


b = 200
a = 0.3


# This sets a live loop called "Drums"
live_loop :drums do
  
  use_bpm b
  
  # Set the following code to run with a "Bitcrusher" effect
  with_fx :bitcrusher do
    
    # Set the following code to run with a "Reverb" effect
    with_fx :reverb, room: 0.5 do
      
      # Set the following code to run with a "Band" effect
      with_fx :band_eq, freq: 0.4 do
        
        # This plays the audio sample file "Drume_Snare"
        sample :drum_snare_soft, amp: a
        sleep 2
        
      end
      
    end
    
  end
  
end

b = 200
a = 0.5

live_loop :melody do
  
  
  with_synth x do
    
    with_synth_defaults amp: a do
      
      # Set the following code to run with a "Bitcrusher" effect
      with_fx :bitcrusher do
        
        # Set the following code to run with a "Reverb" effect
        with_fx :reverb, room: 0.5 do
          
          # Set the following code to run with a "Band" effect
          with_fx :band_eq, freq: 0.4 do
            
            7.times do
              
              use_bpm b
              
              index = 0
              
              18.times do
                
                play first_verse[index]
                sleep first_times[index]
                index = index+ 1
                
              end
              
            end
            
          end
          
        end
        
      end
      
    end
    
  end
  
end


live_loop :orchestra do
  
  
  with_synth :saw do
    
    with_synth_defaults amp: a do
      
      # Set the following code to run with a "Bitcrusher" effect
      with_fx :bitcrusher do
        
        # Set the following code to run with a "Reverb" effect
        with_fx :reverb, room: 0.5 do
          
          # Set the following code to run with a "Band" effect
          with_fx :band_eq, freq: 0.4 do
            
            e = choose([first_verse])
            play e
            sleep 5
            
          end
          
        end
        
      end
      
    end
    
  end
  
end


