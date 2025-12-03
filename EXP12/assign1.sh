#!/bin/bash
echo "Enter symptoms separated by commas:"
read symptoms

symptoms_lower=$(echo "$symptoms" | tr '[:upper:]' '[:lower:]')

if [[ "$symptoms_lower" == *"fever"* ]]; then
    echo "• Take medication"
    echo "• Monitor temperature"
fi
if [[ "$symptoms_lower" == *"fatigue"* ]]; then
    echo "• Get proper sleep"
fi
if [[ "$symptoms_lower" == *"nausea"* ]]; then
    echo "• Drink ginger tea"
fi
