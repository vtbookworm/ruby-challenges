puts "what is the weather?"
weather = gets
weather = weather.chomp
case weather
when 'sunny'
    puts "grab those shades!"
when 'cloudy'
    puts "no need for sunglasses today"
when 'foggy'
    puts "goggles may be in order today"
when 'rainy'
    puts "wear your galoshes!"
when 'snowy'
    puts "don't even bother going outside today!"
end