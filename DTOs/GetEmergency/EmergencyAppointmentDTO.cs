using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTOs.GetEmergency
{
    public class EmergencyAppointmentDTO
    {
        public Guid PersonId { get; set; }
        public string Jmbg { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public double Height { get; set; }
        public double Weight { get; set; }
        public double Bmi { get; set; }
        public Guid AppointmentId { get; set; }
        public string DoctorFirstName { get; set; }
        public string DoctorLastName { get; set; }
        public DateTime DateAppointment { get; set; }
        public TimeSpan TimeAppointment { get; set; }
    }
}
