alias ll='ls -lhA'
fproc(){
	ps -aux | grep -v grep | grep ".*$1.*"
}
