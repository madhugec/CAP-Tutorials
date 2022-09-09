using { poc.db as db } from '../db/schema';

@impl : './api/product-service.js'
@path : 'productservice'
service ProductService
{  
    @odata.draft.enabled
    entity Product as projection on db.Product actions{
        action updateMrp (mrp:Integer) returns Product;
    }

  }