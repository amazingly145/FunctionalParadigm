# 236 A. Boy or Girl
Third Evidence for the Subject of Computational Implementation. For this evidence, a problem in CodeForces was chosen so that the Paradigm can be implemented.

The problem 236 A. Boy or Girl, is a Code Forces problem. The problem is about a young man that likes to be on the internet, he talks with a lot of girls. One time, he was talking with a girl but in reality, it was a guy. He was so embarrassed about the situation, that he gave up on love completly. In order for this not to happen again, he has developed the following method: if the number of distinct characters in one's user name is odd, then he is a male, otherwise she is a female. You are given the string that denotes the user name, please help our hero to determine the gender of this user by his method: if the number of distinct characters in one's user name is odd, then he is a male, otherwise she is a female. You are given the string that denotes the user name, please help our hero to determine the gender of this user by his method.

Based on this, the platform has given mi a series of outputs and inputs that I should consider in order to help him, diffirenciate between female and male.

![examples](codeForces.png)

## Understanding the problem
In order to help our character, we need to understand that it is based in only the distinct characters. Meaning, that if a character repeats itself, then it is only count as one. For example in the string "wjmzbmr", m is repeated twice so it is only modeled as one.
```
w j m z b m r -> w j m z b r
= 6 (even)
= Female
```

Having ths logical part of the solution of the problem and undrstanding that no characters can repeat itself, we can now choose a paradigm to solve the problem. In this case, I chose functional as my principal paradigm and logical paradigm as my secondary. But first we need to understand some important knowledge about it. 

## Curiosity
I chose this problem, because I thought it would be interesting to understand how to use the lambda calculus combining the strings. The complexity of the code is on making the list of the string unique. That is why I chose this problem.

# Functional Paradigm
## Context
A functional paradigm is the one that encourages program development to be used purely using functions and mathematical processes. To understand functional paradigm we need to talk about Lambda calculus, it was developed by Alonso Church, it gives us a theorical model that describe functions and their evaluations.

### Pure Functions
The objective of having pure functions, reads as follow:
- They allways produce the same output for the same arguments.
- They do not modify any arguments ot global/logical variables, the only impotant thing here is the output that it gives.

This helps us have a more clean and steady code, they are also easy to debug because they have no hidden inputs or outputs.

### Recursion
In functional languages there are no "for" or "while" loops. This is implemented through recursion, which are the ones that call themselves until a base case is achieved.

### Referential Transparency
Once a variable is defined, they cannot change their value through out the program, so if you want to store a variable we have to define new variables. Ths eliminates any case of side effects because any variable can be replaced with its actual value

### Variables are Immutable
In a functional program we cannot modify a variable after it has been initialized. We can reate new variables, but not change them. Some advatages are what it follows:
- Pure functions are easier to understand because they don’t change any states and depend on the input. Whatever output they produce is the return value they give. 
- Because functions are used as variables, then this makes the code more readable and easier to process.
- Testing and debugging is easier: beacause functions take only aguments and produce an output.
- It avoids repeated code: because functions are only used when necessary, it avoids using useless code.





