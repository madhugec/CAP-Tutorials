const ProductValidator = require("../validator/product-validator");
module.exports = class ProductService extends cds.ApplicationService{
    init(){
        
        this.before('READ', 'Product', req=>{
            if(!ProductValidator.validateProduct(req.data)){
                req.reject(400, 'mrp is greater than 1000' );
            }
        })
        this.on('CREATE', "Product", async(req, next)=>{
          const products =   await SELECT.from(Product);
         let  flag = false;
         let result ;
          products.forEach(product => {
            if(product.name ===req.data.name){
                result =  product;
                flag = true;                
            }
          });
          if(!flag)
         return  next();
         else return result;
        })


        super.init();
    }
}