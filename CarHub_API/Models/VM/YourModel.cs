
using CarHub_API.Models.Dto;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace CarHub_API.Models.VM
{
    public class YourModel
    {


        public int CarId { get; set; }
        public List<string> SelectedColorIds { get; set; }
        

    }
}
