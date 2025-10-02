read -p "Enter an email address: " email

regex='^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
if [[ $email =~ $regex ]]; then
    echo "✔ Valid email"
else
    echo "✖ Invalid email"
i
