using System.Data;

namespace Demo
{
    internal class Sqlconnection
    {
        internal object state;
        private string strcon;

        public Sqlconnection(string strcon)
        {
            this.strcon = strcon;
        }

        public ConnectionState State { get; internal set; }
    }
}