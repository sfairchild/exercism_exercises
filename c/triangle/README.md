# Triangle

Determine if a triangle is equilateral, isosceles, or scalene.

The program should raise an error if the triangle cannot exist.

## Hint

The triangle inequality theorem states:
z ≤ x + y
where x,y, and z are the lengths of the sides of a triangle. In other words, the
sum of the lengths of any two sides of a triangle always exceeds or is equal to
the length of the third side.

A corollary to the triangle inequality theorem is there are two classes of
triangles--degenerate and non-degenerate. If the sum of the lengths of any two
sides of a triangle is greater than the length of the third side, that triangle
is two dimensional, has area, and belongs to the non-degenerate class. In
mathematics, a degenerate case is a limiting case in which an element of a class
of objects is qualitatively different from the rest of the class and hence
belongs to another, usually simpler, class. The degenerate case of the triangle
inequality theorem is when the sum of the lengths of any two sides of a triangle
is equal to the length of the third side. A triangle with such qualities is
qualitatively different from all the triangles in the non-degenerate class since
it is one dimensional, looks like a straight line, and has no area. Such
triangles are called degenerate triangles and they belong to the degenerate
class.

## Dig Deeper

This exercise does not test for degenerate triangles. Feel free to add your own
tests to check for degenerate triangles.

## Getting Started

Make sure you have read the
[C page](http://exercism.io/languages/c) on the Exercism site. This covers
the basic information on setting up the development environment expected
by the exercises.


## Passing the Tests

Get the first test compiling, linking and passing by following the [three
rules of test-driven development][3-tdd-rules].

The included makefile can be used to create and run the tests using the `test`
task.

    make test

Create just the functions you need to satisfy any compiler errors and get the
test to fail. Then write just enough code to get the test to pass. Once you've
done that, move onto the next test.

[3-tdd-rules]: http://butunclebob.com/ArticleS.UncleBob.TheThreeRulesOfTdd

As you progress through the tests, take the time to refactor your
implementation for readability and expressiveness and then go on to the next
test.

Try to use standard C99 facilities in preference to writing your own
low-level algorithms or facilities by hand.

## Source

The Ruby Koans triangle project, parts 1 & 2 [http://rubykoans.com](http://rubykoans.com)

## Submitting Incomplete Problems
It's possible to submit an incomplete solution so you can see how others have completed the exercise.

