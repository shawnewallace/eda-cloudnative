using System;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Host;
using Microsoft.Extensions.Logging;

namespace EDA.Functions
{
    public static class EventLoggerFn
    {
        [FunctionName("EventLoggerFn")]
        public static void Run([ServiceBusTrigger("mytopic", "mysubscription", Connection = "eda-sb-dev_SERVICEBUS")]string mySbMsg, ILogger log)
        {
            log.LogInformation($"C# ServiceBus topic trigger function processed message: {mySbMsg}");
        }
    }
}
