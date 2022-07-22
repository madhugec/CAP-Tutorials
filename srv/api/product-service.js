////=======================Function Approach =======================

// module.exports = srv=>{
    
    
    //     srv.before('CREATE', 'Product', req=>{
        //         console.log("doing something.")
        //     })
        
        //     srv.on('READ', 'Product', req=>{
            //         console.log('I am inside of on phase.')
            //     })
            //     srv.after('READ', 'Product', (response,req)=>{
                //         console.log('I am inside of after phase.')
                //     })
                // }
                
////=======================Class Approach=======================
module.exports = class ProductService extends cds.ApplicationService {
    init() {
        this.before('READ', 'Product', req=>{
            console.log("annonymouse function approach")
        })   
        this.before('READ', 'Product', handler)     
        this.after('READ', 'Product', handler)
        
        super.init();       
    }
}

const handler =function(req){
    console.log("doing something.");
}