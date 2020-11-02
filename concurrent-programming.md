# Concurrent programming in Pharo
## Using seamaphores
Small example:
```
|semaphore result| 
semaphore := Semaphore new.
result := nil.
[
   "process running long task, at the end there is result assigned"
    5 seconds wait. result := 5. semaphore signal 
] fork.

[ 
	"another process waiting for result of first process"
   semaphore wait. 
   self traceCr: result.
] fork. 
```
`semaphore wait`- waits on semaphore, until some other process resumes semaphore.  
`semapthore signal`- resumes semaphore, so that other process (that waits) is resumed and can continue.  
