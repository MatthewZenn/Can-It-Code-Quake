import struct

def Q_rsqrt(number):
    threehalfs = 1.5
    x2 = number * 0.5
    y = number
    
    i = struct.unpack('I', struct.pack('f', y))[0]
    i = 0x5f3759df - (i >> 1)
    y = struct.unpack('f', struct.pack('I', i))[0]
    y = y * (threehalfs - (x2 * y * y)) # first iteration
    # y = y * (threehalfs - (x2 * y * y)) # increased precision
    
    return y

print(Q_rsqrt(123.456))
