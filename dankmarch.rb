# Song Name

x = :subpulse

b = 200

a = 1

7.times do
  
  use_bpm b
  
  with_synth x do
    
    with_fx :bitcrusher do
      
      with_fx :reverb, room: 0.5 do
        
        with_fx :band_eq, freq: 0.4 do
          
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
          a = (a+0.5)
          b = (b+25)
        end
        
      end
      
    end
    
  end
  
end

a = (a-2)
b = (b-50)

live_loop :melody do
  
  with_synth x do
    
    with_fx :bitcrusher do
      
      with_fx :reverb, room: 0.5 do
        
        with_fx :band_eq, freq: 0.4 do
          
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

live_loop :drums do
  
  with_fx :bitcrusher do
    
    with_fx :reverb, room: 0.5 do
      
      with_fx :band_eq, freq: 0.4 do
        
        loop do
          
          sample :drum_snare_soft, amp: a
          sleep 2
          
        end
        
      end
      
    end
    
  end
  
end
