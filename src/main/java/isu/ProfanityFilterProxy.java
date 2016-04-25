package isu;

public class ProfanityFilterProxy implements isu.ProfanityFilter_PortType {
  private String _endpoint = null;
  private isu.ProfanityFilter_PortType profanityFilter_PortType = null;
  
  public ProfanityFilterProxy() {
    _initProfanityFilterProxy();
  }
  
  public ProfanityFilterProxy(String endpoint) {
    _endpoint = endpoint;
    _initProfanityFilterProxy();
  }
  
  private void _initProfanityFilterProxy() {
    try {
      profanityFilter_PortType = (new isu.ProfanityFilter_ServiceLocator()).getProfanityFilterPort();
      if (profanityFilter_PortType != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)profanityFilter_PortType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)profanityFilter_PortType)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (profanityFilter_PortType != null)
      ((javax.xml.rpc.Stub)profanityFilter_PortType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public isu.ProfanityFilter_PortType getProfanityFilter_PortType() {
    if (profanityFilter_PortType == null)
      _initProfanityFilterProxy();
    return profanityFilter_PortType;
  }
  
  public int getProfanityCount(java.lang.String input) throws java.rmi.RemoteException{
    if (profanityFilter_PortType == null)
      _initProfanityFilterProxy();
    return profanityFilter_PortType.getProfanityCount(input);
  }
  
  public java.lang.String getCleanText(java.lang.String input) throws java.rmi.RemoteException{
    if (profanityFilter_PortType == null)
      _initProfanityFilterProxy();
    return profanityFilter_PortType.getCleanText(input);
  }
  
  
}