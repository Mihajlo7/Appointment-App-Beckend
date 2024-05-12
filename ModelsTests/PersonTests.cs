using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using Models;
using Xunit;

namespace ModelsTests
{
    public class PersonTests
    {
        [Fact]
        public void ValidPerson()
        {
            // Arrange
            var person = new Person
            {
                JMBG = "1234567890123",
                FirstName = "John",
                LastName = "Doe",
                Height = 180.5,
                Weight = 75.5,
                Bmi = 23.2,
                Appointments = new List<Appointment>()
            };

            // Act
            var validationResults = new List<ValidationResult>();
            var isValid = Validator.TryValidateObject(person, new ValidationContext(person), validationResults, true);

            // Assert
            //Assert.True(isValid);
            Assert.Empty(validationResults);
        }

        [Theory]
        [InlineData("123456789012", "John", "Doe", 180.5, 75.5, 23.2, "JMBG must contains 13 numeric characters")]
        [InlineData("1234567890123", "john", "Doe", 180.5, 75.5, 23.2, "First Name should start with upper letter")]
        [InlineData("1234567890123", "John", "doe", 180.5, 75.5, 23.2, "Last Name should start with upper letter")]
        public void InvalidPerson(string jmbg, string firstName, string lastName, double height, double weight, double bmi, string expectedErrorMessage)
        {
            // Arrange
            var person = new Person
            {
                JMBG = jmbg,
                FirstName = firstName,
                LastName = lastName,
                Height = height,
                Weight = weight,
                Bmi = bmi,
                Appointments = new List<Appointment>()
            };

            // Act
            var validationResults = new List<ValidationResult>();
            var isValid = Validator.TryValidateObject(person, new ValidationContext(person), validationResults, true);

            // Assert
            Assert.False(isValid);
            Assert.NotEmpty(validationResults);
            Assert.Contains(validationResults, vr => vr.ErrorMessage == expectedErrorMessage);
        }
    }
}
