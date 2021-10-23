using System;
using System.Collections.Generic;
using System.Text;

namespace Examen1_Jonnathan_Ortega
{
    class ClsServicio
    {
        int numPago, numCaja, pos;
        double monPagar, monCom, monDed, monPagoCl, monVuel;
        int[] numeroPago = new int[10];
        String[] fecha = new string[10];
        String[] hora = new string[10];
        String[] cedula = new string[10];
        String[] nombre = new string[10];
        String[] apellido1 = new string[10];
        String[] apellido2 = new string[10];
        String[] numeroCaja = new string[10];
        String[] servicio = new string[10];
        String[] numeroFactura = new string[10];
        double[] montoPagar = new double[10];
        double[] montoComision = new double[10];
        double[] montoDeducido = new double[10];
        double[] montoPagoCliente = new double[10];
        double[] montoVuelto = new double[10];

        public ClsServicio()
        {
            pos = 0;
            numPago = 0;
            numCaja = 0;
        }

        public void InicializarVectores()
        {
            for (int i = 0; i < numeroPago.Length; i++)
            {
                numPago = 0;
                numCaja = 0;
                numeroPago[i] = 0;
                fecha[i] = "";
                hora[i] = "";
                cedula[i] = "";
                nombre[i] = "";
                apellido1[i] = "";
                apellido2[i] = "";
                numeroCaja[i] = "";
                servicio[i] = "";
                numeroFactura[i] = "";
                montoPagar[i] = 0.0;
                montoComision[i] = 0.0;
                montoDeducido[i] = 0.0;
                montoPagoCliente[i] = 0.0;
                montoVuelto[i] = 0.0;
            }
        }

        public void RealizarPago()
        {
            char opcion = 's';
            do
            {
                Console.WriteLine("Sistema Pago de Servicios Publicos");
                Console.WriteLine("Tienda la Favorita - Ingreso de Datos");
                numPago++;
                numeroPago[pos] = numPago;
                fecha[pos] = DateTime.Now.ToString("dd/MM/yyyy");
                hora[pos] = DateTime.Now.ToString("HH:mm:ss tt");
                Console.WriteLine("Ingrese el numero de cedula del cliente:");
                cedula[pos] = Console.ReadLine();
                Console.WriteLine("Ingrese el nombre del cliente:");
                nombre[pos] = Console.ReadLine();
                Console.WriteLine("Ingrese el primer apellido del cliente:");
                apellido1[pos] = Console.ReadLine();
                Console.WriteLine("Ingrese el segundo apellido del cliente:");
                apellido2[pos] = Console.ReadLine();
                Console.WriteLine("Ingrese el numero de caja donde se realizo el tramite:");
                numeroCaja[pos] = Console.ReadLine();
                Console.WriteLine("Ingrese el servicio a cancelar: 1 = Recibo de Luz, 2 = Recibo de Telefono, 3 = Recibo de Agua");
                servicio[pos] = Console.ReadLine();
                Console.WriteLine("Ingrese el numero de factura:");
                numeroFactura[pos] = Console.ReadLine();
                Console.WriteLine("Ingrese el monto a pagar:");
                montoPagar[pos] = Convert.ToDouble(Console.ReadLine());
                monPagar = montoPagar[pos];
                if (servicio[pos] == "1")
                {
                    monCom = monPagar * 0.04;
                    montoComision[pos] = monCom;

                    monDed = monPagar - monCom;
                    montoDeducido[pos] = monDed;
                }
                else if (servicio[pos] == "2")
                {
                    monCom = monPagar * 0.055;
                    montoComision[pos] = monCom;

                    monDed = monPagar - monCom;
                    montoDeducido[pos] = monDed;
                }
                else
                {
                    monCom = monPagar * 0.065;
                    montoComision[pos] = monCom;

                    monDed = monPagar - monCom;
                    montoDeducido[pos] = monDed;
                }
                Console.WriteLine("Ingrese el monto con el que paga el cliente:");
                montoPagoCliente[pos] = Convert.ToDouble(Console.ReadLine());
                monPagoCl = montoPagoCliente[pos];
                monVuel = monPagoCl - monPagar;
                montoVuelto[pos] = monVuel;
                pos++;
                Console.WriteLine("Desea continuar? s/n");
                opcion = Convert.ToChar(Console.ReadLine());
            }while( opcion != 'n');
        }

        public void ConsultarPagos()
        {
            char opcion = 's';
            do
            {
                Console.WriteLine("Sistema Pago de Servicios Publicos");
                Console.WriteLine("Tienda la Favorita - Consulta de Datos");
                Console.WriteLine("Ingrese el numero de pago:");
                string nPago = Console.ReadLine();
                Boolean existe = false;
                for (int i = 0; i < numeroPago.Length; i++)
                {
                    if (nPago.Equals(numeroPago[i].ToString()))
                    {
                        Console.WriteLine($"Fecha: {fecha[i]}");
                        Console.WriteLine($"Hora: {hora[i]}");
                        Console.WriteLine($"Cedula: {cedula[i]}");
                        Console.WriteLine($"Nombre del cliente: {nombre[i]}");
                        Console.WriteLine($"Primer Apellido: {apellido1[i]}");
                        Console.WriteLine($"Segundo Apellido: {apellido2[i]}");
                        Console.WriteLine($"Tipo de Servicio: {servicio[i]}");
                        Console.WriteLine($"Numero de Factura: {numeroFactura[i]}");
                        Console.WriteLine($"Monto a Pagar: {montoPagar[i]}");
                        Console.WriteLine($"Comision autorizada: {montoComision[i]}");
                        Console.WriteLine($"Pago con: {montoPagoCliente[i]}");
                        Console.WriteLine($"Monto deducido: {montoDeducido[i]}");
                        Console.WriteLine($"Vuelto: {montoVuelto[i]}");
                        Console.WriteLine("Desea continuar? s/n");
                        opcion = Convert.ToChar(Console.ReadLine());
                        existe = true;
                    }
                }
                if (!existe)
                {
                    Console.WriteLine("El pago no se encuentra registrado.");
                    Console.WriteLine("Desea continuar? s/n");
                    opcion = Convert.ToChar(Console.ReadLine());
                }
            } while (opcion != 'n');
        }

        public void ModificarPago()
        {
            char opcion = 's';
            int seleccion = 0;
            do
            {
                Console.WriteLine("Sistema Pago de Servicios Publicos");
                Console.WriteLine("Tienda la Favorita - Modificar Pagos");
                Console.WriteLine("Ingrese el numero de pago:");
                string nPago = Console.ReadLine();
                Boolean existe = false;
                for (int i = 0; i < numeroPago.Length; i++)
                {
                    if (nPago.Equals(numeroPago[i].ToString()))
                    {
                        Console.WriteLine($"1- Fecha: {fecha[i]}");
                        Console.WriteLine($"2- Hora: {hora[i]}");
                        Console.WriteLine($"3- Cedula: {cedula[i]}");
                        Console.WriteLine($"4- Nombre del cliente: {nombre[i]}");
                        Console.WriteLine($"5- Primer Apellido: {apellido1[i]}");
                        Console.WriteLine($"6- Segundo Apellido: {apellido2[i]}");
                        Console.WriteLine($"7- Tipo de Servicio: {servicio[i]}");
                        Console.WriteLine($"8- Numero de Factura: {numeroFactura[i]}");
                        Console.WriteLine($"Monto a Pagar: {montoPagar[i]}");
                        Console.WriteLine($"Comision autorizada: {montoComision[i]}");
                        Console.WriteLine($"9- Pago con: {montoPagoCliente[i]}");
                        Console.WriteLine($" Monto deducido: {montoDeducido[i]}");
                        Console.WriteLine($"Vuelto: {montoVuelto[i]}");
                        Console.WriteLine("Ingrese el numero del dato a modificar: ");
                        seleccion = Convert.ToInt32(Console.ReadLine());
                        switch (seleccion)
                        {
                            case 1:
                                fecha[i] = DateTime.Now.ToString("dd/MM/yyyy");
                                break;
                            case 2:
                                hora[i] = DateTime.Now.ToString("HH:mm:ss tt");
                                break;
                            case 3:
                                Console.WriteLine("Nuevo Dato: ");
                                cedula[i] = Console.ReadLine();
                                break;
                            case 4:
                                Console.WriteLine("Nuevo Dato: ");
                                nombre[i] = Console.ReadLine();
                                break;
                            case 5:
                                Console.WriteLine("Nuevo Dato: ");
                                apellido1[i] = Console.ReadLine();
                                break;
                            case 6:
                                Console.WriteLine("Nuevo Dato: ");
                                apellido2[i] = Console.ReadLine();
                                break;
                            case 7:
                                Console.WriteLine("Nuevo Dato: ");
                                servicio[i] = Console.ReadLine();
                                monPagar = montoPagar[i];
                                if (servicio[pos] == "1")
                                {
                                    monCom = monPagar * 0.04;
                                    montoComision[pos] = monCom;

                                    monDed = monPagar - monCom;
                                    montoDeducido[pos] = monDed;
                                }
                                else if (servicio[pos] == "2")
                                {
                                    monCom = monPagar * 0.055;
                                    montoComision[pos] = monCom;

                                    monDed = monPagar - monCom;
                                    montoDeducido[pos] = monDed;
                                }
                                else
                                {
                                    monCom = monPagar * 0.065;
                                    montoComision[pos] = monCom;

                                    monDed = monPagar - monCom;
                                    montoDeducido[pos] = monDed;
                                }
                                break;
                            case 8:
                                Console.WriteLine("Nuevo Dato: ");
                                numeroFactura[i] = Console.ReadLine();
                                break;
                            case 9:
                                Console.WriteLine("Nuevo Dato: ");
                                montoPagoCliente[i] = Convert.ToDouble(Console.ReadLine());
                                 monPagoCl = montoPagoCliente[pos];
                monVuel = monPagoCl - monPagar;
                montoVuelto[pos] = monVuel;
                                break;
                            default:
                                break;
                        }
                        Console.WriteLine("Desea continuar? s/n");
                        opcion = Convert.ToChar(Console.ReadLine());
                        existe = true;
                    }
                }
                if (!existe)
                {
                    Console.WriteLine("El pago no se encuentra registrado.");
                    Console.WriteLine("Desea continuar? s/n");
                    opcion = Convert.ToChar(Console.ReadLine());
                }
            } while (opcion != 'n');
        }

        public void EliminarPagos()
        {
            char opcion = 's';
            do
            {
                Console.WriteLine("Sistema Pago de Servicios Publicos");
                Console.WriteLine("Tienda la Favorita - Eliminar Datos");
                Console.WriteLine("Ingrese el numero de pago:");
                string nPago = Console.ReadLine();
                Boolean existe = false;
                for (int i = 0; i < numeroPago.Length; i++)
                {
                    if (nPago.Equals(numeroPago[i].ToString()))
                    {
                        Console.WriteLine($"Fecha: {fecha[i]}");
                        Console.WriteLine($"Hora: {hora[i]}");
                        Console.WriteLine($"Cedula: {cedula[i]}");
                        Console.WriteLine($"Nombre del cliente: {nombre[i]}");
                        Console.WriteLine($"Primer Apellido: {apellido1[i]}");
                        Console.WriteLine($"Segundo Apellido: {apellido2[i]}");
                        Console.WriteLine($"Tipo de Servicio: {servicio[i]}");
                        Console.WriteLine($"Numero de Factura: {numeroFactura[i]}");
                        Console.WriteLine($"Monto a Pagar: {montoPagar[i]}");
                        Console.WriteLine($"Comision autorizada: {montoComision[i]}");
                        Console.WriteLine($"Pago con: {montoPagoCliente[i]}");
                        Console.WriteLine($"Monto deducido: {montoDeducido[i]}");
                        Console.WriteLine($"Vuelto: {montoVuelto[i]}");
                        Console.WriteLine("Esta seguro de eliminar el dato? s/n");
                        opcion = Convert.ToChar(Console.ReadLine());
                        if (opcion == 's')
                        {
                            numPago = 0;
                            numCaja = 0;
                            numeroPago[i] = 0;
                            fecha[i] = "";
                            hora[i] = "";
                            cedula[i] = "";
                            nombre[i] = "";
                            apellido1[i] = "";
                            apellido2[i] = "";
                            numeroCaja[i] = "";
                            servicio[i] = "";
                            numeroFactura[i] = "";
                            montoPagar[i] = 0.0;
                            montoComision[i] = 0.0;
                            montoDeducido[i] = 0.0;
                            montoPagoCliente[i] = 0.0;
                            montoVuelto[i] = 0.0;
                        } else
                        {
                            Console.WriteLine("La informacion no fue eliminada!");
                            opcion = 'n';
                        }
                        existe = true;
                    }
                }
                if (!existe)
                {
                    Console.WriteLine("El pago no se encuentra registrado.");
                    opcion = 'n';                
                }
            } while (opcion != 'n');
        }

        public void ReporteTodosPagos()
        {
            Console.WriteLine("Sistema Pago de Servicios Publicos");
            Console.WriteLine("Tienda la Favorita - Reporte Todos los Pago");
            Console.WriteLine("");
            Console.WriteLine("#Pago Fecha/Hora Cedula Nombre Apellido1 Apellido2 Monto Recibo");
            Console.WriteLine("--------------------------------------------------------------------------");
            Console.WriteLine("--------------------------------------------------------------------------");
            for (int i = 0; i < numeroPago.Length; i++)
            {
                Console.WriteLine($"{numeroPago[i]} {fecha[i]}/{hora[i]} {cedula[i]} {nombre[i]} {apellido1[i]} {apellido2[i]} {montoPagar[i]}");
            }
            Console.WriteLine("--------------------------------------------------------------------------");
            Console.WriteLine("--------------------------------------------------------------------------");
        }

        public void ReportePagoPorServicio()
        {
            Console.WriteLine("Sistema Pago de Servicios Publicos");
            Console.WriteLine("Tienda la Favorita - Reporte Pago por Tipo de Servicio");
            Console.WriteLine("");
            int op = 0;
            Console.WriteLine("Seleccione el codigo de servicio:    [1] Electricidad    [2] Telefono    [3] Agua");
            Console.WriteLine("--------------------------------------------------------------------------");
            Console.WriteLine("--------------------------------------------------------------------------");
            op = Convert.ToInt32(Console.ReadLine());
            switch (op)
            {
                case 1:
                    Console.Clear();
                    Console.WriteLine("Sistema Pago de Servicios Publicos");
                    Console.WriteLine("Tienda la Favorita - Reporte Pago Electricidad");
                    Console.WriteLine("");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("# Pago Fecha/Hora Pago Cedula Nombre Apellido1 Apellido2 Monto Recibo");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    for (int i = 0; i < numeroPago.Length; i++)
                    {
                        if(servicio[i] == "1")
                        {
                            Console.WriteLine($"{numeroPago[i]} {fecha[i]}/{hora[i]} {cedula[i]} {nombre[i]} {apellido1[i]} {apellido2[i]} {montoPagar[i]}");
                        }
                    }
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    break;
                case 2:
                    Console.Clear();
                    Console.WriteLine("Sistema Pago de Servicios Publicos");
                    Console.WriteLine("Tienda la Favorita - Reporte Pago Telefono");
                    Console.WriteLine("");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("# Pago Fecha/Hora Pago Cedula Nombre Apellido1 Apellido2 Monto Recibo");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    for (int i = 0; i < numeroPago.Length; i++)
                    {
                        if (servicio[i] == "2")
                        {
                            Console.WriteLine($"{numeroPago[i]} {fecha[i]}/{hora[i]} {cedula[i]} {nombre[i]} {apellido1[i]} {apellido2[i]} {montoPagar[i]}");
                        }
                    }
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    break;
                case 3:
                    Console.Clear();
                    Console.WriteLine("Sistema Pago de Servicios Publicos");
                    Console.WriteLine("Tienda la Favorita - Reporte Pago Agua");
                    Console.WriteLine("");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("# Pago Fecha/Hora Pago Cedula Nombre Apellido1 Apellido2 Monto Recibo");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    for (int i = 0; i < numeroPago.Length; i++)
                    {
                        if (servicio[i] == "3")
                        {
                            Console.WriteLine($"{numeroPago[i]} {fecha[i]}/{hora[i]} {cedula[i]} {nombre[i]} {apellido1[i]} {apellido2[i]} {montoPagar[i]}");
                        }
                    }
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    break;
                default:
                    break;
            }
        }
        
        public void ReportePagoPorCaja()
        {
            Console.WriteLine("Sistema Pago de Servicios Publicos");
            Console.WriteLine("Tienda la Favorita - Reporte Todos los pagos por codigo de caja");
            Console.WriteLine("");
            int op = 0;
            Console.WriteLine("Seleccione el codigo de caja:    [1] Caja#1    [2] Caja#2    [3] Caja#3");
            Console.WriteLine("--------------------------------------------------------------------------");
            Console.WriteLine("--------------------------------------------------------------------------");
            op = Convert.ToInt32(Console.ReadLine());
            switch (op)
            {
                case 1:
                    Console.Clear();
                    Console.WriteLine("Sistema Pago de Servicios Publicos");
                    Console.WriteLine("Tienda la Favorita - Reporte Pago Caja #1");
                    Console.WriteLine("");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("# Pago Fecha/Hora Pago Cedula Nombre Apellido1 Apellido2 Monto Recibo");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    for (int i = 0; i < numeroPago.Length; i++)
                    {
                        if (numeroCaja[i] == "1")
                        {
                            Console.WriteLine($"{numeroPago[i]} {fecha[i]}/{hora[i]} {cedula[i]} {nombre[i]} {apellido1[i]} {apellido2[i]} {montoPagar[i]}");
                        }
                    }
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    break;
                case 2:
                    Console.Clear();
                    Console.WriteLine("Sistema Pago de Servicios Publicos");
                    Console.WriteLine("Tienda la Favorita - Reporte Pago Caja #2");
                    Console.WriteLine("");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("# Pago Fecha/Hora Pago Cedula Nombre Apellido1 Apellido2 Monto Recibo");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    for (int i = 0; i < numeroPago.Length; i++)
                    {
                        if (numeroCaja[i] == "2")
                        {
                            Console.WriteLine($"{numeroPago[i]} {fecha[i]}/{hora[i]} {cedula[i]} {nombre[i]} {apellido1[i]} {apellido2[i]} {montoPagar[i]}");
                        }
                    }
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    break;
                case 3:
                    Console.Clear();
                    Console.WriteLine("Sistema Pago de Servicios Publicos");
                    Console.WriteLine("Tienda la Favorita - Reporte Pago Caja #3");
                    Console.WriteLine("");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("# Pago Fecha/Hora Pago Cedula Nombre Apellido1 Apellido2 Monto Recibo");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    for (int i = 0; i < numeroPago.Length; i++)
                    {
                        if (numeroCaja[i] == "3")
                        {
                            Console.WriteLine($"{numeroPago[i]} {fecha[i]}/{hora[i]} {cedula[i]} {nombre[i]} {apellido1[i]} {apellido2[i]} {montoPagar[i]}");
                        }
                    }
                    Console.WriteLine("--------------------------------------------------------------------------");
                    Console.WriteLine("--------------------------------------------------------------------------");
                    break;
                default:
                    break;
            }
        }

        public void RerporteDineroComisionado()
        {
            Console.WriteLine("Sistema Pago de Servicios Publicos");
            Console.WriteLine("Tienda la Favorita - Reporte Dinero Comisionado por tipo de servicio");
            Console.WriteLine("--------------------------------------------------------------------------");
            Console.WriteLine("--------------------------------------------------------------------------");
            Console.WriteLine("ITEM                         Cant. Transacciones         Total Comisionado");
            Console.WriteLine("--------------------------------------------------------------------------");
            Console.WriteLine("--------------------------------------------------------------------------");

            Console.WriteLine("--------------------------------------------------------------------------");
            Console.WriteLine("--------------------------------------------------------------------------");
        }
    }
}
