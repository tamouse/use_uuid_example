# Using UUID instead of auto-increment integer id in a table.

I don't remember why the person asking this wanted to do this, but
it's certainly possible.

Rails convention is to have an auto-incrementing, non-null integer
field as the record ID in tables. This is very convenient for
developing, and sticking to conventions is generally a great idea.

But you can use something else for the unique identifier on the table
as well. Say, for example, a UUID.

This example creates a model, `TestTable`, that does not use the
integer id, and instead gets a UUID unique for that row.

Since the id isn't automatically created by the DB, the model has to
ensure it has one before the record is created. Further, the model has
to ensure that the id for that record never gets changed. This example
only shows a (**very**) minimal proof of concept, that this can be
done, but it's not completely fleshed out and definitely **NOT**
tested in any really significant way.
