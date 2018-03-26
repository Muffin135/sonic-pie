# Song Name: Binary Sunset by John Williams

# Sheet Music: https://musescore.com/theorcshavethetardis/scores/1580656

# BPM Used: https://songbpm.com/binary-sunset?q=binary%20sunset

# Notes for each measure - measure divided into four beats
first_measure_notes = [:D4, :G4, :A4, :Bb4, :C5, :Bb4, :D4, :D4]
second_measure_notes = [:Bb4, :D4, :D4]
third_measure_notes = [:G4, :A4, :Bb4, :D4, :Bb4, :G4, :D5]
fourth_measure_notes = [:C5, :D4, :D5]
fifth_measure_notes = [:G4, :G5, :A4, :A5, :Bb4, :Bb5, :C5, :C6]
sixth_measure_notes = [:Bb4, :Bb4, :D4, :D5]
seventh_measure_notes = [:G4, :G5, :A4, :A5, :Bb4, :Bb5, :D4, :D5, :Bb4, :Bb5, :G4, :G5, :D5, :D6]
eigth_measure_notes = [:C5, :C6, :D5]
ninth_measure_notes = [:D5, :G5, :D5, :G5, :D5, :G5, :Bb5, :G5, :G5, :Bb5, :D6]
tenth_measure_notes = [:Bb5, :D5, :Bb5, :Eb6, :G6, :Bb4, :Eb5, :D5, :G4, :D5, :Bb4, :Bb5, :A4, :A5, :G4, :G5]
eleventh_measure_notes = [:D5, :G5, :Bb5, :D6, :Bb4, :Bb5, :G4, :G5, :D4, :A4, :D5, :D4, :A4, :D5, :G4, :D5, :G5]

# Custom samples
yoda1="C:/Users/Lionel Quintanilla/Desktop/yodaone.wav"
yoda2="C:/Users/Lionel Quintanilla/Desktop/yoda3.wav"

# Synth that is used for most of the measures
v = :subpulse

# All of the measures follow the same structure - goes through the array for notes, individual sleeps - all sleeps add up to 4 beats
define :first do
  # Plays all the notes with the 'v' synth
  with_synth v do
    play first_measure_notes[0]
    sleep 1
    play first_measure_notes[1]
    sleep 1
    play first_measure_notes[2]
    sleep 1
    play first_measure_notes[3]
    sleep 0.5
    play first_measure_notes[4]
    sleep 1
  end
end

define :second do
  with_synth v do
    play second_measure_notes[0], sustain: 2
    sleep 2
    play second_measure_notes[1]
    sleep 1
    play second_measure_notes[2]
    sleep 1
  end
end


define :third do
  with_synth v do
    play third_measure_notes[0]
    sleep 1
    play third_measure_notes[1]
    sleep 1
    play third_measure_notes[2]
    sleep 0.5
    play third_measure_notes[3]
    sleep 0.5
    play third_measure_notes[4]
    sleep 0.33
    play third_measure_notes[5]
    sleep 0.33
    play third_measure_notes[6]
    sleep 0.33
  end
end

define :fourth do
  with_synth v do
    play fourth_measure_notes[0], sustain: 3
    sleep 3
    play fourth_measure_notes[1]
    play fourth_measure_notes[2]
    sleep 1
  end
end

define :fifth do
  with_synth v do
    play fifth_measure_notes[0], sustain: 2
    play fifth_measure_notes[1], sustain: 2
    sleep 2
    play fifth_measure_notes[2]
    play fifth_measure_notes[3]
    sleep 1
    play fifth_measure_notes[4]
    play fifth_measure_notes[5]
    sleep 0.5
    play fifth_measure_notes[6]
    play fifth_measure_notes[7]
    sleep 0.5
  end
end

define :sixth do
  with_synth v do
    play sixth_measure_notes[0], sustain: 2
    play sixth_measure_notes[1], sustain: 2
    sleep 2
    play sixth_measure_notes[2]
    play sixth_measure_notes[3]
    sleep 1
    play sixth_measure_notes[2]
    play sixth_measure_notes[3]
    sleep 1
  end
end

define :seventh do
  with_synth v do
    play seventh_measure_notes[0], sustain: 2
    play seventh_measure_notes[1], sustain: 2
    sleep 1
    play seventh_measure_notes[2]
    play seventh_measure_notes[3]
    sleep 1
    play seventh_measure_notes[4]
    play seventh_measure_notes[5]
    sleep 0.5
    play seventh_measure_notes[6]
    play seventh_measure_notes[7]
    sleep 0.5
    play seventh_measure_notes[7]
    play seventh_measure_notes[8]
    sleep 0.33
    play seventh_measure_notes[9]
    play seventh_measure_notes[10]
    sleep 0.33
    play seventh_measure_notes[11]
    play seventh_measure_notes[12]
    sleep 0.33
  end
end

define :eigth do
  with_synth v do
    play eigth_measure_notes[0], sustain: 3
    sleep 3
    play eigth_measure_notes[1]
    sleep 0.5
    play eigth_measure_notes[2]
    sleep 0.5
    
  end
end

define :ninth do
  with_synth v do
    play ninth_measure_notes[0], sustain: 2
    play ninth_measure_notes[1], sustain: 2
    sleep 2
    play ninth_measure_notes[2]
    play ninth_measure_notes[3]
    sleep 0.5
    play ninth_measure_notes[4]
    play ninth_measure_notes[5]
    play ninth_measure_notes[6]
    sleep 0.5
    play ninth_measure_notes[7]
    sleep 0.5
    play ninth_measure_notes[8]
    play ninth_measure_notes[9]
    play ninth_measure_notes[10]
    sleep 0.5
  end
end

define :tenth do
  with_synth v do
    play tenth_measure_notes[0], sustain: 2
    sleep 1
    play tenth_measure_notes[1], sustain: 2
    play tenth_measure_notes[2], sustain: 2
    play tenth_measure_notes[3], sustain: 2
    play tenth_measure_notes[4], sustain: 2
    sleep 2
    play tenth_measure_notes[5]
    play tenth_measure_notes[6]
    play tenth_measure_notes[7]
    sleep 1
    play tenth_measure_notes[8]
    play tenth_measure_notes[9]
    sleep 0.25
    play tenth_measure_notes[10]
    play tenth_measure_notes[11]
    sleep 0.25
    play tenth_measure_notes[12]
    play tenth_measure_notes[13]
    sleep 0.25
    play tenth_measure_notes[14]
    play tenth_measure_notes[15]
    sleep 0.25
  end
end

define :eleventh do
  with_synth v do
    play tenth_measure_notes[0]
    play tenth_measure_notes[1]
    play tenth_measure_notes[2]
    play tenth_measure_notes[3]
    sleep 1
    play tenth_measure_notes[4]
    play tenth_measure_notes[5]
    sleep 1
    play tenth_measure_notes[6]
    play tenth_measure_notes[7]
    sleep 1
    play tenth_measure_notes[8]
    play tenth_measure_notes[9]
    play tenth_measure_notes[10]
    sleep 1
    play tenth_measure_notes[11]
    play tenth_measure_notes[12]
    play tenth_measure_notes[13]
    sleep 1
    play tenth_measure_notes[14], sustain: 4
    play tenth_measure_notes[15], sustain: 4
    play tenth_measure_notes[16], sustain: 4
    sleep 4
  end
end

# Parameterised function for the build of the song - about 3/4 of the measures
# Uses two variables - 'c' for the amplitude, 'd' for the increase in amplitude
define :editable_rise do |c,d|
  # Broken up by measure
  # Each measure has a default setting of the 'c' value for the amplitude
  with_synth_defaults amp: c do
    # Plays the whole measure
    first
    # Increases the amplitude by the 'd' value
    c = c +d
  end
  with_synth_defaults amp: c do
    second
    c = c +d
  end
  with_synth_defaults amp: c do
    third
    c = c +d
  end
  with_synth_defaults amp: c do
    fourth
    c = c +d
  end
  with_synth_defaults amp: c do
    fifth
    c = c +d
  end
  with_synth_defaults amp: c do
    sixth
    c = c +d
  end
  with_synth_defaults amp: c do
    seventh
    c = c +d
  end
  with_synth_defaults amp: c do
    eigth
    c = c +d
  end
end

# Plays the first custome sample - half amplitude
sample yoda1, amp: 0.5
sleep 17

# Live loop that sets the ambient background noise
live_loop :hum do
  sample :bass_thick_c, amp: 0.025, attack: 0.5
  sleep 4
end

# Live loop that sets a thundering effect in the background
live_loop :thundering do
  sample :bd_boom, amp: 0.5, sustain: 4
  sleep rrand_i(15, 20)
end

# Live loop that sets the base drum beat
live_loop :drums do
  sample :drum_bass_soft, amp: 0.025
  sleep 1
end

# Parameterised function with a base amplitude of 0.1 and an increasing value of 0.0001
editable_rise 0.1,0.0001

# Plays the last 3 measures
with_synth_defaults amp: 0.08 do
  ninth
  tenth
  eleventh
end
