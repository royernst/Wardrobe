//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Wardrobe.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Shoe
    {
        public int ShoeID { get; set; }
        public string ShoeName { get; set; }
        public string ShoePicture { get; set; }
        public string ShoeColor { get; set; }
        public string ShoeSeason { get; set; }
        public string ShoeOccasion { get; set; }
        public int TypeID { get; set; }
    
        public virtual Type Type { get; set; }
    }
}
