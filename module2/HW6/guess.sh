#!/bin/bash

number=$((RANDOM % 100 + 1))
attempts=5

echo "Вгадайте число від 1 до 100"

for ((i=1; i<=attempts; i++))
do
    read -p "Спроба $i з $attempts: " guess

    if [ "$guess" -eq "$number" ]; then
        echo "Вітаємо! Ви вгадали правильне число"
        exit 0
    elif [ "$guess" -gt "$number" ]; then
        echo "Занадто високо"
    else
        echo "Занадто низько"
    fi
done

echo "Вибачте, у вас закінчилися спроби. Правильним числом було $number"
