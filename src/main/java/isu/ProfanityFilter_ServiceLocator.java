/**
 * ProfanityFilter_ServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package isu;

public class ProfanityFilter_ServiceLocator extends org.apache.axis.client.Service implements isu.ProfanityFilter_Service {

    public ProfanityFilter_ServiceLocator() {
    }


    public ProfanityFilter_ServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public ProfanityFilter_ServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for ProfanityFilterPort
    private java.lang.String ProfanityFilterPort_address = "http://gfish.it.ilstu.edu:8080/ProfanityFilter/ProfanityFilter";

    public java.lang.String getProfanityFilterPortAddress() {
        return ProfanityFilterPort_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String ProfanityFilterPortWSDDServiceName = "ProfanityFilterPort";

    public java.lang.String getProfanityFilterPortWSDDServiceName() {
        return ProfanityFilterPortWSDDServiceName;
    }

    public void setProfanityFilterPortWSDDServiceName(java.lang.String name) {
        ProfanityFilterPortWSDDServiceName = name;
    }

    public isu.ProfanityFilter_PortType getProfanityFilterPort() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(ProfanityFilterPort_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getProfanityFilterPort(endpoint);
    }

    public isu.ProfanityFilter_PortType getProfanityFilterPort(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            isu.ProfanityFilterPortBindingStub _stub = new isu.ProfanityFilterPortBindingStub(portAddress, this);
            _stub.setPortName(getProfanityFilterPortWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setProfanityFilterPortEndpointAddress(java.lang.String address) {
        ProfanityFilterPort_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (isu.ProfanityFilter_PortType.class.isAssignableFrom(serviceEndpointInterface)) {
                isu.ProfanityFilterPortBindingStub _stub = new isu.ProfanityFilterPortBindingStub(new java.net.URL(ProfanityFilterPort_address), this);
                _stub.setPortName(getProfanityFilterPortWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("ProfanityFilterPort".equals(inputPortName)) {
            return getProfanityFilterPort();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://isu/", "ProfanityFilter");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://isu/", "ProfanityFilterPort"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("ProfanityFilterPort".equals(portName)) {
            setProfanityFilterPortEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
