<%-- 
    Document   : procesarFigura
    Created on : 22 jun. 2024, 11:17:50 p. m.
    Author     : jerso
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.lang.Math"%>
<!DOCTYPE html>
<html>
<head>
    <title>Figuras Geométricas</title>
</head>
<body>
    <h1>Figuras Geométricas</h1>
        <%
            
            double lado1 = Double.parseDouble(request.getParameter("lado1"));
            double lado2 = Double.parseDouble(request.getParameter("lado2"));
            double lado3 = Double.parseDouble(request.getParameter("lado3"));
            double lado4 = Double.parseDouble(request.getParameter("lado4"));
            double radio, diametro, circunferencia, area, perimetro;
            String figura = "";


            double[] ladosc = {lado1, lado2, lado3, lado4};

                    //Calculo Circulo
                int count = 0;
                double result = 0;
                for (int i = 0; i < ladosc.length; i++) {
                    if (ladosc[i] > 0) {
                        count++;
                        if (count == 1) {
                            result = ladosc[i]; // guardar el valor mayor que cero
                        } else {
                            result = 0; // si son mas de dos posiciones mayor que cero, devolver 0
                            break;
                        }
                    }
                }

                if (result>0) {
                    figura = "Círculo";
                    radio = result;
                    diametro = 2 * radio;
                    circunferencia = Math.PI * (radio*2);
                    area = Math.PI * Math.pow(radio, 2);
                    out.println("Figura: " + figura);
                    out.println("Radio: " + radio);
                    out.println("Diámetro: " + diametro);
                    out.println("Circunferencia: " + circunferencia);
                    out.println("Área: " + area);
                }
                
                //Calculo del Triangulo
                                 
                    double vert1 = 0;
                    double vert2 = 0;
                    double vert3 = 0;
                    double result3 = 0;
                    int count2 = 0;
                
                    boolean hasVert1 = false;
                    boolean hasVert2 = false;
                    boolean hasVert3 = false;
                    boolean siTriangulo = false;

                    for (int i = 0; i < ladosc.length; i++) {
                        if (ladosc[i] > 0) {
                            if (!hasVert1) {
                                vert1 = ladosc[i];
                                hasVert1 = true;
                                siTriangulo=false;
                            } else if (!hasVert2) {
                                vert2 = ladosc[i];
                                hasVert2 = true;
                                siTriangulo=false;
                            } else if (!hasVert3) {
                                vert3 = ladosc[i];
                                hasVert3 = true;
                                siTriangulo=true; 
                            } else {
                                    siTriangulo = false; // Si encontramos más de tres valores mayores a cero, no es un triángulo
                                    break;
                            }
                        }
                    }
                    
                if (siTriangulo) {
                   figura = "Triángulo";
                    perimetro = vert1 + vert2 + vert3;
                    double semiPer = perimetro / 2;
                    area = Math.sqrt(semiPer * (semiPer - vert1) * (semiPer - vert2) * (semiPer - vert3));
                    out.println("Figura: " + figura);
                    out.println("Perímetro: " + perimetro);
                    out.println("Área: " + area);
                    
                    if ( vert1== vert2 && vert2 == vert3) {
                        out.println("Figura: Triángulo Equilátero");
                        }else if (vert1 == vert2 && vert1 != vert3){
                                  out.println("Figura: Triángulo Isósceles");
                                  } else if (vert1 != vert2 && vert1 == vert3){
                                            out.println("Figura: Triángulo Isósceles");
                                            } else if (vert1 == vert2 && vert2 != vert3){
                                                       out.println("Figura: Triángulo Isósceles");
                                                        } else if (vert1 != vert2 && vert2 == vert3){
                                                                   out.println("Figura: Triángulo Isósceles");
                                                                   } else {
                                                                          out.println("Figura: Triángulo Escaleno");
                                                                           } 
                }

                                       
                    //Calculo Cuadrado
                if ((lado1 >0) && (lado2 >0) && (lado3 > 0 ) && (lado4 > 0 ) && (lado1 == lado2) && (lado2 == lado3) && (lado3 == lado4)) {
                    figura = "Cuadrado";
                    perimetro = 4 * lado1;
                    area = Math.pow(lado1, 2);
                    out.println("Figura: " + figura);
                    out.println("Perímetro: " + perimetro);
                    out.println("Área: " + area);
                }
                    
                    //Calculo del Rectangulo

                boolean allPositive = true;
                int countEqual = 0;
                double result2= 0;
                for (int i = 0; i < ladosc.length; i++) {
                    if (ladosc[i] <= 0) {
                        allPositive = false;
                        break;
                    }
                }

                if (allPositive) {
                    for (int i = 0; i < ladosc.length; i++) {
                        for (int j = i + 1; j < ladosc.length; j++) {
                            if (ladosc[i] == ladosc[j]) {
                                countEqual++;
                            }
                        }
                    }
                    if (countEqual == 2) {
                        result2 = 1;
                    } else {
                        result2 = 0;
                    }
                }

                if (result2 > 0) {

                    double max = ladosc[0];
                    double min = ladosc[0];
                    for (int i = 1; i < ladosc.length; i++) {
                        if (ladosc[i] > max) {
                            max = ladosc[i];
                        }
                        if (ladosc[i] < min) {
                            min = ladosc[i];
                        }
                    }
                    figura = "Rectángulo";
                    double ladoB = max;
                    double ladoH = min;
                    perimetro = (lado1 + lado2 + lado3 + lado4);
                    area = ladoB * ladoH;
                    out.println("Figura: " + figura);
                    out.println("Perímetro: " + perimetro);
                    out.println("Área: " + area);
                }
                



        %>
