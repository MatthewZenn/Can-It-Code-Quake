static float Q_rsqrt(float number)
{
    float x2 = number * 0.5F;
    float y = number;
    int i = BitConverter.SingleToInt32Bits(y);

    i = 0x5f3759df - (i >> 1);
    y = BitConverter.Int32BitsToSingle(i);

    y = y * (1.5F - (x2 * y * y));

    return y;
}

Console.WriteLine($"{Q_rsqrt(2.43f)}");