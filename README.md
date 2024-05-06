![logo.png](Assets/logo.png)
# Can-It-Code-Quake
A Project to code the Quake 3 algorithm in every langauge.

<https://matthewzenn.github.io/Can-It-Code-Quake/>

Let's find out how many languages can implement the Fast Inverse Square Root Algorithm. If you want to contribute, open a PR, adding your implementation to the ```Oats``` folder and using the ```implementation``` tag. Please do not edit the site code at this time.

**Languages so far:**
- C/C++
- Fortran
- GDScript
- JavaScript
- Rust

**About the Algorithm**
```c 
float Q_rsqrt(float number)
{
  long i;
  float x2, y;
  const float threehalfs = 1.5F;

  x2 = number * 0.5F;
  y  = number;
  i  = * ( long * ) &y; // evil floating point bit level hacking
  i  = 0x5f3759df - ( i >> 1 ); // what da heck?
  y  = * ( float * ) &i;
  y  = y * ( threehalfs - ( x2 * y * y ) ); // 1st iteration
  // y  = y * ( threehalfs - ( x2 * y * y ) ); // 2nd iteration, this can be removed

  return y;
}
```