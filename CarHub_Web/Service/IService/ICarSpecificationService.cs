﻿

using CarHub_Web.Models.Dto;
using CarHub_Web.Models.VM;

namespace CarHub_Web.Service.IService
{
    public interface ICarSpecificationService
    {
      
            Task<T> GetAllAsync<T>(string token);
            Task<T> GetAsync<T>(int id, string token);
            Task<T> CreateAsync<T>(CarSpecificationCreateVM dto, string token);
            Task<T> UpdateAsync<T>(CarSpecificationUpdateDTO dto, string token);
            Task<T> DeleteAsync<T>(int id, string token);
        Task<T> AllDataAsync<T>(string term, string orderBy, int currentPage, string token);

    }
}
