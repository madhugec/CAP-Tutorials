using { poc.db as db } from '../db/schema';

@impl : './api/product-service.js'
@path : 'productservice'
service ProductService
{
    entity Product as
        projection on db.Product;
    entity Order as projection on db.Order;

    entity Item as projection on db.Item;
}
