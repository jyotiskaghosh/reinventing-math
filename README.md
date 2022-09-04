# reinventing-math

Reinventing math is a scheme library that aims to implement a non-conventional mathematics.
Changing some fundamentals of math. The philosophies for the changes are as follows:

* Modulo math should be natural math. This is so because infinite lines don't exist in nature, only in math.
* Negative numbers shouldn't exist. Philosophically negative numbers make no sense, as there exists no negative quantities.
Furthermore, due to modulo math being hypothesized as natural math they become redundant.
* 0 * 0 should be a RNG. The reason for this being that in modulo math;<br />
&emsp;0 * 1 = 0 ; from 0 take one cycle back to 0<br />
&emsp;0 * 2 = 0 + 0 = 0 ; from 0 take two cycles back to 0<br />
&emsp;0 * n = 0, where n is not 0 ; from 0 take n cycles back to 0<br />
&emsp;0 * 0 = ??? ; this results in an infinite loop<br />
This is so because the 0 value in modulo math is essentially ∞. Thus, ∞ * ∞ is take infinite loops around infinity.
The author has chosen 0 * 0 to be a RNG as he has conceptualised asking a value is like taking a screenshot of 0 * 0.
* 0 / 0 is also a RNG. As,<br />
&emsp;0 / 0 = x<br />
&emsp;x * 0 = 0<br />
So x can also be any and all numbers.
* Division by 0 when the numerator isn't 0 is 0. This just follows the logical conclusion of 0 * 0 being any and all numbers.

The aim of this project is: firstly, to experiment with these rules to find interesting insights, 
and secondly, to rebuild math upon these rules. Any contributions are welcome.
