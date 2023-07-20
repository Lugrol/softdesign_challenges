The main problem identified is that the testing process is taking too long. The root causes of this problem are the need to wait for both back- and front-end tasks to be finished before manual testing begins, and that most of the issues emerge from basic misunderstandings between back- and front-end programmers.

Therefore, I would suggest 1) implementing pair-programming between both programmers and 2) revising the integration test strategy.

1. This can be challenging at first, but promotes better understanding of the overall project by sharing context between the programmers, with the added benefit of an extra pair of eyes and a whole brain over the programmer's shoulders reviewing what they are writing in real time and also learning together.

2. The specific strategy depends on the specificities of the project, for example, it's architecture. Creating and recycling drivers and stubs from the unit tests can help decouple back- and front-end tests and, thus, test earlier.

Maybe some other minor improvements on the communication pipeline could be implemented as well, like automatically generated reports or setting up a notification for when a bug assigned to someone is created or updated.
