#!C:/Python312/python.exe

import os

FAV_ANIMAL = input("What is your favorite animal? ")
FAV_MOVIE = input("What is your favorite movie? ")
FAV_FOOD = input("What is your favorite food? ")

os.environ["FAV_ANIMAL"] = FAV_ANIMAL
os.environ["FAV_MOVIE"] = FAV_MOVIE
os.environ["FAV_FOOD"] = FAV_FOOD

# fetch 3 vars
ANIMAL_ENV = os.getenv("FAV_ANIMAL")
MOVIE_ENV = os.getenv("FAV_MOVIE")
FOOD_ENV = os.getenv("FAV_FOOD")

print("\nStored Environment Variables:")
print("Favorite Color:", ANIMAL_ENV)
print("Favorite Movie:", MOVIE_ENV)
print("Favorite Food:", FOOD_ENV)