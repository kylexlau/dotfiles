// a file for auto proxy config

function FindProxyForURL(url, host)
{
	// make url and host become lowercase letter.
	url = url.toLowerCase();
    host = host.toLowerCase();
    //for blogspot.
	if(dnsDomainIs(host, ".blogspot.com")
          )
  	return "PROXY 72.14.219.190:80";
    //for wikipedia and other. And could add more.
	else if
    (
      dnsDomainIs(host,"wikipedia.org")
    ||dnsDomainIs(host,"wikisource.org")
    ||dnsDomainIs(host,"wikibooks.org")
    ||dnsDomainIs(host,"wikimedia.org")
    ||dnsDomainIs(host,"wiktionary.org")
    ||dnsDomainIs(host,"wikinews.org")
    ||dnsDomainIs(host,"wikimediafoundation.org")
    ||dnsDomainIs(host,"mediawiki.org")
    ||dnsDomainIs(host,"wikiquote.org")
    ||dnsDomainIs(host,"wordpress.com")
    ||dnsDomainIs(host,"my.opera.com")
    ||dnsDomainIs(host,"vox.com")
    ||dnsDomainIs(host,"feeds.feedburner.com")
    || dnsDomainIs(host, ".blogger.com")
 // ||dnsDomainIs(host,"technorati.com")
    ||dnsDomainIs(host,"gutenberg.org")
    ||dnsDomainIs(host,"bbc.co.uk")         
    ||dnsDomainIs(host,"dw-world.de")  //德国之声
    ||dnsDomainIs(host,"chosun.com")   //朝鲜日报
    ||dnsDomainIs(host,"usinfo.state.gov")  // 美国国务院美国参考
    ||dnsDomainIs(host,"cnn.com")               
    ||dnsDomainIs(host,"voanews.com")     //美国之音          
    ||dnsDomainIs(host,"rsf-chinese.org")   //记者无国界
    ||dnsDomainIs(host,"ncn.org")     //新世纪网
    ||dnsDomainIs(host,"chinesenewsnet.com") //多维新闻网
    ||dnsDomainIs(host,"mingpaonews.com")   //香港明报
    ||dnsDomainIs(host,"chinatimes.com")   //中国时报
    ||dnsDomainIs(host,"atnext.com")  //苹果日报
    ||dnsDomainIs(host,"rsf.org")   //记者无国界
    ||dnsDomainIs(host,"amnesty.org") //大赦国际
    ||dnsDomainIs(host,"feng37.com")
    ||dnsDomainIs(host,"zuola.com")
    ||dnsDomainIs(host,"scobleizer.com")
    ||dnsDomainIs(host,"scotthyoung.com")
    ||dnsDomainIs(host,"internetducttape.com")
    ||shExpMatch(url,"q=cache:")  
    )
    return "SOCKS 127.0.0.1:9050";
    //for not banned site.
    else return "DIRECT";
}
