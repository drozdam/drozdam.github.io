using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Google.GData.Photos;
using Google.GData.Client;
using Google.GData.Extensions;

public partial class VirtualTour : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //var aList = from fileName in Directory.GetFiles(Server.MapPath("~/images/tour/thumbnail")) select string.Format("images/tour/thumbnail/{0}", Path.GetFileName(fileName));
        //List<img> imgList= new List<img>();
        //foreach(string a in aList)
        //{
            //imgList.Add(new img(a, a.Replace("thumbnail", "fullsize")));
        //}
        thumbnails.DataSource = getPicasaImages();
        thumbnails.DataBind(); 

    }

    protected List<img> getPicasaImages()
    {
        /*Use picasa API to get all photos in the album called "BarkNFly" which is identified using albumId=5893546388511245857*/
        PicasaService service = new PicasaService("barknfly");
        PhotoQuery query = new PhotoQuery(PicasaQuery.CreatePicasaUri("barknflyddc@gmail.com", "5893546388511245857"));
        query.Thumbsize = "160";
        PicasaFeed feed = service.Query(query);
        List<img> imgList = new List<img>();
        foreach (PicasaEntry entry in feed.Entries)
        {
            PhotoAccessor ac = new PhotoAccessor(entry);
            string caption = entry.Summary.Text;
            string contentUrl = entry.Media.Content.Attributes["url"] as string;
            string firstThumbUrl = entry.Media.Thumbnails[0].Attributes["url"] as string;
            contentUrl += "?imgmax=912"; //image size of full size image
            imgList.Add(new img(firstThumbUrl, contentUrl, caption));
        }

        return imgList;
    }

    public class img
    {
        public img(string _thumb, string _full, string _caption)
        {
            thumb = _thumb;
            full = _full;
            caption = _caption;
        }
        public string thumb { set; get; }
        public string full { set; get; }
        public string caption { set; get; }
    }

}