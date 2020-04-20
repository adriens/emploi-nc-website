def heart_beat()
  in_thread do
    use_bpm 50
    loop do
      use_synth :fm
      play :c2,amp:7
      sleep 0.25
      play :c2,amp:7
      sleep 2
    end
  end
end

def play_vinyl()
  # son du vinyl
  in_thread do
    loop do
      sample :vinyl_hiss, rate: (rrand 0.125, 1.5), amp:0.5
      sleep rrand(0, 2)
    end
  end
end

# ambient piano
def play_ambient()
  with_fx :reverb do
    in_thread do
      loop do
        r = [0.4, 0.2, 0.1].choose
        500.times do
          sample :ambi_piano, rate: r, pan: rrand(-1, 1), amp:0.4
          sleep 0.5
        end
      end
    end
  end
end

play_vinyl()
sleep 20
heart_beat()
sleep 15

play_ambient()
sleep 25

live_loop :flibble do
  
  with_fx :reverb,room: 1 do
    use_synth :piano
    use_bpm 50
    
    a1=[]
    b1=[]
    
    # loop 1
    a1=[[:G4], [:A4], [:Gb4], [:E4], [:D4], [:D5]]
    b1=[1.0,1.0,1.0,1.0,1.0,3.0]
    
    for j in 0..a1.length-1
      play a1[j],sustain: b1[j],release: b1[j]*0.1, amp:0.3
      sleep b1[j]
    end
    sleep 4
    
    # loop 2
    
    #a1=[[:G4], [:A4], [:Gb4], [:E4], [:D4], [:D4]]
    #b1=[1.0,1.0,1.0,1.0,1.0,2.0]
    #for j in 0..a1.length-1
    #  play a1[j],sustain: b1[j],release: b1[j]*0.1
    #  sleep b1[j]
    #end
    #sleep 2
    
    # loop 3
    a1=[[:G4], [:A4], [:Gb4], [:E4], [:D4], [:D4]]
    b1=[1.0,1.0,1.0,1.0,1.0,3.0]
    for j in 0..a1.length-1
      play a1[j],sustain: b1[j],release: b1[j]*0.1, amp:0.3
      sleep b1[j]
    end
    sleep 4
    use_bpm 60
    a1=[[:A3], [:E4], [:D4], [:Gb4], [:A4], [:D5], [:G4], [:E4], [:A4], [:Gb4], [:D4]]
    b1=[1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,4.0]
    
    
    for j in 0..a1.length-1
      play a1[j],sustain: b1[j],release: b1[j]*0.1, amp:0.3
      sleep b1[j]
    end
  end
  
  #
  a1=[[:A3], [:E4], [:D4], [:Gb4], [:A4], [:D5], [:G4], [:E4], [:A4], [:Gb4], [:D4]]
  b1=[1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,2.0]
  
  
  for j in 0..a1.length-1
    play a1[j],sustain: b1[j],release: b1[j]*0.1, amp:0.2
    sleep b1[j]
  end
  #
  
  sleep 6
end
