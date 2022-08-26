using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Console._0_TipoValor
{
    internal class TipoNumerico
    {
        public void Executa()
        {
            byte byteMin = Byte.MinValue;
            byte byteMax = Byte.MaxValue;
            System.Console.WriteLine("Byte Min:"+ byteMin);
            System.Console.WriteLine("Byte Max:" + byteMax);

            sbyte sbyteMin = SByte.MinValue;
            sbyte sbyteMax = sbyte.MaxValue;
            System.Console.WriteLine("Sbyte min:" + sbyteMin);
            System.Console.WriteLine("Sbyte max:" + sbyteMax);

            short shortMin = short.MinValue;
            short shortMax = short.MaxValue;
            System.Console.WriteLine("Short min:" + shortMin);
            System.Console.WriteLine("Short max:" + shortMax);

            ushort ushortMin = ushort.MinValue;
            ushort ushortMax = ushort.MaxValue;
            System.Console.WriteLine("UShort min:" + ushortMin);
            System.Console.WriteLine("UShort max:" + ushortMax);

            Int16 int16Min = Int16.MinValue;
            Int16 int16Max = Int16.MaxValue;
            System.Console.WriteLine("Int16 min:" + int16Min);
            System.Console.WriteLine("Int16 max:" + int16Max);

            int intMin = int.MinValue;
            int intMax = int.MaxValue;
            System.Console.WriteLine("Int min:" + intMin);
            System.Console.WriteLine("Int max:" + intMax);

            Int32 int32Min = Int32.MinValue;
            Int32 int32Max = Int32.MaxValue;
            System.Console.WriteLine("Int32 min:" + int32Min);
            System.Console.WriteLine("Int32 max:" + int32Max);

            Int64 int64Min = Int32.MinValue;
            Int64 int64Max = Int32.MaxValue;
            System.Console.WriteLine("Int64 min:" + int32Min);
            System.Console.WriteLine("Int64 max:" + int32Max);

            long longMin = Int32.MinValue;
            long longMax = Int32.MaxValue;
            System.Console.WriteLine("Long min:" + longMin);
            System.Console.WriteLine("Long max:" + longMax);

            //int64
            //long

        }

    }
}
