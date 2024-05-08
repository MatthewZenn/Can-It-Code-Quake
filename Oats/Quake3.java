public class Main {
  public static void main(String[] args) {
    float number = 16.0F; 
    float result = Q_rsqrt(number);
    System.out.println("Result: " + result);
  }

  public static float Q_rsqrt(float number) {
    int i;
    float x2, y;
    final float threeHalfs = 1.5F;
    
    x2 = number * 0.5F;
    y = number;
    i = Float.floatToIntBits(y); 
    i = 0x5f3759df - (i >> 1); 
    y = Float.intBitsToFloat(i);

    y = y * (threeHalfs - (x2 * y * y));
    // Uncomment the following line for the second iteration
    // y = y * (threeHalfs - (x2 * y * y)); // Second iteration
    return y;
  }
}
