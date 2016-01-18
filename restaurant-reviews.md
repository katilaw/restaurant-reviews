### Requirements for Meeting Expectations

Create a Rails application that allows users to view restaurants. The application must satisfy the following criteria:

* A restaurant must have a name, address, city, state, and zip code. It can optionally have a description.
* Visiting the `/restaurants` path should contain a list of restaurants.
* Visiting the `/restaurants/new` path should display a form for creating a new restaurant.
* Visiting the `/restaurants/10` path should show the restaurant details for a restaurant with the ID of 10.
* Visiting the root path should display a list of all restaurants.
* When adding a new restaurant, if I fill out the form correctly, I should see the page for the newly created restaurant.
* When adding a new restaurant, if I fill out the form incorrectly and submit the form, I should see the form and be displayed the validation errors.

Once these criteria have been met, add the ability for users to review restaurants. The application must satisfy the following criteria:

* A restaurant can have many reviews. Each review must contain the following:
  - A rating between 1 and 5, inclusive. This should be a whole number.
  - A body
  - A timestamp for when it was created
* Visiting the `/restaurants/10/reviews/new` should display a form for creating a new review for a restaurant with ID = 10.
* Visiting the `/restaurants/10` path should also include all reviews for a restaurant with ID = 10.

For this challenge assume all restaurants and reviews are submitted anonymously (user authentication is **not** required).

To get started, run the following commands in the `restaurant-reviews` directory, you should see 8 failing feature tests:

```no-highlight
$ et get restaurant-reviews
$ cd restaurant-reviews
$ bundle
$ rake
```

### Requirements for Exceeding Expectations

Read all of the following user stories first. Once you are done reading, write acceptance tests for these stories and get them to pass.

```no-highlight
As a user
I want to see categories of restaurants (e.g. *thai*, *italian*, *chinese*)
So that I can see the different kinds of foods I could eat
```

Acceptance Criteria
- I should see the name of all categories.
- I should get to this page by clicking on a "Categories" link which is located on the header of every page.

```no-highlight
As a user
I want to see the restaurants belonging to a category
So that I can pick a restaurant for a specific category
```

Acceptance Criteria
- I should see the name of the category at the top of the page.
- I should see the name of all restaurants that belong to this category.
- I should be taken to restaurant's details page if I click on the name of a restaurant while on this page.
- I should get to this page by clicking on the name of a category while on the page with the names of all the categories.

```no-highlight
As a user
I want to see the categories that a restaurant belongs to
So that I know the different kinds of cuisine that the restaurant serves
```

Acceptance Criteria
- On the page for a restaurant's details, I should see all the categories that a restaurant belongs to.
- Clicking on the name of a category should take me to the page with the list of all the restaurants for that particular category.

```no-highlight
As a user
I want to specify what categories a restaurant belongs to when creating it
So people know what kind of cuisine the new restaurant serves
```

Acceptance Criteria
- On the page to create a new restaurant, I should see checkboxes for all the categories.
- Upon successful form submission, I should see the names of the categories which were selected on the form to be present on the restaurant's details page.
