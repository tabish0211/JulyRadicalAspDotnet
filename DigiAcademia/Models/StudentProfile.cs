using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DigiAcademia.Models
{
    public class StudentProfile
    {
        public string UserName { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public char Gender { get; set; }
        public string Subjects { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public string  ImagePath { get; set; }
    }
}