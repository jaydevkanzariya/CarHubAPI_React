
using CarHub_API.Models.Dto;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace CarHub_API.Models.VM
{
    public class YourModel1
    {


        public int CarId { get; set; }
         public int FeatureTypeId { get; set; }
        public List<string> SelectedFeatureIds { get; set; }
        

    }
}
