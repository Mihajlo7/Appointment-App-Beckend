using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Person : Entity
    { 
        [RegularExpression(@"\d{13}$",ErrorMessage ="JMBG must contains 13 numeric characters")]
        public string JMBG { get; set; }
        [StringLength(50,ErrorMessage ="First Name should have less than 50 characters")]
        [RegularExpression("^[A-Z][a-zA-Z]*$",ErrorMessage ="First Name should start with upper letter")]
        public string FirstName { get; set; }
        [StringLength(50, ErrorMessage = "Last Name should have less than 50 characters")]
        [RegularExpression("^[A-Z][a-zA-Z]*$", ErrorMessage = "Last Name should start with upper letter")]
        public string LastName { get; set; }
        public double Height { get; set; }
        public double Weight { get; set; }
        public double Bmi { get; set; }
        public virtual ICollection<Appointment> Appointments { get; set; }
    }
}
