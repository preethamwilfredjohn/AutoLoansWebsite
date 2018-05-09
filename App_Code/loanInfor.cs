using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WAD
{
    public class loanInfor
    {
        String applicationType;
        String promaryLoanPurpose;
        double loanAmount;
        int loanTerm;
        String loanPaymentMethod;
        String zip;
        String email;
        public String ApplicationType { get { return applicationType; } set { applicationType = value; } }
        public String PromaryLoanPurpose { get { return promaryLoanPurpose; } set { promaryLoanPurpose = value; } }
        public String Zip { get { return zip; } set { zip = value; } }
        public double LoanAmount { get { return loanAmount; } set { loanAmount = value; } }
        public int LoanTerm { get { return loanTerm; } set { loanTerm = value; } }
        public String LoanPaymentMethod { get { return loanPaymentMethod; } set { loanPaymentMethod = value; } }
        public String EmailAddress { get { return email; } set { email = value; } }


    }
}