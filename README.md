# reinventing-math

Reinventing math is a scheme library that aims to implement a non-conventional mathematics.
Changing some fundamentals of math. The philosophies for the changes are as follows:

* Modulo math should be natural math. This is so because infinite lines don't exist in nature, only in math.
* Negative numbers shouldn't exist. Philosophically negative numbers make no sense, as there exists no negative quantities.
Furthermore, due to modulo math being hypothesized as natural math, they become redundant.
* Fractions don't exist. Division of x by y is the max number of y that can be subtracted from x. And division further isn't the inverse of multiplication:<br />
&emsp;x / y = z + remainder<br />
* Zero doesn't exist. The modulo value essentially functions as zero.
* x / mod is a RNG. As,<br />
&emsp;x / mod = y + r<br />
&emsp;y * mod = x - r<br />
As y * mod = mod, y can be any value. The author has decided it to be a RNG because he conceptualizes x/mod to be all values, and so asking a value is like capturing a screenshot.

The aim of this project is: firstly, to experiment with these rules to find interesting insights, 
and secondly, to rebuild math upon these rules. Any contributions are welcome.
