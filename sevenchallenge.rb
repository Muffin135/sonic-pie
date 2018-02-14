# Seven Nation Army by The White Stripes
# YOUR TASK: Use arrays to shorten the 16 lines of code inside the live_loop to 6 lines of code!

use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25

# Seven Nation Army by The White Stripes
# YOUR TASK: Use arrays to shorten the 16 lines of code inside the live_loop to 6 lines of code!

use_bpm 120
use_synth :fm
use_synth_defaults sustain: 0.25

# Index for the notes
first_verse = [:e3, :e3, :g3, :e3, 0, :d3, :c3, :b2]

# Index for the time
x = [1.5, 0.5, 0.75, 0.25, 0.5, 0.5, 2, 2]


live_loop :white_stripes do
  index = 0
  8.times do
    play first_verse[index]
    sleep x[index]
    index = index +1
  end
end
