# Paper-Airplane
### Preamble
game design is tough. this is my first time using GDscript for anything larger then roughly 25 lines. The code is messy. the project is not well structured. The game is full of bugs. over all I think this project turned out well. I learned a lot about game design and the importance of proper names. I also got a chance to properly use more complex data structures like list and dictionaries. Now lets take a deeper dive into my learning.

### Credit 1 CSE2120
Games contain many different types of data. There is Images for textures, Numbers for variables such as speed and time, booleans for data that can either be true or false, characters used to form names. There are instances when someone wants to store simple data in a more complex way. That kind of situation showed up often when Caleb and I where working on The game.

There are several fundamental data types. those being, Characters, Integers, Floating point numbers booleans, and valueless datatype. These data types are fundamental simply because you can not break them down into any simpler structure<sup>1</sup>. Working with these just these data structures has some large advantages. the main being they are fast to work with. Addition on Integers takes mircoseconds, checking if two booleans are equivelant takes onces again microseconds, adding two floating point numbers takes yet again mere microseconds. Another advantage is you can quickly convert between these data types. going from a integer to a character is simply just interpreting the raw bits as bits representing a character. These simple data types do have some unavoidable disadvantages. Representing more complex ideas and structures is almost impossible. you need more complex data types to represent stuctures such as images, words, or list.

There are only a small amount of simple data structures. The structures being, list(also known as an array), linked list, binary tree, stack, Queue, graph and Hash table(also referred to as a dictionary). Many of these structures are built into Godot. The two most important data structors that we used for the game are list and Hash Table. list in godot are simple defined as ```var list = []```. list are ordered so it is easy to get an index of a list by doing something like ```print(list[0])``` which will print the first element of a list. In computer memory list are stored sequentially. This means it is easy to append items to the end of the list. In the game code we had a list of names of posible colors for the airplane sprite we could cycle through. A list was an obvious choice because we had a collection of items and needed to get either a specific index or a random one. dictionaries are found in the projects code. A dictionary has key value pairs. useful for when we needed a specific colour code to be associated with the name. you can insert new keys and values into the dictionary by writing code like this ```dic[key] = value``` . In short there are many data structures some are more commonly used especially in game design.

### Credit 2 CSE2140
