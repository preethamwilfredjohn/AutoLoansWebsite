using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WAD
{
    public class userInfo
    {
        String firstName;
        String middleInitials;
        String lastName;
        String emailAddress1;
        String emailAddress2;
        String homeStreetAddress;
        String homeAptNo;
        String homeCity;
        String homeState;
        String homeZip;
        String homePhone;
        int timeAtCurrentAddressYears;
        String timeAtCurrentAddressMonths;
        String housingStat;
        String socialSecurity;
        String dateOfBirth;
        int driverLicense;
        String pw;
        List<loanInfor> loanInformation;
        
        public List<loanInfor> LoanInformation { get { return loanInformation; } set { loanInformation = value; }  }
        public String FirstName { get { return firstName; } set { firstName = value; } }
        public String MiddleInitials { get { return middleInitials; } set { middleInitials = value; } }
        public String LastName { get { return lastName; } set { lastName = value; } }
        public String EmailAddress1 { get { return emailAddress1; } set { emailAddress1 = value; } }
        public String EmailAddress2 { get { return emailAddress2; } set { emailAddress2 = value; } }
        public String HomeStreetAddress { get { return homeStreetAddress; } set { homeStreetAddress = value; } }
        public String HomeAptNo { get { return homeAptNo; } set { homeAptNo = value; } }
        public String HomeCity { get { return homeCity; } set { homeCity = value; } }
        public String HomeState { get { return homeState; } set { homeState = value; } }
        public String HomeZip { get { return homeZip; } set { homeZip = value; } }
        public String HomePhoneNo { get { return homePhone; } set { homePhone = value; } }
        public int TimeAtCurrentAddressYears { get { return timeAtCurrentAddressYears; } set { timeAtCurrentAddressYears = value; } }
        public String TimeAtCurrentAddressMonths { get { return timeAtCurrentAddressMonths; } set { timeAtCurrentAddressMonths = value; } }
        public int DriverLicense { get { return driverLicense; } set { driverLicense = value; } }
        public String HousingStat { get { return housingStat; } set { housingStat = value; } }
        public String SocialSecurity { get { return socialSecurity; } set { socialSecurity = value; } }
        public String DateOfBirth { get { return dateOfBirth; } set { dateOfBirth = value; } }
        public String Pw { get { return pw; } set { pw = value; } }
        
    }
}