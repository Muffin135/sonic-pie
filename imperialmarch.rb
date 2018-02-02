# Song Name: Imperial March by John Williams

# Sheet Music: https://www.musicnotes.com/sheetmusic/mtd.asp?ppn=MN0133739

# BPM Used: https://songbpm.com/imperial-march?q=imperial%20march

use_bpm 120

1.times do
  
  with_synth :subpulse do
    
    with_fx :bitcrusher do
      
      with_fx :reverb, room: 0.5 do
        
        with_fx :band_eq, freq: 0.4 do
          
          play :A2
          sleep 1
          play :A2
          sleep 1
          play :A2
          sleep 1
          play :F1
          sleep 0.5
          play :C3
          sleep 0.5
          play :A2
          sleep 1
          play :F1
          sleep 0.5
          play :C3
          sleep 0.5
          play :A2
          sleep 2
          play :E4
          sleep 1
          play :E4
          sleep 1
          play :E4
          sleep 1
          play :F5
          sleep 0.5
          play :C3
          sleep 0.5
          play :Ab2
          sleep 1
          play :F1
          sleep 0.5
          play :C3
          sleep 0.5
          play :A2
          sleep 2
          
        end
        
      end
      
    end
    
  end
  
end


live_loop :melody do
  
  with_synth :subpulse do
    
    with_fx :bitcrusher do
      
      with_fx :reverb, room: 0.5 do
        
        with_fx :band_eq, freq: 0.4 do
          
          play :A2
          sleep 1
          play :A2
          sleep 1
          play :A2
          sleep 1
          play :F1
          sleep 0.5
          play :C3
          sleep 0.5
          play :A2
          sleep 1
          play :F1
          sleep 0.5
          play :C3
          sleep 0.5
          play :A2
          sleep 2
          play :E4
          sleep 1
          play :E4
          sleep 1
          play :E4
          sleep 1
          play :F5
          sleep 0.5
          play :C3
          sleep 0.5
          play :Ab2
          sleep 1
          play :F1
          sleep 0.5
          play :C3
          sleep 0.5
          play :A2
          sleep 2
          
          
        end
        
      end
      
    end
    
  end
  
end

live_loop :drums do
  
  with_synth :subpulse do
    
    with_fx :bitcrusher do
      
      with_fx :reverb, room: 0.5 do
        
        with_fx :band_eq, freq: 0.4 do
          
          loop do
            
            sample :drum_snare_soft
            sleep 2
            
          end
          
        end
        
      end
      
    end
    
  end
  
end



