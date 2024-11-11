#!/bin/bash

# Prompt the user to enter a number
echo "Enter a number:"
read number

# Ask if the user wants a full table or partial table
echo "Do you want a full table or partial table? (Enter 'f' for full, 'p' for partial)"
read table_type

if [ "$table_type" == "f" ]; then
    # Generate the full multiplication table in ascending order
    echo "Multiplication table for $number (Ascending):"
    for i in {1..10}
    do
        result=$((number * i))
        echo "$number x $i = $result"
    done

elif [ "$table_type" == "p" ]; then
    # Prompt for the start and end numbers of the range
    echo "Enter the start number of the range:"
    read start
    echo "Enter the end number of the range:"
    read end

    # Validate the range
    if [ $start -le $end ]; then
        echo "Multiplication table for $number from $start to $end:"
        for i in $(seq $start $end)
        do
            result=$((number * i))
            echo "$number x $i = $result"
        done
    else
        echo "Invalid range. The start number must be less than or equal to the end number."
    fi
else
    echo "Invalid option. Please enter 'f' for full table or 'p' for partial table."
fi
