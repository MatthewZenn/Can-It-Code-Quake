def q_rsqrt(number)
    three_halfs = 1.5
    x2 = number * 0.5
    y = number
    i = [y].pack('f').unpack('l')[0] # Get the bit representation of the float
    i = 0x5f3759df - (i >> 1) # Perform bit-level operations
    y = [i].pack('l').unpack('f')[0] # Convert the modified bit representation back to a float
    y = y * (three_halfs - (x2 * y * y)) # First iteration

    # Uncomment the following line for the second iteration
    # y = y * (three_halfs - (x2 * y * y)) # Second iteration

    return y
end

puts q_rsqrt(2.43)
