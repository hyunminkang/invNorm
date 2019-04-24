ERROR=false

../bin/invNorm --in testFiles/example.raw --out results/example.norm 2> results/example.norm.log && diff results/example.norm expected/example.norm

if [ $? -ne 0 ]
then
    ERROR=true
fi

if($ERROR == true)
then
  exit 1
fi
