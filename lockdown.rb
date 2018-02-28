=begin

TASK 1: Import the sample from "Love Lockdown" into this buffer and play it using the live_loop on line 39.

TASK 2: Use the .mp3 file and Audacity to take another sample from the song, and incorporate it into this script.

=end

use_bpm 120
use_synth :dtri
use_synth_defaults cutoff: 80
kanye_vocals = "C:/Users/Lionel Quintanilla/Desktop/sonic_pi_challenge_7_custom_samples/sonic_pi_challenge_7_custom_samples/lovelockdown.wav"
task_two = "C:/Users/Lionel Quintanilla/Desktop/newone.wav"
x = :bd_808

define :drum do
  sample x, amp: 2
  sleep 0.5
  sample x, amp: 2
  sleep 1.5
  sample x, amp: 2
  sleep 2
end

define :melody do
  play :cs2
  sleep 0.5
  play :cs2
  sleep 0.5
  play :e2, sustain: 0.5
  sleep 1
  # play two notes concurrently (at the same time)
  play :cs2, sustain: 1, detune: 0.12
  play :cs1, sustain: 1
  sleep 2
end

live_loop :drum_beat do
  drum
end

live_loop :synth_sound do
  melody
end

live_loop :kanye_vocals do
  sample kanye_vocals
  sleep 16 # this sleep is 8 because the sleep of both loops above are 4 allowing us to stay 'in pocket'
end

live_loop :task_two do
  sample task_two
  sleep 20 # this sleep is 8 because the sleep of both loops above are 4 allowing us to stay 'in pocket'
end
