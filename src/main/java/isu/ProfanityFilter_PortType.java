/**
 * ProfanityFilter_PortType.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package isu;

public interface ProfanityFilter_PortType extends java.rmi.Remote {
    public int getProfanityCount(java.lang.String input) throws java.rmi.RemoteException;
    public java.lang.String getCleanText(java.lang.String input) throws java.rmi.RemoteException;
}
