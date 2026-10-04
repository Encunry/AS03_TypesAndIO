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

### (Bool, a), Either a a
a)  
|(Bool, a)| = |Either a a|
2a = |Left a| + |Right a|
2a = a + a  
2a = 2a 

b)  
aToB :: (Bool, a) -> Either a a  
aToB (True, a) = Left a  
aToB (False, a) = Right a  

bToA :: Either a a -> (Bool, a)  
bToA (Left a) = (True, a)  
bToA (Right a) = (False, a)  


### (a -> b -> c), (a,b) -> c

a) 
$|a -> b -> c| = |(a,b) -> c|$  
$c^{b^a} = c^{(a*b)}$  
$c^{(b*a)} = c^{(a*b)}$

b)  
aToB :: (a -> b -> c) -> ((a,b) -> c)  
aToB f = \(x, y) -> f x y

bToA :: ((a,b) -> c) -> (a -> b -> c)  
bToA f = \x y -> f (x, y)