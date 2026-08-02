#!/bin/bash
# RestaurantGuru photos
declare -A urls
urls["rg01_food_dishes1"]="https://img02.restaurantguru.com/c0c5-Brother-Zhao-Chuan-Style-Noodles-Macquarie-Park-dishes.jpg"
urls["rg02_interior"]="https://img02.restaurantguru.com/cbb2-Restaurant-Brother-Zhao-Chuan-Style-Noodles-interior.jpg"
urls["rg03_food_dishes2"]="https://img02.restaurantguru.com/c09c-Brother-Zhao-Chuan-Style-Noodles-dishes.jpg"
urls["rg04_food_meals1"]="https://img02.restaurantguru.com/cdc6-Brother-Zhao-Chuan-Style-Noodles-meals.jpg"
urls["rg05_food_food1"]="https://img02.restaurantguru.com/c34d-Brother-Zhao-Chuan-Style-Noodles-food.jpg"
urls["rg06_food_food2"]="https://img02.restaurantguru.com/ce73-food-Brother-Zhao-Chuan-Style-Noodles.jpg"
urls["rg07_food_food3"]="https://img02.restaurantguru.com/c752-Brother-Zhao-Chuan-Style-Noodles-Macquarie-Park-food.jpg"
urls["rg08_food_meals2"]="https://img02.restaurantguru.com/c35a-Brother-Zhao-Chuan-Style-Noodles-Macquarie-Park-meals.jpg"
urls["rg09_food_dishes3"]="https://img02.restaurantguru.com/ce4b-Restaurant-Brother-Zhao-Chuan-Style-Noodles-dishes.jpg"
urls["rg10_interior_design"]="https://img02.restaurantguru.com/c88c-Restaurant-Brother-Zhao-Chuan-Style-Noodles-design.jpg"
urls["rg11_food_seafood1"]="https://img02.restaurantguru.com/cb00-Restaurant-Brother-Zhao-Chuan-Style-Noodles-seafood.jpg"
urls["rg12_food_seafood2"]="https://img02.restaurantguru.com/ce2f-Brother-Zhao-Chuan-Style-Noodles-Macquarie-Park-seafood.jpg"
urls["rg13_food_food4"]="https://img02.restaurantguru.com/ca47-Restaurant-Brother-Zhao-Chuan-Style-Noodles-food.jpg"
urls["rg14_food_meals3"]="https://img02.restaurantguru.com/c7a2-Restaurant-Brother-Zhao-Chuan-Style-Noodles-meals.jpg"

for key in "${!urls[@]}"; do
    url="${urls[$key]}"
    ext="${url##*.}"
    echo "Downloading $key -> $key.$ext"
    curl -sL -o "${key}.${ext}" "$url" --max-time 30 && echo "  OK: $(stat -c%s "${key}.${ext}") bytes" || echo "  FAILED"
done
