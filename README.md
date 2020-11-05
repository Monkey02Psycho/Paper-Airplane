# Paper-Airplane
### Preamble
game design is tough. this is my first time using GDscript for anything larger then roughly 25 lines. The code is messy. the project is not well structured. The game is full of bugs. over all I think this project turned out well. I learned a lot about game design and the importance of proper names. I also got a chance to properly use more complex data structures like list and dictionaries. Now lets take a deeper dive into my learning.

### Credit 1 CSE2120
Games contain many different types of data. There is Images for textures, Numbers for variables such as speed and time, booleans for data that can either be true or false, characters used to form names. There are instances when someone wants to store simple data in a more complex way. That kind of situation showed up often when Caleb and I where working on The game.

#### fundamental data types
- Integer
- Floating point number or Float
- Boolean
- Character

these you will see all the time in code. lots of programming languages have types includes when you are naming variables but Godot figures that out during runtime. ```var speed = 200``` is something you will see in code. the data type is a float I just never had to specify when typing it out. These simple data types are fast and have general use

#### Common data structures
- Hashmap or dictionary
- List
- Linked list
- Binary tree

In the code list and Hashmaps are often used. List just store a list of the same data type. You can also have a list of list. using a list of list you get 2 dimensions which means you could use list to represent images or grid systems. We used list to define a colour names. ``` var names = ["white", "blue", "red" ...]``` this is just a snipet appending to a list is simple. godot has a built in function for that. Assuming that you wanted to make more work for your self then appending to a list is not awfully hard. The easiest way would be to have the last element of a list be a pointer that points to the next element(s) in the list you are appending. Hashmaps are also found in the code and are a very useful data structure. They have a keys value pairs. where each unique key is paired with some value. We used hashmaps to store colors along with their color name. `var colors = {"white": (0, 0, 0), "blue" (0, 255, 0), ...} ` is a small snipet of how we define a dictanary in Godot.

#### one more important data structure.

the record or struct as it is also called is in almost every step of the code. a record is just a way to group together multiple data structures/data types/ records. the simplest example is a 2D vector. all you have is two floats named x, and y. you could access the value for x by simple doing `thrust_vec.x` and the same idea for the y value.

### Credit 2 CSE2140
Most code I write is done in rust. Godot and rust are on opposite ends of the spectrum.

Rust | Godot
-----| -----
Rust is multi paradigm but best supports the imerative paradigms | godot is also multi paradigm. you can write functional code, oject oriented code or structured.
Rust is a low level language. you must think about memory and whether to store data on the stack or heap | godot on the other hand does all this behind the scenes. you dont have to worry about managing memory or the stack vs heap.
Rust wants you to write modular code that is seperated into logical groups | Godot shares the similar idea. you write small scripts to handle the logic for sprites or other components and have larger scripts to control more general things such as interactions between objects.
Speed. Rust is compliled so before you run code it is translated directly to machine language | godot is translated to machine language on the fly which makes it measurably slower

#### the same algorithem in both languages
godot script<sub>1</sub>
```python
def bubbleSort(alist):
    for passnum in range(len(alist)-1,0,-1):
        for i in range(passnum):
            if alist[i]>alist[i+1]:
                temp = alist[i]
                alist[i] = alist[i+1]
                alist[i+1] = temp
```
Godot script it implicitly knows to swap the two elements and I dont have to clone the array. Godot figures that out. Godot also figures out the types as the code is running
Rust:
```rust
pub fn bubble_sort(array: Vec<i32>) -> Vec<i32>{
    // rust calls arrays Vec
    let mut temp: Vec<i32> = Vec::with_capacity(array.len());
    temp = array.clone();
    for i in 0..array.len(){
        for j in 0..array.len()-i-1{
            if temp[j] > temp[j + 1]{
                temp.swap(j as usize, j + 1 as usize);
            }
        }
    }
    temp
}
```
rust you have an explicit function for swaping two values of an array and you can define a an empty array that makes room for the new items. I also have to make sure all values types are known. arrays are indexed with usizes. I had to explicitly convert to a usize. a usize is the size of a pointer on a computer.

#### examples of rust and godot.
Going through this repository you any file with the exention .gd is a godotscript and you can see more examples of code i wrote in Godot.
this is a short list of simple code I wrote in rust:

- https://gist.github.com/rust-play/4d4dd6ff6e7b1527e46da68245c0382d this converts word directions to an enum that has directions.
- https://gist.github.com/rust-play/01130772f86b14e2f9976fcf663b76a8 this converts a string number to an integer.
