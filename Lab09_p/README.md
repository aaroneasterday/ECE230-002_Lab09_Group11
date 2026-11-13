# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Aaron Easterday, Daniel Toronto

## Summary
In this lab we designed a memory system that used a store function (btnC) to store a memory set and hold it until a new one is stored. We could also use sw[7] to refer back to previously stored memory.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Latches require synchronized changes in order to function, and need persistent values that can be used and reused throughout time. We do this through sequential logic rather than structural verilog.

### What is the meaning of always @(*) in a sensitivity block?
always @(*) is a form of sweep that constantly runs as the program runs allowing the data to update based off the provided data from the switches.

### What importance is memory to digital circuits?
It is important for digital circuits to have memory so that computers can store information and that information can be reaccessed.
