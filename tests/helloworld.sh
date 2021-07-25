echo "Running tests..."
echo

output=$(./main)
shopt -s nocasematch

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output =~ ^hello,?\ world\!?$ ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected hello world but got: $output"
  exit 1
fi

echo
echo "All tests passed."

exit 0
