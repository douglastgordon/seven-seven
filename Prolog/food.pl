food_type(velveeta, cheese).
food_type(ritz, cracker).
food_type(spam, meat).
food_type(sausage, meat).
food_type(jolt, soda).
food_type(twinkie, dessert).

flavor(sweet, dessert).
flavor(savory, meat).
flavor(savory, cheese).
flavor(sweet, soda).


food_flavor(X, Y) :- food_type(X, Z), flavor(Y, Z).
find_meal(X, Y) :- food_type(X, D), food_type(Y, C), flavor(sweet, D), flavor(savory, C).
