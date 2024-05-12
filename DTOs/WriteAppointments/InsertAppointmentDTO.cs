using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTOs.WriteAppointments
{
    public class InsertAppointmentDTO
    {
        public string Jmbg {  get; set; }
        public string DoctorFirstName { get; set; }
        public string DoctorLastName { get; set;}
        public DateTime DateAppointment { get; set; }
        public string TimeAppointment { get; set; }
    }
}
