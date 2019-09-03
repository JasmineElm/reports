---


---

# Pandoc-flavoured markdown example

here are some examples that deviate slightly from the standard markdown flavour.

## Paragraphs

I am an 
unbroken line with an explicit 
backslash-hardline break \
I am an inplicit hardline break   
I am a an explicit hardline break

## Lists


`#.` is the same as `1.` and 

#. you can mix
1. them
2) seamlessly


`*` is the same as `+` and `-`

+ again
- these can
* be mixed

### blocking content in lists

#. here is a list item

   here is a subsequent paragraph that aligns correctly
   
   oh hell did someone say
       
       codeblock

back to normal indentation\


+ separatelists are 
separated by a line

+ I am a different 
list item.

  with a correctly aligned second paragraph

## Blockquotes

> this is a blockquote \
> with two lines

> blockquote
>> nesting FTW

> this is too, but lazily misses the \
second chevron

>     code blocks
>     can exist in blockquotes
>     though why you'd do that...

> #. numbered lists
#. can be lazily added also

list numbering will take note of the start number and type

7)  Ninth
10)  Tenth
11)  Eleventh
       ii. subone
      ii. subtwo
     iii. subthree

mixing types will result in multiple lists

9)  Ninth
10) Tenth
(10)  also tenth, but a different list
#)  first
    i. separate
    + lists
    (#) if misused
    (#) are
    (A) confusing,
    (A) very confusing
a. so try to stick to a style
a. a single style
(c) otherwise it'll look janky
(b) and will confuse the linter

## tasklist item syntax

- [ ] an unchecked task list item
- [x] checked item

## Definition lists



Definition Title

:   Definition Description

Definition Title *inline markup*

:   Definition 
description 2

        { some code, part of Definition 2 }

    Third paragraph of definition 2.


more simply, the following syntax may be used:

Term 1:
  ~ Definition 1

Term 2:
  ~ Definition 2a
  ~ Definition 2b


## sub/superscript strikethrough and more

caret^style^superscript

tilde~style~subscript

you can ^have\ spaces^ but they ~need\ escaping~


You can't ~~strikethrough ^super^ or ~subscript~ unfortunately~~
