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
