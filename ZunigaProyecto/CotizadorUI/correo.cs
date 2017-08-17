using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;

namespace CotizadorUI
{
    public class correo
    {
        string des = "correosp52017@gmail.com";
        string contraseña = "5432188progra";

        MailMessage m = new MailMessage();

        SmtpClient smtp = new SmtpClient();

        char[] delimitador = { ';' };

        public bool EnviarCorreo(string para, string asunto, string cuerpo)
        {
            try
            {
                m.From = new MailAddress(des);
                m.Subject = asunto;
                m.To.Add(new MailAddress(para));
                m.Body = cuerpo;

                if (para == "") { }
                else
                {
                    string[] cadena = para.Split(delimitador);

                    foreach (string word in cadena) m.To.Add(word.Trim());
                }

                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new NetworkCredential(des, contraseña);
                smtp.EnableSsl = true;
                smtp.Send(m);


                return true;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.StackTrace);
                return false;
            }



        }

        public string destinatario { get; set; }
        public string asunto { get; set; }
        public string cuerpo { get; set; }



    }
}