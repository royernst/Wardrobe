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

    public partial class Bottom
    {
        public int BottomID { get; set; }
        [Display(Name = "Name")]
        public string BottomName { get; set; }
        [Display(Name = "Photo URL")]
        public string BottomPhoto { get; set; }
        [Display(Name = "Color")]
        public string BottomColor { get; set; }
        [Display(Name = "Season")]
        public string BottomSeason { get; set; }
        [Display(Name = "Occasion")]
        public string BottomOccasion { get; set; }
        public int TypeID { get; set; }
    
        public virtual ClothingType ClothingType { get; set; }
    }
}
