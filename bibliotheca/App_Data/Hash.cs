using System;
using System.Security.Cryptography;
using System.Text;

namespace bibliotheca
{
    public partial class Hash
    {
        public string CalculateSHA256(string str)
        {
            SHA256 sha256 = SHA256Managed.Create();
            byte[] hashValue;
            UTF8Encoding objUtf8 = new UTF8Encoding();
            hashValue = sha256.ComputeHash(objUtf8.GetBytes(str));

            return BitConverter.ToString(hashValue).Replace("-", "");
        }
    }
}
