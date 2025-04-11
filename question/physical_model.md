# Physical model

## Argument for that the model  fulfill 3NF

To fulfill 3NF it have to fulfill 1NF, 2NF and 3NF. 
1NF- all primary key must have a priamry that are a unique identifier, no mixed datatype in attribute and no list of in attribute.
yes i have a primary in each table to identifie each column and there are no mixed datatype and no list of data. i have use domain to make sure that it must have the datatype that are set in the databas. Theres is no list, sets or multiple values in the same cell. 
2NF- fulfill 1NF and have functional dependency, that non-prime attribute are depended on the hole key and not partially of the key.
yes all the table fulfills both requriement to fulfill 2NF.
(school_id,studnet_id) -> (school_id, student_id). all are entirely depended on the hole primary key not partially.
3NF- Have non transitive dependency, that mean that non-prime attribute only dependes on the primary key and only on the primary key. So you can't have A -> B and B -> C, now you have transitive dependency. All the table fulfill that.