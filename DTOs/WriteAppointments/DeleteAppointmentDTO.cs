using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTOs.WriteAppointments
{
    public class DeleteAppointmentDTO
    {
        public string Jmbg {  get; set; }
        public Guid AppointmentId { get; set; }
    }
}
