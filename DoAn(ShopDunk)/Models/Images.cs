//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoAn_ShopDunk_.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Images
    {
        public int IDIma { get; set; }
        public Nullable<int> IDProDe { get; set; }
        public string ImagesName { get; set; }
    
        public virtual ProductDetail ProductDetail { get; set; }
    }
}
