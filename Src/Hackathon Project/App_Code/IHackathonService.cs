using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IHackathonService" in both code and config file together.
[ServiceContract]
public interface IHackathonService
{
    [OperationContract]
    int Login(string Name, string passwd);

    [OperationContract]
    int AddElement(string ElementName, string ElementDisplayName, string Tool, string TimeZone, string UpdatedBy);

    [OperationContract]
    int DisableElement(int ElementId);

    [OperationContract]
    int UpdateElement(int ElementId,string ElementName,string ElementDisplayName,string TimeZone,string UpdatedBy);

}
