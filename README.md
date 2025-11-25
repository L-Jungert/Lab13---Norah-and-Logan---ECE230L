# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

##Summary:

In this lab, we built a five-state machine using both One Hot and Binary encodings. We created the state diagrams, filled out state tables, and used K-maps to generate logic for each encoding. Then we implemented both versions in Verilog and mapped them to the FPGA, using LEDs to display each state and output.

### Compare and contrast One Hot and Binary encodings

One Hot encoding uses one flip-flop per state, which makes the next-state logic simple because only one state bit is ever active. Binary encoding uses log₂(N) flip-flops, which saves hardware resources but makes the logic more complex because transitions depend on multiple bits and may include invalid states. One Hot trades extra flip-flops for simpler logic, while Binary trades more logic for fewer flip-flops.

### Which method did your team find easier, and why?

Our team found the One Hot method easier because each state had its own flip-flop, making the next-state equations more straightforward and easier to trace. Debugging on the FPGA was also simpler since each state corresponded directly to a single LED.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

One Hot encoding is preferred when the FPGA has plenty of flip-flops available and simpler, faster logic is beneficial. Binary encoding is better when you need to conserve flip-flops, especially when the number of states is large or when the FPGA is resource-limited.

