using { poc.db as db } from '../db/schema';

@impl : './api/product-service.js'
@path : 'productservice'
service ProductService
{  
    @odata.draft.enabled
    entity Product @(restrict:[{grant:'READ', to:'VIEWER' },{grant:'*', to:'ADMIN' },
    { grant: ['READ', 'CREATE'], to:'CUSTOMER', where: 'createdBy = $user' } ]) as projection on db.Product actions{
        action updateMrp (mrp:Integer) returns Product;
    }

  }