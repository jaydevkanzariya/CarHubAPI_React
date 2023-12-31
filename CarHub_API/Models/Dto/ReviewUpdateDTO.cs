﻿using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace CarHub_API.Models.Dto
{
    public class ReviewUpdateDTO
    {
        [Required]
        public int Id { get; set; }
        //[Required]

        //public string ApplicationUserId { get; set; }

        [Required]
      
        public int CarId { get; set; }
      
        [Display(Name = "overall Rating")]
        public string overallRating { get; set; }
        public string Descriptaion { get; set; }
        [Display(Name = "Your Review title ")]
        public string Title { get; set; }
        [Display(Name = "Like Count")]
        public int LikeCount { get; set; }
        [Display(Name = "DisLike Count")]
        public int DisLikeCount { get; set; }
        [Display(Name = "View Count")]
        public int ViewCount { get; set; }
    }
}
