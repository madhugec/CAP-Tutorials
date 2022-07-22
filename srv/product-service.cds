using { poc.db as db } from '../db/schema';

@impl : './api/product-service.js'
@path : 'productservice'
service ProductService
{
    entity Product as
        projection on db.Product;
}
