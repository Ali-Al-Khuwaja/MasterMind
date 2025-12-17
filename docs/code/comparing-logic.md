Explaining the algorithm behind the compare method:

you will have an array of guessed colors like `guessed_code = ['blue','red','yellow','green]` and the computer's secret code will be randomized and will be similar to this `secret_code = ['red','green','blue','yellow']`

here is the proposed algorithm :
loop over every element of the `guessed_code` , and while doing so ,extract it's element and index ,compare the corresponding element that shares the same index ,lets assume we are comparing the first element of the `guessed_code` ,which is "blue" with index of "0"
First ,check the value of of the element that shares the same index in the other array:
`guessed_code[0]  == secret_code[0]` ? if the elements have identical value ,like blue and blue then return black ball ,if the values do not match , like blue and red with our two example arrays, then take the value of the guessed element `guessed_code[0]` which is blue ,then search within the secret code if it has `any?` element that has identical value ,we actually do and it's `secret_code[2]` so we will return a white ball .
Lastly if we end up having no matches , then we will return "nothing" to indicate that the color is not in the secret_code
