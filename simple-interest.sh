#!/bin/bash

# A script to calculate simple interest.

echo "Enter the Principal amount: "
read principal

echo "Enter the Rate of interest (in percentage): "
read rate

echo "Enter the Time period (in years): "
read time

# Use 'bc' for floating-point arithmetic
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

echo "----------------------------------------"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $total_amount"
