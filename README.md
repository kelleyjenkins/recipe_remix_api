# Recipe Remix API

Recipe Remix API is a an app built with Rails 5.1.4 and ActiveRecord for use with Recipe Remix (<https://github.com/kelleyjenkins/recipe_remix/>. This app provides the backend for an app where users can enter ingredients into a form and receive recipes that include those ingredients. The database includes users, recipes, ingredients, ingredient lists, and lists.

## Setup

1. Fork this repository and clone it down to your local machine.
```
git clone https://github.com/kelleyjenkins/recipe_remix_api.git
```

2. Enter into the Recipe Remix directory in your terminal by typing:
```
cd recipe_remix_api
```

3. Once there type ```bundle install``` into your terminal to load gems.

4. At this point you need to set up the databases. In your terminal run:
```
rails db:create db:migrate db:seed
```

6. To check that your data was successfully loaded, enter into rails console in your terminal ```rails c``` and type this:

```
Ingredient.all
```
This should see an ActiveRecord relation that includes an array of 4 ingredient objects.

## Endpoints
```
https://fathomless-plateau-58961.herokuapp.com/api/v1/users  
https://fathomless-plateau-58961.herokuapp.com/api/v1/recipes
https://fathomless-plateau-58961.herokuapp.com/api/v1/users/:id/recipes
https://fathomless-plateau-58961.herokuapp.com/api/v1/ingredients
https://fathomless-plateau-58961.herokuapp.com/api/v1/lists
https://fathomless-plateau-58961.herokuapp.com/api/v1/users/:id/lists
```

## Developers
- [Kelley Jenkins](https://github.com/kelleyjenkins)

## Additional Information
The project was developed by the Turing School of Software and Design as the backend for the Capstone Project for Module 4.
