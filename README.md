![logo.png](Assets/logo.png)
# Can-It-Code-Quake
A Project to code the Quake 3 algorithm in every language.

<https://matthewzenn.github.io/Can-It-Code-Quake/>

Let's find out how many languages can implement the Fast Inverse Square Root Algorithm. 

## If you would like to contribute:
 1. Fork the repository.
 2. Add your implementation to the ```Oats``` folder.
 3. Use the ```implementation``` tag in your PR.
 
 Passing data between languages or using math functions that weren't possible at the time is against the spirit of the challange. An implementation should try to folow the same process of the algorithm, as close as possible. Please do not edit the site code at this time. If you would, however, like to try something  more esoteric, and want to showcase a picture of it running on like an arduino or gameboy. Then feel free to add said image to the ```Assets``` folder, when uploading your code.

## Languages
| Language  | Status | Language  | Status |
| ---------------- | ---------------- | ---------------- | ---------------- |
| x86 Assembly  | needs testing https://github.com/MatthewZenn/Can-It-Code-Quake/issues/1|
| Bash  | https://github.com/MatthewZenn/Can-It-Code-Quake/issues/8  | Kotlin  | :x:  |
| C/C++  | :+1:  | Lua  | :x:  |
| C#  | :+1:  | Minecraft  | :x:  |
| Dart  | :+1:  | Nim  | https://github.com/MatthewZenn/Can-It-Code-Quake/issues/7  |
| Fortran  | :+1:  | PHP  | :+1:  |
| Go  | :+1:  | Python  | :+1:  |
| GDScript  | :+1:  | Rust  | :+1:  |
| Haskell  | https://github.com/MatthewZenn/Can-It-Code-Quake/issues/11  | Swift  | :+1:  |
| Java  | :+1:  | VBScript  | https://github.com/MatthewZenn/Can-It-Code-Quake/issues/8  |
| JavaScript  | :+1:  | Vlang  | https://github.com/MatthewZenn/Can-It-Code-Quake/issues/7  |
| Julia  | :x:  | Zig  | :+1:  |

## About the Algorithm
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
