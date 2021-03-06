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
    using System.ComponentModel.DataAnnotations;

    public partial class Accessory
    {
        public int AccessoryID { get; set; }
        [Display(Name = "Name")]
        public string AccessoryName { get; set; }
        [Display(Name = "Photo URL")]
        public string AccessoryPhoto { get; set; }
        [Display(Name = "Color")]
        public string AccessoryColor { get; set; }
        [Display(Name = "Season")]
        public string AccessorySeason { get; set; }
        [Display(Name = "Occasion")]
        public string AccessoryOccasion { get; set; }
        public int TypeID { get; set; }
    
        public virtual ClothingType ClothingType { get; set; }
    }
}
