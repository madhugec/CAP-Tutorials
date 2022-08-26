const ProductValidator = require("../validator/product-validator");
module.exports = class ProductService extends cds.ApplicationService{
    init(){
        
        this.before('CREATE', 'Product', req=>{
            if(!ProductValidator.validateProduct(req.data)){
                req.reject(400, 'mrp is greater than 1000' );
            }
        });

        super.init();
    }
}