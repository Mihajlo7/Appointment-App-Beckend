using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTOs.GetAppointments
{
    public class GetAppointmentDTO
    {
        public Guid AppointmentId { get; set; }
        public string DoctorFirstName { get; set; }
        public string DoctorLastName { get; set;}
        public DateTime DateAppointment { get; set; }
        public TimeSpan TimeAppointment { get; set; }
    }
}
