﻿using AutoMapper;
using CarHub_Web.Models;
using CarHub_Web.Models.Dto;
using CarHub_Web.Models.VM;
using CarHub_Web.Service.IService;
using Microsoft.AspNetCore.Authorization;
    [Area("Admin")]
    [Authorize(Roles = "SuperAdmin,Admin")]
    public class ApplicationUserController : Controller
        
        public ApplicationUserController(IApplicationUserService userService, IApplicationRoleService roleService,
            IMapper mapper, IApplicationUserRoleService userRoleService)
            _roleService = roleService;
            var response = await _userService.GetAsync<APIResponse>(ApplicationUserId, HttpContext.Session.GetString(SD.SessionToken));

            var UserRoleList = await _userRoleService.GetAllAsync<APIResponse>(HttpContext.Session.GetString(SD.SessionToken));
            if (UserRoleList != null && UserRoleList.IsSuccess)
            {
                var list = JsonConvert.DeserializeObject<List<ApplicationUserRoleDTO>>(Convert.ToString(UserRoleList.Result));
                userVM.ApplicationUserRoleList = list.Where(x => x.UserId == ApplicationUserId).ToList();
            }

                userVM.ApplicationRoleList = JsonConvert.DeserializeObject<List<ApplicationRoleDTO>>
                        (Convert.ToString(ApplicationRoleList.Result)).Select(i => new ApplicationRoleDTO
                        {
                            Name = i.Name,
                            Id = i.Id,
                            IsChecked = userVM.ApplicationUserRoleList.Where(x => x.RoleId == i.Id && x.UserId == ApplicationUserId).Any()
                        }).ToList();
            }
            return View(userVM);


        [HttpPost]
                else
                {
                    if (response.ErrorMessages.Count > 0)
                    {
                        ModelState.AddModelError("ErrorMessages", response.ErrorMessages.FirstOrDefault());
                    }
                }

            var UserRoleList = await _userRoleService.GetAllAsync<APIResponse>(HttpContext.Session.GetString(SD.SessionToken));
            if (UserRoleList != null && UserRoleList.IsSuccess)
            {
                updateUser.ApplicationUserRoleList = JsonConvert.DeserializeObject<List<ApplicationUserRoleDTO>>(Convert.ToString(UserRoleList.Result));
            }

            return View(updateUser);