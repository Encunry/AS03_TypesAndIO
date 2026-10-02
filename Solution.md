# Part 1

## How many Values

**(Bool, RGB)**:
- (True, R)
- (True, G)
- (True, B)
- (False, R)
- (False, G)
- (False, B)  

-> 6

**Either Bool RGB**:
- Left True
- Left False
- Right R
- Right G
- Right B

-> 5

**RGB -> Bool**:
A function for each possible combination of inputs:

f1 :: RGB -> Bool
f1 R = True
f1 G = True
f1 B = True

f2 :: RGB -> Bool
f2 R = False
f2 G = True
f2 B = True

-> 2*2*2 = 8 

## Isomorphic

** (Bool, a), Either a a

(|Bool|, |a|) = (2, |a|)