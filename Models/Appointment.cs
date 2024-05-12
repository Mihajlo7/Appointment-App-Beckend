using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Appointment : Entity
    {
        public Person Person { get; set; }
        [StringLength(50, ErrorMessage = "First Name should have less than 50 characters")]
        [RegularExpression("^[A-Z][a-zA-Z]*$", ErrorMessage = "First Name should start with upper letter")]
        public string FirstNameDoctor { get; set; }
        [StringLength(50, ErrorMessage = "Last Name should have less than 50 characters")]
        [RegularExpression("^[A-Z][a-zA-Z]*$", ErrorMessage = "Last Name should start with upper letter")]
        public string LastNameDoctor { get;set; }
        [DateGreaterThanToday(ErrorMessage = "Date of Appointment should be after today")]
        public DateTime DateAppointment { get; set; }
        public TimeSpan TimeAppointment { get; set; }
    }

    public class DateGreaterThanTodayAttribute : ValidationAttribute
    {
        public override bool IsValid(object? value)
        {
            DateTime date= (DateTime)value;
            return date> DateTime.Today;
        }
    }

    public class TimeFormatterAttribute : ValidationAttribute
    {
        public override bool IsValid(object? value)
        {
            if (value == null || !(value is TimeSpan))
                return false;

            TimeSpan time = (TimeSpan)value;

            // Define your time format constraints here (HH:mm)
            return TimeSpan.TryParseExact(time.ToString(), "hh\\:mm", null, out _);
        }
    }
}
