## ppwd
> **p**rint **p**ass**w**or**d**

A simple Lua program which can pipe stdin to stdout as triad of masked text (e.g. for a password), plain text and number of characters.
e.g. 
<pre>
 shell> echo "foobar" | ppwd
 ******|foobar|6 
</pre>

#### Usage example (Shellscript):

<pre>
# Use ppwd with awk to obtain the masked text and plain text for use in other processes.
ppwd=`echo "hello_world" | ppwd`
masked=`echo "$ppwd" | awk '{split($0,mpl,"|")} END{print mpl[1]}'` # Where 1 is the index for the masked text.
plain=`echo "$ppwd" | awk '{split($0,mpl,"|")} END{print mpl[2]}'`  # Where 2 is the index for the plain text; use 3 for number of characters.
</pre>

#### Build (produces Lua bytecode)

>make 

#### Install Lua bytecode + shell wrapper (to /usr/local/bin on Unix-like system):

> [sudo] make install

#### Install as executable Lua source, not bytecode:

> [sudo] make srcexec
