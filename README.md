# Introduction to Haskell

This is a quick introduction to Haskell for programmers.

## Goals

  1. What is Haskell?

  2. Why is Haskell hard to learn for programmers?

  3. Short case study of why you should be using Haskell.

## What is Haskell?

Haskell, a general purpose, purely-functional programming language.

Slides: [banners/haskell.txt](banners/haskell.txt).

## Why is Haskell Hard to Learn for Programmers?

Haskell approaches programming from a completely different perspective
than most programming languages.  While imperative programming
languages provide abstractions over instructions executing on the CPU,
Haskell provides abstractions over concepts from mathematics and
computer science.

It's the responsibility of the compiler to translate our
formula-looking Haskell code into imperative instructions that run on
the CPU.

Language comparisons:

  * [Summing an array of integers in C](src/csum.c)

  * [Summing a list of integers in Haskell](src/hssum.hs)

  * [Idiomatic Haskell Version](src/fold.hs)

## Short Case Study of Why You Should Be Using Haskell

This is just one small example of where Haskell makes a big impact in
the quality of the products we create.

  * Null pointers and nil objects are a huge **runtime** problem in
    many languages.  Don't believe me?  Look at [this][null] and
    [this][nil].

  * Does it really make sense that `nil` can be substituted for any
    other type?  Haskell doesn't think so.

  * Haskell doesn't have a null or nil type.  Instead there are much
    more powerful user defined types that serve the same purpose but
    are completely safe because they don't substitute for other types.

  * This removes an entire class of runtime errors and makes your code
    compile-time safe.  [Example code](src/age.hs).


[null]: https://github.com/search?l=C%2B%2B&q=null+pointer&ref=cmdform&type=Issues
[nil]: https://github.com/search?q=nil+undefined+method&type=Issues&ref=searchresults
