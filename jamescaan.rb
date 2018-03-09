=begin

TASK 1: Define a function that has 5 parameters (four notes and one sleep time). Hit "Run" and nothing should play.

TASK 2: Call your function and give it five arguments (the four notes on lines 16, 18, 20, & 22 plus the sleep time). Hit run and you should hear four notes play.

TASK 3: Call your function twice in a live_loop so the entire Stranger Things Theme repeats.

=end

use_bpm 160
use_synth :saw

define :play_eighth_notes do |q, w, e, r, t|
  play q
  sleep t
  play w
  sleep t
  play e
  sleep t
  play r
  sleep t
end


live_loop :melody do
  play_eighth_notes :c2, :e2, :g2, :b2, 0.5
  play_eighth_notes :c3, :b2,  :g2, :e2, 0.5
end

