# DelayedJob worker initialization problem

Look at the latest change in this repository to see the files affected to demonstrate the problem:
``` bash
app/jobs/my_job.rb            # a simple job that has a static variable that starts at 0
app/views/pages/home.html.erb # contains a form for scheduling a new job
config/initializers/my_initializer.rb # increments the MyJob static variable
```

The initializer sets a static variable in `MyJob` to 1 (it defaults to 0.) When the job is executed, it should print 'x is 1' in the worker console. However, it prints 'x is 0'.

``` bash
$ rails jobs:work
dj-test$ rails jobs:work
x is being incremented to 1

#
# visit localhost:3000 and press the 'schedule job' button...
#

[Worker] Starting job worker
x is 0
```
