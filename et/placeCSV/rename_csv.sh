#! /bin/bash
for file in *.csv ; do
	rename 's/Model_Fields-//' *.csv
done

