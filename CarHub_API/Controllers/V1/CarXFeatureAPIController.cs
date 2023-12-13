using AutoMapper;
using AutoMapper.Features;
using Azure;
using CarHub_API.Data;
using CarHub_API.Models;
using CarHub_API.Models.Dto;
using CarHub_API.Models.VM;
using CarHub_API.Repository.IRepository;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Data;
using System.Drawing;
using System.Net;
using System.Security.Claims;
using System.Text.Json;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace CarHub_API.Controllers.v1
{
    [Route("api/v{version:apiVersion}/[controller]/[Action]")]
    [ApiController]
	[ApiVersion("1.0")]
	public class CarXFeatureAPIController : ControllerBase
	{
		protected APIResponse _response;

		private readonly IUnitOfWork _unitOfWork;
		private readonly IMapper _mapper;
        private readonly ApplicationDbContext _db;
        public CarXFeatureAPIController(IUnitOfWork unitOfWork, IMapper mapper, ApplicationDbContext db)
		{
			_unitOfWork = unitOfWork;
			_mapper = mapper;
			_response = new();
            _db = db;
        }


		[HttpGet]
		[ResponseCache(CacheProfileName = "Default30")]
		[ProducesResponseType(StatusCodes.Status403Forbidden)]
		[ProducesResponseType(StatusCodes.Status401Unauthorized)]
		[ProducesResponseType(StatusCodes.Status200OK)]
		public async Task<ActionResult<APIResponse>> GetCarXFeatures([FromQuery(Name = "filterDisplayOrder")] int? Id,
			[FromQuery] string? search, int pageSize = 0, int pageNumber = 1)
		{
			try
			{
				IEnumerable<CarXFeature> carXFeatureList;
				if (Id > 0)
				{
					carXFeatureList = await _unitOfWork.CarXFeature.GetAllAsync(u => u.Id == Id, includeProperties: "Car,Feature,FeatureType", pageSize: pageSize,
						pageNumber: pageNumber);
				}
				else
				{
					carXFeatureList = await _unitOfWork.CarXFeature.GetAllAsync(includeProperties: "Car,Feature,FeatureType", pageSize: pageSize,
						pageNumber: pageNumber);
				}
				if (!string.IsNullOrEmpty(search))
				{
					carXFeatureList = carXFeatureList.Where(u => u.Car.Name.ToLower().Contains(search));
				}
				Pagination pagination = new() { PageNumber = pageNumber, PageSize = pageSize };

				Response.Headers.Add("X-Pagination", JsonSerializer.Serialize(pagination));
				_response.Result = _mapper.Map<List<CarXFeatureDTO>>(carXFeatureList);
				_response.StatusCode = HttpStatusCode.OK;
				return Ok(_response);

			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.ErrorMessages
					 = new List<string>() { ex.ToString() };
			}
			return _response;
		}

		[HttpGet("{id:int}", Name = "GetCarXFeature")]
		[ProducesResponseType(StatusCodes.Status403Forbidden)]
		[ProducesResponseType(StatusCodes.Status401Unauthorized)]
		[ProducesResponseType(StatusCodes.Status200OK)]
		[ProducesResponseType(StatusCodes.Status400BadRequest)]
		[ProducesResponseType(StatusCodes.Status404NotFound)]
		//[ProducesResponseType(200, Type =typeof(VillaDTO))]
		//        [ResponseCache(Location =ResponseCacheLocation.None,NoStore =true)]
		public async Task<ActionResult<APIResponse>> GetCarXFeature(int id)
{
			try
			{
				if (id == 0)
				{
					_response.StatusCode = HttpStatusCode.BadRequest;
					return BadRequest(_response);
				}
				var carXFeature = await _unitOfWork.CarXFeature.GetAsync(u => u.Id == id);
				if (carXFeature == null)
				{
					_response.StatusCode = HttpStatusCode.NotFound;
					return NotFound(_response);
				}
				_response.Result = _mapper.Map<CarXFeatureDTO>(carXFeature);
				_response.StatusCode = HttpStatusCode.OK;
				return Ok(_response);
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.ErrorMessages
					 = new List<string>() { ex.ToString() };
			}
			return _response;
		}

        [HttpPost(Name = "CreateCarXFeature")]
        //[Authorize(Roles = "admin")]
        [ProducesResponseType(StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<APIResponse>> CreateCarXFeature([FromForm] YourModel1 createDTO)
        {
			try
			{

				await _unitOfWork.CarXFeature.RemoveRangeAsync(u => u.CarId == createDTO.CarId && u.FeatureTypeId == createDTO.FeatureTypeId , false);

				foreach (var featureid in createDTO.SelectedFeatureIds)
				{

					CarXFeature carXFeature = new();
                    carXFeature.CarId = createDTO.CarId;
                    carXFeature.FeatureTypeId = createDTO.FeatureTypeId;
					carXFeature.FeatureId = Convert.ToInt32(featureid);

                    await _unitOfWork.CarXFeature.CreateAsync(carXFeature);


				}
				_response.StatusCode = HttpStatusCode.Created;
				return _response;
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.ErrorMessages = new List<string>() { ex.ToString() };
            }
			return _response;
        }

        [ProducesResponseType(StatusCodes.Status204NoContent)]
		[ProducesResponseType(StatusCodes.Status403Forbidden)]
		[ProducesResponseType(StatusCodes.Status401Unauthorized)]
		[ProducesResponseType(StatusCodes.Status404NotFound)]
		[ProducesResponseType(StatusCodes.Status400BadRequest)]
		[HttpDelete("{id:int}", Name = "DeleteCarXFeature")]
		//[Authorize(Roles = "admin")]
		public async Task<ActionResult<APIResponse>> DeleteCarXFeature(int id)
		{
			try
			{
				if (id == 0)
				{
					return BadRequest();
				}
				var carXFeature = await _unitOfWork.CarXFeature.GetAsync(u => u.Id == id);
				if (carXFeature == null)
				{
					return NotFound();
				}
				await _unitOfWork.CarXFeature.RemoveAsync(carXFeature);
				_response.StatusCode = HttpStatusCode.NoContent;
				_response.IsSuccess = true;
				return Ok(_response);
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.ErrorMessages
					 = new List<string>() { ex.ToString() };
			}
			return _response;
		}

		// [Authorize(Roles = "admin")]
		[HttpPut(Name = "UpdateCarXFeature")]
		[ProducesResponseType(StatusCodes.Status204NoContent)]
		[ProducesResponseType(StatusCodes.Status400BadRequest)]
		public async Task<ActionResult<APIResponse>> UpdateCarXFeature([FromBody] CarXFeatureUpdateVM updateDTO)
		{
			try
			{
				List<FeatureVM> featureVMList = _mapper.Map<List<FeatureVM>>(updateDTO.Featurelist);
				CarXFeature carXFeature = _mapper.Map<CarXFeature>(updateDTO.CarXFeature);

				List<CarXFeature> carXFeaturelist = await _unitOfWork.CarXFeature.GetAllAsync(u => u.CarId == carXFeature.CarId & u.FeatureTypeId == carXFeature.FeatureTypeId,  includeProperties: "Car,Feature,FeatureType");
				foreach (var carlist in carXFeaturelist)
				{
					CarXFeature carXfeature = new();

                    carXfeature.Id = carlist.Id;
                    carXfeature.CarId = carlist.CarId;
                    carXfeature.FeatureId = carlist.FeatureId;
                    carXfeature.FeatureTypeId = carlist.FeatureTypeId;
                    await _unitOfWork.CarXFeature.RemoveAsync(carXfeature);
				}

				foreach (var featurelist in featureVMList)
				{

					if (featurelist.IsChecked == true)
					{
						CarXFeature carXfeature = new();

						carXfeature.CarId = carXFeature.CarId;
						carXfeature.FeatureTypeId = carXFeature.FeatureTypeId;
                        carXfeature.FeatureId = featurelist.Id;

						await _unitOfWork.CarXFeature.CreateAsync(carXfeature);

					}
					else
					{
						continue;
					}

				}







				_response.StatusCode = HttpStatusCode.NoContent;
				_response.IsSuccess = true;
				return Ok(_response);
			}
			catch (Exception ex)
			{
				_response.IsSuccess = false;
				_response.ErrorMessages
					 = new List<string>() { ex.ToString() };
			}
			return _response;
		}

		[HttpPatch("{id:int}", Name = "UpdatePartialCarXFeature")]
		[ProducesResponseType(StatusCodes.Status204NoContent)]
		[ProducesResponseType(StatusCodes.Status400BadRequest)]
		public async Task<IActionResult> UpdatePartialCarXFeature(int id, JsonPatchDocument<CarXFeatureUpdateDTO> patchDTO)
		{
			if (patchDTO == null || id == 0)
			{
				return BadRequest();
			}
			var brand = await _unitOfWork.CarXFeature.GetAsync(u => u.Id == id, tracked: false);

			CarXFeatureUpdateDTO carXFeatureDTO = _mapper.Map<CarXFeatureUpdateDTO>(brand);


			if (brand == null)
			{
				return BadRequest();
			}
			patchDTO.ApplyTo(carXFeatureDTO, ModelState);
			CarXFeature model = _mapper.Map<CarXFeature>(carXFeatureDTO);

			await _unitOfWork.CarXFeature.UpdateAsync(model);

			if (!ModelState.IsValid)
			{
				return BadRequest(ModelState);
			}
			return NoContent();
		}
        [HttpGet("{carId:int}", Name = "GetCarXFeatureByCarId")]
        [ProducesResponseType(StatusCodes.Status403Forbidden)]
        [ProducesResponseType(StatusCodes.Status401Unauthorized)]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        public async Task<ActionResult<APIResponse>> GetCarXFeatureByCarId(int carId)
        {
            try
            {
                if (carId == 0)
                {
                    _response.StatusCode = HttpStatusCode.BadRequest;
                    return BadRequest(_response);
                }
                var states = _db.CarXFeatures.Include(u => u.FeatureType).Include(u => u.Feature).Where(u => u.CarId == carId).ToList();

                if (states == null || states.Count() == 0)
                {
                    _response.StatusCode = HttpStatusCode.NotFound;
                    return NotFound(_response);
                }

                _response.Result = _mapper.Map<List<CarXFeatureDTO>>(states);
                _response.StatusCode = HttpStatusCode.OK;
                return Ok(_response);
            }
            catch (Exception ex)
            {
                _response.IsSuccess = false;
                _response.ErrorMessages = new List<string>() { ex.ToString() };
            }

            return _response;
        }



    }
}
