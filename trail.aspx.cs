using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class trail : System.Web.UI.Page
{

    private static Uri baseAddress = new Uri("https://apistore.datasparkanalytics.com:8243/realtimefootfall/v2/query");
    private static readonly HttpClient httpClient = new HttpClient();


    public int haineseFootfall;
    public int marinaFootfall;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //do your shit here
        //generateNumbersAsync();
        //Task<dynamic> task = generateNumbersAsync();

        //task.Wait(); //Blocks thread and waits until task is completed

        //dynamic resultUser = task.Result;

        //getFootfall();
        getWeather();
    }
 
    public void getWeather()
    {
        string html;
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://api.data.gov.sg/v1/environment/2-hour-weather-forecast?date=2017-05-22");
        request.AutomaticDecompression = DecompressionMethods.GZip;

        using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
        using (Stream stream = response.GetResponseStream())
        using (StreamReader reader = new StreamReader(stream))
        {
            html = reader.ReadToEnd();
        }
        dynamic result = JsonConvert.DeserializeObject<dynamic>(html);
        string l = "";
    }

    public void getFootfall()
    {
        HttpWebRequest request = System.Net.WebRequest.Create("https://apistore.datasparkanalytics.com:8243/realtimefootfall/v2/query") as HttpWebRequest;
        request.Method = "POST";
        request.Host = "apistore.datasparkanalytics.com";
        request.ContentType = "application/x-www-form-urlencoded";
        request.Headers.Add("Authorization","Bearer 87919f15-0b94-33ef-b59f-756cae4aa040");
        //prepare to receive data
        Stream dataStream = request.GetRequestStream();
        String postData = "{\"location\": {   \"locationType\": \"locationHierarchyLevel\",   \"levelType\": \"subzone\",   \"id\": \"OTSZ02\"  }, \"aggregations\": [   {     \"metric\": \"unique_agents\",     \"type\": \"hyperUnique\"  } ]}";
        byte[] postArray = Encoding.ASCII.GetBytes(postData);

        dataStream.Write(postArray, 0, postArray.Length);
        dataStream.Close();

        WebResponse response = request.GetResponse();
        dataStream = response.GetResponseStream();


        StreamReader responseReader = new StreamReader(dataStream);
        String returnVal = responseReader.ReadToEnd().ToString();
        responseReader.Close();
        dataStream.Close();
        response.Close();

    }
}