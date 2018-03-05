alias ll='ls -lhA'
fproc(){
	ps -aux | grep ".*$1.*"
}
