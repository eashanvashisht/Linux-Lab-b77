#!/bin/bash
echo "Welcome to the Medical Expert System"
echo "Enter your symptoms:"
read symptoms

if [[ "$symptoms" == *"fever"* ]]; then
    echo "Recommendation: Take fever reducer and rest."
fi
if [[ "$symptoms" == *"cough"* ]]; then
    echo "Recommendation: Drink warm fluids."
fi
if [[ "$symptoms" == *"cold"* ]]; then
    echo "Recommendation: Use decongestants."
fi

if [[ "$symptoms" != *"fever"* && "$symptoms" != *"cough"* && "$symptoms" != *"cold"* ]]; then
    echo "Consult a doctor."
fi
