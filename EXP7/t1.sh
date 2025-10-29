for i in {0..5}; do
    echo "LOG on $(date)" >> output.txt
    ps -eo pid,comm,%cpu --sort=-%cpu | head -6 >> output.txt
    echo "------------------------------------------" >> output.txt
    sleep 10
done

