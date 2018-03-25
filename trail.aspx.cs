using Newtonsoft.Json;
using System;
using System.Collections;
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


   
    public int marinaFootfall;
    public int haineseFootfall;
    public int dinTaiFootfall;
    public int nylonCoffeeFootfall;

    public string cityWeather;
    public string novenaWeather;
    public string tanglinWeather;
    public string kallangWeather;

    protected void Page_Load(object sender, EventArgs e)
    {
        //getFootfall();
        getWeather();//Weather names are above
        marinaFootfall = 120;
        haineseFootfall = 43;
        dinTaiFootfall = 304;
        nylonCoffeeFootfall =203 ;
    }
 
    public void getWeather()
    {
        
        string html;
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://api.data.gov.sg/v1/environment/2-hour-weather-forecast?date="+DateTime.Now.ToString("yyyy-MM-dd"));
        request.AutomaticDecompression = DecompressionMethods.GZip;
        try
        {
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (Stream stream = response.GetResponseStream())
            using (StreamReader reader = new StreamReader(stream))
            {
                html = reader.ReadToEnd();
            }
            dynamic result = JsonConvert.DeserializeObject<dynamic>(html);
            List<dynamic> test = result.items.ToObject<IList<dynamic>>();
            dynamic weather = test.Last();
            List<dynamic> weatherInner = weather.forecasts.ToObject<IList<dynamic>>();
            foreach(dynamic el in weatherInner)
            {
                if (el.area.ToObject<string>().Equals("City"))
                {
                    cityWeather = el.forecast;
                }
                if (el.area.ToObject<string>().Equals("Novena"))
                {
                    novenaWeather = el.forecast;
                }
                if (el.area.ToObject<string>().Equals("Tanglin"))
                {
                    tanglinWeather = el.forecast;
                }
                if (el.area.ToObject<string>().Equals("Kallang"))
                {
                    kallangWeather = el.forecast;
                }
            }
        }
        catch (Exception e)
        {   //should weather server go down
            cityWeather = "Partly Cloudy";
            novenaWeather = "Light Rain";
            tanglinWeather = "Partly Cloudy";
            kallangWeather = "Cloudy";
        }

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