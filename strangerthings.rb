#Song Name: Stranger Things Theme by Luke Million

#Sheet Music: https://musescore.com/delivious/stranger-things-extended

#BPM Used: https://songbpm.com/luke-million-stranger-things

use_bpm 110

live_loop :main do
  
  with_synth :subpulse do
    
    with_fx :bitcrusher do
      
      with_fx :echo do
        
        # Measures that begin with C note
        
        4.times do
          play :C, amp: 0.5
          sleep 0.5
          play :F, amp: 0.5
          sleep 0.5
          play :G, amp: 0.5
          sleep 0.5
          play :B, amp: 0.5
          sleep 0.5
          play :C, amp: 0.5
          sleep 0.5
          play :B, amp: 0.5
          sleep 0.5
          play :G, amp: 0.5
          sleep 0.5
          play :F, amp: 0.5
          sleep 0.5
        end
        
        # Measure that begins with B note
        
        1.times do
          play :B, amp: 0.5
          sleep 0.5
          play :E, amp: 0.5
          sleep 0.5
          play :G, amp: 0.5
          sleep 0.5
          play :B, amp: 0.5
          sleep 0.5
          play :C, amp: 0.5
          sleep 0.5
          play :B, amp: 0.5
          sleep 0.5
          play :G, amp: 0.5
          sleep 0.5
          play :F, amp: 0.5
          sleep 0.5
        end
        
      end
      
    end
    
  end
  
end

live_loop :drums do
  
  sample :drum_bass_soft, amp: 0.5
  sleep 1
  
end
