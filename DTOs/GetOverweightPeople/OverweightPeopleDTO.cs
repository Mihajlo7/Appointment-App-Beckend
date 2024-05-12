﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTOs.GetOverweightPeople
{
    public class OverweightPeopleDTO
    {
        public Guid PersonId { get; set; }
        public string Jmbg {  get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public double Height { get; set; }
        public double Weight { get; set; }
        public double Bmi { get; set; }
    }
}
