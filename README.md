# Lua pairs Iterator Corruption

This repository demonstrates a potential issue with Lua's `pairs` iterator when used with recursive table traversal and modification.  The bug occurs when a nested table is altered within the recursive function, leading to unexpected behavior in the parent table's iteration.

## Bug Description

The `bug.lua` file contains a function `foo` that recursively iterates over a table using `pairs`. If any nested table is modified during this process, `pairs` might skip elements in the parent table, producing incorrect results. This is due to the internal workings of `pairs` and how it handles table modifications while iterating.

## Solution

The `bugSolution.lua` file presents a solution that avoids this issue by using an alternative iteration technique that's less prone to problems with concurrent modifications. It avoids the pitfalls of `pairs` during recursive operations where modification is likely.