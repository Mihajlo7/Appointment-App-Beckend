using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTOs.WriteAppointments
{
    public class UpdateAppointmentDTO
    {
        public string Jmbg { get; set; }
        public string AppointmentId { get; set; }
        public string DoctorFirstName { get; set; }
        public string DoctorLastName { get; set; }
        public DateTime DateAppointment { get; set; }
        public string TimeAppointment { get; set; }
    }
}
