description:
	using fork()
	in child process : print("I am child");
	in parent process : print("I am parent");
	compare PID using "ps" command

how to run ?
	1. "make"
	2. ./test1
	3. check pid using ps -aux | grep test1