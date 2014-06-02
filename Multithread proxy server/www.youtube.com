HTTP/1.0 200 OK
Date: Mon, 04 Nov 2013 00:02:34 GMT
Server: gwiseguy/2.0
X-Content-Type-Options: nosniff
P3P: CP="This is not a P3P policy! See http://support.google.com/accounts/bin/answer.py?answer=151657&hl=en-US for more info."
X-Frame-Options: SAMEORIGIN
Content-Type: text/html; charset=utf-8
Cache-Control: no-cache
Set-Cookie: VISITOR_INFO1_LIVE=20aqgTBl5e0; path=/; domain=.youtube.com; expires=Sat, 05-Jul-2014 11:55:33 GMT
Set-Cookie: YSC=GgaN6mLO4bc; path=/; domain=.youtube.com; httponly
Expires: Tue, 27 Apr 1971 19:44:06 EST
X-XSS-Protection: 1; mode=block; report=https://www.google.com/appserve/security-bugs/log/youtube
Alternate-Protocol: 80:quic

  <!DOCTYPE html><html lang="en" data-cast-api-enabled="true"><head><script>var ytcsi = {gt: function(n) {n = (n || '') + 'data_';return ytcsi[n] || (ytcsi[n] = {tick: {},span: {},info: {}});},tick: function(l, t, n) {ytcsi.gt(n).tick[l] = t || +new Date();},span: function(l, s, n) {ytcsi.gt(n).span[l] = (typeof s == 'number') ? s :+new Date() - ytcsi.data_.tick[l];},info: function(k, v, n) {ytcsi.gt(n).info[k] = v;}};(function() {var perf = window['performance'] || window['mozPerformance'] ||window['msPerformance'] || window['webkitPerformance'];ytcsi.tick('_start', perf ? perf['timing']['responseStart'] : null);})();if (document.webkitVisibilityState == 'prerender') {ytcsi.info('prerender', 1);document.addEventListener('webkitvisibilitychange', function() {ytcsi.tick('_start');}, false);}try {ytcsi.pt_ = (window.chrome && chrome.csi().pageT ||window.gtbExternal && gtbExternal.pageT() ||window.external && external.pageT);if (ytcsi.pt_) {ytcsi.info('pt', Math.floor(ytcsi.pt_));}} catch(e) {}</script>  
  <link id="css-1588607344" class="www-core" rel="stylesheet" href="http://s.ytimg.com/yts/cssbin/www-core-vflVQlr36.css" data-loaded="true">
    <link id="css-2380962918" class="www-home-c4" rel="stylesheet" href="http://s.ytimg.com/yts/cssbin/www-home-c4-vfl8Qf0N7.css" data-loaded="true">

<script>if (window.ytcsi) {window.ytcsi.tick("ce", null, '');}</script>  

    <script>
try {var ytbuffer = {};ytbuffer.bufferedClick;ytbuffer.handleClick = function(e) {var element = e.target || e.srcElement;while (element.parentElement) {if (element.className.match(/^yt-can-buffer$|^yt-can-buffer | yt-can-buffer$| yt-can-buffer /)) {ytbuffer.bufferedClick = e;element.className += ' yt-is-buffered';break;}element = element.parentElement;}};if (document.addEventListener) {document.addEventListener('click', ytbuffer.handleClick);} else {document.attachEvent('onclick', ytbuffer.handleClick);}} catch(e) {}  </script>
<title>YouTube</title><link rel="search" type="application/opensearchdescription+xml" href="http://www.youtube.com/opensearch?locale=en_US" title="YouTube Video Search"><link rel="shortcut icon" href="http://s.ytimg.com/yts/img/favicon-vfldLzJxy.ico" type="image/x-icon">     <link rel="icon" href="//s.ytimg.com/yts/img/favicon_32-vflWoMFGx.png" sizes="32x32"><link rel="alternate" media="handheld" href="http://m.youtube.com/index?&amp;desktop_uri=%2F"><link rel="alternate" media="only screen and (max-width: 640px)" href="http://m.youtube.com/index?&amp;desktop_uri=%2F"><meta name="description" content="Share your videos with friends, family, and the world"><meta name="keywords" content="video, sharing, camera phone, video phone, free, upload">  <meta property="og:image" content="//s.ytimg.com/yts/img/youtube_logo_stacked-vfl225ZTx.png">
  <meta property="fb:app_id" content="87741124305">
  <link rel="publisher" href="https://plus.google.com/115229808208707341778">
<script>if (window.ytcsi) {window.ytcsi.tick("cl", null, '');}</script></head><!-- machid: oWVZJcHFsZE55X1cxWkdES1l6cDlPMGdTYzhnSWFqblpraG1sVThpOEJ2RmVxbFNsUGdjaFJ3 -->
    <body dir="ltr" class="  ltr        site-left-aligned  hitchhiker-enabled      guide-enabled    guide-expanded  " id="body">

  <div id="body-container"><form name="logoutForm" method="POST" action="/logout"><input type="hidden" name="action_logout" value="1"></form>        <div id="ticker" class="ytg-base ">
      <div id="ticker-inner">
        <div class="ytg-wide">
          <button onclick="yt.net.cookies.set(&#39;HideTicker&#39;, 1, 604800);" class="yt-uix-close" data-close-parent-id="ticker">
            <img alt="Close" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif">
          </button>

          <img class="ticker-icon" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="">

          <div class="ticker-content">
              <a href="http://www.youtube.com/watch?v=dG4xaLn2W6s&amp;feature=inp-lt-mau">
                Live now: Watch the YouTube Music Awards! Coming up: Eminem<strong> </strong> 
              </a>
          </div>
        </div>
      </div>
    </div>


    
    <div id="yt-masthead-container" class="yt-grid-box yt-base-gutter"><div id="yt-masthead" class="">      <span id="logo-container" class="doodle ">
    <img id="logo" usemap="#doodle" src="http://s.ytimg.com/yts/img/doodles/yt_yoodle_music_week_static-vfljHx4yt.png" >
    <map name="doodle">
      <area shape="rect" coords="0, 0, 70, 30" href="/" alt="YouTube home" title="YouTube home">
      <area shape="rect" coords="70, 0, 110, 30" href="/youtube?feature=inp-yo-mau" alt="YouTube Music Awards" title="YouTube Music Awards">
    </map>
  </span>

<div id="yt-masthead-signin"><button class=" yt-uix-button yt-uix-button-primary yt-uix-button-size-default" type="button" href="https://accounts.google.com/ServiceLogin?passive=true&amp;continue=http%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26app%3Ddesktop%26feature%3Dsign_in_button%26hl%3Den%26next%3D%252F&amp;hl=en&amp;uilel=3&amp;service=youtube" onclick=";window.location.href=this.getAttribute(&#39;href&#39;);return false;"  role="button"><span class="yt-uix-button-content">Sign in </span></button></div><div id="yt-masthead-content"><span id="masthead-upload-button-group"><a href="//www.youtube.com/upload" class="yt-uix-button   yt-uix-sessionlink yt-uix-button-default yt-uix-button-size-default" data-sessionlink="feature=mhsb&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"><span class="yt-uix-button-content">Upload </span></a></span><form id="masthead-search" class="search-form consolidated-form" action="/results" onsubmit="if (_gel(&#39;masthead-search-term&#39;).value == &#39;&#39;) return false;"><button class="search-btn-component search-button yt-uix-button yt-uix-button-default yt-uix-button-size-default" onclick="if (_gel(&#39;masthead-search-term&#39;).value == &#39;&#39;) return false; _gel(&#39;masthead-search&#39;).submit(); return false;;return true;" type="submit" tabindex="2" dir="ltr" id="search-btn"  role="button"><span class="yt-uix-button-content">Search </span></button><div id="masthead-search-terms" class="masthead-search-terms-border" dir="ltr"><label><input id="masthead-search-term" autocomplete="off" autofocus class="search-term yt-uix-form-input-bidi" name="search_query" value="" type="text" tabindex="1" title="Search"></label><script>var searchBox = document.getElementById('masthead-search-term');if (searchBox) {searchBox.focus();}</script></div></form></div></div></div>
    
  <div id="alerts">
      

  </div>
  <div id="header">
        <div id="masthead_child_div"></div>

        <div id="ad_creative_expand_btn_1" class="masthead-ad-control masthead-ad-control-header open hid">
    <a onclick="masthead.expand_ad(); return false;">
      <span>Show ad</span>
      <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="">
    </a>
  </div>


  </div>
<div id="page-container"><div id="page" class="  home  clearfix"><div id="guide" >        <div id="guide-container"
      class=" vve-check"
      data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CG0Q_h4">
      <div id="guide-main" class="    guide-module     spf-nolink   yt-uix-tdl ">
        <div class="guide-module-toggle">
          <span class="guide-module-toggle-icon">
            <span class="guide-module-toggle-arrow"></span>
            <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="">
            <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" id="collapsed-notification-icon">
          </span>
          <div class="guide-module-toggle-label">
            <h3>
              <span>
Guide
              </span>
            </h3>
          </div>
        </div>
          <div class="guide-module-content yt-scrollbar">
    <ul class="guide-toplevel">
            <li class="guide-section vve-check"
    data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CG4Q5isoAA">
    <div class="guide-item-container personal-item">
      <ul class="guide-user-links yt-box">
            <li class="vve-check guide-channel" id="HCtnHdj3df7iM-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink guide-item-selected"
    href="/channel/HCtnHdj3df7iM"
    title="Popular on YouTube"
    data-sessionlink="feature=g-channel&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="HCtnHdj3df7iM"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="//i1.ytimg.com/li/tnHdj3df7iM/default.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>Popular on YouTube</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="HCp-Rdqh3z4Uc-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/HCp-Rdqh3z4Uc"
    title="Music"
    data-sessionlink="feature=g-channel&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="HCp-Rdqh3z4Uc"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="//i1.ytimg.com/li/p-Rdqh3z4Uc/default.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>Music</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="HC7Dr1BKwqctY-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/HC7Dr1BKwqctY"
    title="Sports"
    data-sessionlink="feature=g-channel&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="HC7Dr1BKwqctY"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="//i1.ytimg.com/li/7Dr1BKwqctY/default.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>Sports</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="HChfZhJdhTqX8-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/HChfZhJdhTqX8"
    title="Gaming"
    data-sessionlink="feature=g-channel&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="HChfZhJdhTqX8"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="//i1.ytimg.com/li/hfZhJdhTqX8/default.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>Gaming</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="HC-r1FlvvNFs0-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/HC-r1FlvvNFs0"
    title="Education"
    data-sessionlink="feature=g-channel&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="HC-r1FlvvNFs0"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="//i1.ytimg.com/li/-r1FlvvNFs0/default.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>Education</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="UCczhp4wznQWonO7Pb8HQ2MQ-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/UCczhp4wznQWonO7Pb8HQ2MQ"
    title="Movies"
    data-sessionlink="feature=g-channel&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="UCczhp4wznQWonO7Pb8HQ2MQ"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="https://lh3.googleusercontent.com/-DIjHsEMMaRE/AAAAAAAAAAI/AAAAAAAAAAA/q6whn_JcUH8/s88-c-k-no/photo.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>Movies</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="UCl8dMTqDrJQ0c8y23UBu4kQ-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/UCl8dMTqDrJQ0c8y23UBu4kQ"
    title="TV Shows"
    data-sessionlink="feature=g-channel&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="UCl8dMTqDrJQ0c8y23UBu4kQ"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="https://lh4.googleusercontent.com/-hFxEr8QHrvM/AAAAAAAAAAI/AAAAAAAAAAA/REjjL0X3gIs/s88-c-k-no/photo.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>TV Shows</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="HCPvDBPPFfuaM-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/HCPvDBPPFfuaM"
    title="News"
    data-sessionlink="feature=g-channel&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="HCPvDBPPFfuaM"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="//i1.ytimg.com/li/PvDBPPFfuaM/default.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>News</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="SBAaOjE-GIlRI-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/SBAaOjE-GIlRI"
    title="Live"
    data-sessionlink="feature=g-channel&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="SBAaOjE-GIlRI"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="//www.gstatic.com/youtube/img/livestream/house_channels/logos/live.png" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>Live</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="UCBR8-60-B28hp2BmDPdntcQ-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/UCBR8-60-B28hp2BmDPdntcQ"
    title="Spotlight"
    data-sessionlink="feature=g-channel&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="UCBR8-60-B28hp2BmDPdntcQ"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="https://lh6.googleusercontent.com/-dL2jeHlm2Ok/AAAAAAAAAAI/AAAAAAAAAAA/ZCMMkRj-hrw/s88-c-k-no/photo.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>Spotlight</span>
      </span>
    </span>

  </a>

  </li>

      </ul>
    </div>
    <hr class="guide-section-separator">
  </li>

            <li class="guide-section vve-check"
    data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CHkQ5isoAQ">
    <div class="guide-item-container personal-item">
        <h3>Channels for you</h3>
      <ul class="guide-user-links yt-box">
            <li class="vve-check guide-channel" id="UCBR8-60-B28hp2BmDPdntcQ-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/UCBR8-60-B28hp2BmDPdntcQ"
    title="YouTube Spotlight"
    data-sessionlink="feature=g-chfeat&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="UCBR8-60-B28hp2BmDPdntcQ"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="//i1.ytimg.com/i/BR8-60-B28hp2BmDPdntcQ/1.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>YouTube Spotlight</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="UCcMTZY1rFXO3Rj44D5VMyiw-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/UCcMTZY1rFXO3Rj44D5VMyiw"
    title="Machinima"
    data-sessionlink="feature=g-chfeat&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="UCcMTZY1rFXO3Rj44D5VMyiw"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="//i1.ytimg.com/i/cMTZY1rFXO3Rj44D5VMyiw/1.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>Machinima</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="UC-SJ6nODDmufqBzPBwCvYvQ-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/UC-SJ6nODDmufqBzPBwCvYvQ"
    title="CBS This Morning"
    data-sessionlink="feature=g-chfeat&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="UC-SJ6nODDmufqBzPBwCvYvQ"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="//s.ytimg.com/yts/img/avatar_720-vflYJnzBZ.png" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>CBS This Morning</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="UCBWjJaTpplJdqMSTRT5ZRug-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/UCBWjJaTpplJdqMSTRT5ZRug"
    title="Country Now"
    data-sessionlink="feature=g-chfeat&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="UCBWjJaTpplJdqMSTRT5ZRug"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="//i1.ytimg.com/i/BWjJaTpplJdqMSTRT5ZRug/1.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>Country Now</span>
      </span>
    </span>

  </a>

  </li>

            <li class="vve-check guide-channel" id="UCGjylN-4QCpn8XJ1uY-UOgA-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channel/UCGjylN-4QCpn8XJ1uY-UOgA"
    title="danisnotonfire"
    data-sessionlink="feature=g-chfeat&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="UCGjylN-4QCpn8XJ1uY-UOgA"
  >
    <span class="yt-valign-container">
        <span class="thumb">    <span class="video-thumb  yt-thumb yt-thumb-18"
      >
      <span class="yt-thumb-square">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img alt="Thumbnail" src="//i1.ytimg.com/i/GjylN-4QCpn8XJ1uY-UOgA/1.jpg" data-group-key="guide-channel-thumbs" data-thumb-manual="1" width="18" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
</span>
      <span class="display-name no-count">
        <span>danisnotonfire</span>
      </span>
    </span>

  </a>

  </li>

      </ul>
    </div>
    <hr class="guide-section-separator">
  </li>

            <li class="guide-section vve-check"
    data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CH8Q5isoAg">
    <div class="guide-item-container personal-item">
      <ul class="guide-user-links yt-box">
            <li class="vve-check guide-channel" id="guide_builder-guide-item">
        <a class="guide-item yt-uix-sessionlink yt-valign spf-nolink "
    href="/channels"
    title="Browse channels"
    data-sessionlink="feature=g-manage&amp;ei=GeR2UrTbMqjZ8AH1joCYBw"
    data-channel-id="guide_builder"
  >
    <span class="yt-valign-container">
        <span class="thumb guide-management-plus-icon">
          <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="">
        </span>
      <span class="display-name no-count">
        <span>Browse channels</span>
      </span>
    </span>

  </a>

  </li>

      </ul>
    </div>
    <hr class="guide-section-separator">
  </li>

            <li class="guide-section guide-header signup-promo guided-help-box">
    <p>
      Sign in now to see your channels and recommendations!
    </p>
    <div id="guide-builder-promo-buttons" class="signed-out clearfix">
      <a href="https://accounts.google.com/ServiceLogin?passive=true&amp;continue=http%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26app%3Ddesktop%26feature%3Dsign_in_promo%26hl%3Den%26next%3D%252F&amp;hl=en&amp;uilel=3&amp;service=youtube" class="yt-uix-button   yt-uix-sessionlink yt-uix-button-primary yt-uix-button-size-default" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw"><span class="yt-uix-button-content">Sign In </span></a>
    </div>
  </li>

    </ul>
  </div>

      </div>
        <div id="watch-context-container" class="guide-module collapsed hid"></div>

    </div>

</div><div id="player" class="  off-screen  ">
  <div id="playlist" class="playlist">
    
  </div>

  <div id="player-unavailable" class="  hid  ">
    
  </div>

    <div id="player-api" class="player-width player-height off-screen-target watch-content player-api"></div>


    <script>if (window.ytcsi) {window.ytcsi.tick("bf", null, '');}</script>
    <script>var ytplayer = ytplayer || {};ytplayer.config = {"url_v8": "http:\/\/s.ytimg.com\/yts\/swfbin\/player-vfllKozwX\/cps.swf", "params": {"allowscriptaccess": "always", "bgcolor": "#000000", "allowfullscreen": "true"}, "url": "http:\/\/s.ytimg.com\/yts\/swfbin\/player-vfllKozwX\/watch_as3.swf", "html5": false, "url_v9as2": "http:\/\/s.ytimg.com\/yts\/swfbin\/player-vfllKozwX\/cps.swf", "min_version": "8.0.0", "assets": {"html": "\/html5_player_template", "css": "http:\/\/s.ytimg.com\/yts\/cssbin\/www-player-vflBWR9-0.css", "js": "http:\/\/s.ytimg.com\/yts\/jsbin\/html5player-vflz9bT3N.js"}, "attrs": {"id": "movie_player"}, "args": {"cr": "", "autoplay": "0", "hl": "", "fexp": "900356,936100,924616,907231,907240", "enablejsapi": 1}, "sts": 16000, "sync_embed": false};</script>

  <div id="playlist-tray" class="playlist-tray">
    
  </div>

  

  <div class="clear"></div>
</div><div id="content" class="">  





  <div class="branded-page-v2-container  branded-page-v2-has-top-row branded-page-v2-has-solid-bg branded-page-v2-secondary-column-hidden" >
      <div class="branded-page-v2-top-row">
                <div id="video-masthead" class="video-masthead">  <a id="premium-yva-close" class="yt-uix-close" data-close-parent-id="video-masthead">
Close ad
  </a>
<iframe id="video-masthead-iframe" width="100%" height="100%" scrolling="no" frameborder="0"></iframe>  <script>
    (function() {
      function tagMpuIframe() {
            var adIframe = document.getElementById("video-masthead-iframe");
            if (!adIframe) {
              return;
            }
            var ord = Math.floor(Math.random() * 10000000000000000);
            adIframe.src = "//ad.doubleclick.net/N4061/adi/com.ythome/_default;sz=780x195;tile=1;dc_yt=1;kbsg=HPUS131103;kga=-1;kgg=-1;klg=en;kmyd=video-masthead;ytdevice=1;ord=" + ord + "?";
      }

       tagMpuIframe();
    })();
  </script>
</div>


  <div id="context-source-container"data-context-source="Popular on YouTube"style="display:none;"></div>

      </div>

    <div class="branded-page-v2-col-container clearfix">
      <div class="branded-page-v2-primary-col">
          <div class="branded-page-v2-body" id="gh-activityfeed">
        
    <div class="context-data-container">
          
          <div class="lohp-newspaper-shelf vve-check" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAIQ0R4oAA">
    
    <div class="lohp-large-shelf-container">
        <div class="context-data-item" data-context-item-user="Donovan Moore" data-context-item-time="5:38" data-context-item-views="2,358,143 views" data-context-item-id="H8FzTCkCG58" data-context-item-type="video" data-context-item-title="Paul Gerke as Paul Burgundy" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAMQ0x4oAA">
    
    <a href="/watch?v=H8FzTCkCG58" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink yt-fluid-thumb-link contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;hdline=-2045421351285302587&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAMQ0x4oAA">    <span class="video-thumb  yt-thumb yt-thumb-370 yt-thumb-fluid"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img src="//i1.ytimg.com/vi/H8FzTCkCG58/hqdefault.jpg" alt="Thumbnail" width="370" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">5:38</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="H8FzTCkCG58" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
      <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;hdline=-2045421351285302587&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAMQ0x4oAA"
     href="/watch?v=H8FzTCkCG58"
     title="Paul Gerke as Paul Burgundy">Paul Gerke as Paul Burgundy</a>


      <div class="lohp-video-metadata attached">
          <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/channel/UCpYeTjR-6r3ePgm9nYD5jjQ" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCpYeTjR-6r3ePgm9nYD5jjQ" data-name="">Donovan Moore</a>
  </span>

      </div>
        
      <p title="Derp Roundup: Your Weekly Cache Of Crazy" class="lohp-blog-headline">
        Derp Roundup: Your Weekly Cache Of Crazy
      </p>
      <a title="Wonkette" href="/channel/HCMJgLI4J5P2I?feature=g-logo" class="lohp-blog-attribution">
        <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" class="lohp-blog-decoration">Wonkette
      </a>

  </div>

    </div>
    <div class="lohp-medium-shelves-container">
            <div class="lohp-medium-shelf context-data-item vve-check " data-context-item-user="Warner Bros. Pictures" data-context-item-time="3:01" data-context-item-views="5,696,476 views" data-context-item-id="fZ_JOBCLF-I" data-context-item-type="video" data-context-item-title="The LEGO® Movie - Official Main Trailer [HD]" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAUQ0x4oAQ">
    
    <div class="lohp-media-object">
      <a href="/watch?v=fZ_JOBCLF-I" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink yt-fluid-thumb-link contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;hdline=-8234781805490225314&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAUQ0x4oAQ">    <span class="video-thumb  yt-thumb yt-thumb-170 yt-thumb-fluid"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img src="//i1.ytimg.com/vi/fZ_JOBCLF-I/mqdefault.jpg" alt="Thumbnail" width="170" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">3:01</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="fZ_JOBCLF-I" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
    </div>
    <div class="lohp-media-object-content lohp-medium-shelf-content">
        <a class="lohp-video-link max-line-1 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;hdline=-8234781805490225314&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAUQ0x4oAQ"
     href="/watch?v=fZ_JOBCLF-I"
     title="The LEGO® Movie - Official Main Trailer [HD]">The LEGO® Movie - Official Main Trailer [HD]</a>

      <div class="lohp-video-metadata attached">
          <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/WarnerBrosPictures" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCjmJDM5pRKbUlVIzDYYWb6g" data-name="">Warner Bros. Pictures</a>  <span class="yt-user-name-icon-verified">
    <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" class="yt-uix-tooltip yt-channel-title-icon-verified" alt="" title="Verified name">
  </span>

  </span>

      </div>
        
      <p title="First official The Lego Movie trailer is awesome" class="lohp-blog-headline">
        First official The Lego Movie trailer is awesome
      </p>
      <a title="Gizmodo" href="/channel/HCccdE-nZtVzo?feature=g-logo" class="lohp-blog-attribution">
        <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" class="lohp-blog-decoration">Gizmodo
      </a>

    </div>
  </div>

            <div class="lohp-medium-shelf context-data-item vve-check " data-context-item-user="SoulPancake" data-context-item-time="11:53" data-context-item-views="219,782 views" data-context-item-id="XzW1bCVUSx4" data-context-item-type="video" data-context-item-title="Mormons, Matrimony, and More! - Have a Little Faith" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAcQ0h4oAg">
    
    <div class="lohp-media-object">
      <a href="/watch?v=XzW1bCVUSx4" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink yt-fluid-thumb-link contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAcQ0h4oAg">    <span class="video-thumb  yt-thumb yt-thumb-170 yt-thumb-fluid"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img src="//i1.ytimg.com/vi/XzW1bCVUSx4/mqdefault.jpg" alt="Thumbnail" width="170" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">11:53</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="XzW1bCVUSx4" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
    </div>
    <div class="lohp-media-object-content lohp-medium-shelf-content">
        <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAcQ0h4oAg"
     href="/watch?v=XzW1bCVUSx4"
     title="Mormons, Matrimony, and More! - Have a Little Faith">Mormons, Matrimony, and More! - Have a Little Faith</a>

      <div class="lohp-video-metadata attached">
          <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/soulpancake" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCaDVcGDMkvcRb4qGARkWlyg" data-name="">SoulPancake</a>  <span class="yt-user-name-icon-verified">
    <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" class="yt-uix-tooltip yt-channel-title-icon-verified" alt="" title="Verified name">
  </span>

  </span>

      </div>
        <div class="lohp-video-metadata">
            <span class="view-count">
      219,782 views
  </span>

              <span class="content-item-time-created" title="2 days ago">
      2 days ago
    </span>

        </div>
    </div>
  </div>

            <div class="lohp-medium-shelf context-data-item vve-check " data-context-item-user="Tested" data-context-item-time="5:02" data-context-item-views="153,601 views" data-context-item-id="6oIMgGuVt3k" data-context-item-type="video" data-context-item-title="How to Make a Perfect Cup of Coffee with the Aeropress" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAkQ0h4oAw">
    
    <div class="lohp-media-object">
      <a href="/watch?v=6oIMgGuVt3k" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink yt-fluid-thumb-link contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAkQ0h4oAw">    <span class="video-thumb  yt-thumb yt-thumb-170 yt-thumb-fluid"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img src="//i1.ytimg.com/vi/6oIMgGuVt3k/mqdefault.jpg" alt="Thumbnail" width="170" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">5:02</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="6oIMgGuVt3k" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
    </div>
    <div class="lohp-media-object-content lohp-medium-shelf-content">
        <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAkQ0h4oAw"
     href="/watch?v=6oIMgGuVt3k"
     title="How to Make a Perfect Cup of Coffee with the Aeropress">How to Make a Perfect Cup of Coffee with the Aeropress</a>

      <div class="lohp-video-metadata attached">
          <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/testedcom" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCiDJtJKMICpb9B1qf7qjEOA" data-name="">Tested</a>
  </span>

      </div>
        <div class="lohp-video-metadata">
            <span class="view-count">
      153,601 views
  </span>

              <span class="content-item-time-created" title="3 years ago">
      3 years ago
    </span>

        </div>
    </div>
  </div>

    </div>
  </div>



    
        <div class="lohp-vbox-list vve-check lohp-left-vbox-list"
    data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAsQ1R4oAQ">
          <div class="vve-check" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CAwQyx4oAA">
          <div class="lohp-shelf-cell-container lohp-category-shelf vve-check last-shelf-in-line" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CA0QzR4oAA">
    

    <div class="lohp-category-shelf-item-list lohp-shelf-size-3">
              <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/channel/HC4qRk91tndwg" title="Most Popular" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CA4Qzh4">
        Most Popular
      </a>
        <a href="/watch_videos?feature=c4-overview&amp;type=0&amp;title=Most+Popular&amp;more_url=&amp;video_ids=34r6RGF2JLA%2CQesyKoezPrY%2CgaSv12OKVJA" class="yt-uix-button  shelves-play yt-uix-sessionlink yt-uix-button-default yt-uix-button-size-small" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw"><span class="yt-uix-button-icon-wrapper"><img class="yt-uix-button-icon yt-uix-button-icon-play-all" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></span><span class="yt-uix-button-content">Play </span></a>

  </h2>



        <div class="lohp-category-shelf-item context-data-item first-shelf-item " data-context-item-user="Huw Griffiths" data-context-item-time="0:57" data-context-item-views="1,986,017 views" data-context-item-id="34r6RGF2JLA" data-context-item-type="video" data-context-item-title="Electrical fireball in Lachine">
          
          <a href="/watch?v=34r6RGF2JLA" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CA8Qzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-189"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/34r6RGF2JLA/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="189" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">0:57</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="34r6RGF2JLA" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CA8Qzx4oAA"
     href="/watch?v=34r6RGF2JLA"
     title="Electrical fireball in Lachine">Electrical fireball in Lachine</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      1,986,017 views
  </span>

                <span class="content-item-time-created" title="1 day ago">
      1 day ago
    </span>

          </div>
        </div>

        <div class="lohp-category-shelf-item context-data-item  " data-context-item-user="Sacred Heart Pioneers" data-context-item-time="1:48" data-context-item-views="755,198 views" data-context-item-id="QesyKoezPrY" data-context-item-type="video" data-context-item-title="Moses Webb Double Fumble Recovery for Touchdown">
          
          <a href="/watch?v=QesyKoezPrY" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBEQzx4oAQ">    <span class="video-thumb  yt-thumb yt-thumb-189"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/QesyKoezPrY/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="189" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">1:48</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="QesyKoezPrY" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBEQzx4oAQ"
     href="/watch?v=QesyKoezPrY"
     title="Moses Webb Double Fumble Recovery for Touchdown">Moses Webb Double Fumble Recovery for Touchdown</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      755,198 views
  </span>

                <span class="content-item-time-created" title="1 day ago">
      1 day ago
    </span>

          </div>
        </div>

        <div class="lohp-category-shelf-item context-data-item  last-shelf-item " data-context-item-user="Mark Rober" data-context-item-time="1:02" data-context-item-views="1,195,025 views" data-context-item-id="gaSv12OKVJA" data-context-item-type="video" data-context-item-title="NASA Pumpkin Carving Contest- 2013">
          
          <a href="/watch?v=gaSv12OKVJA" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBMQzx4oAg">    <span class="video-thumb  yt-thumb yt-thumb-189"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/gaSv12OKVJA/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="189" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">1:02</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="gaSv12OKVJA" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBMQzx4oAg"
     href="/watch?v=gaSv12OKVJA"
     title="NASA Pumpkin Carving Contest- 2013">NASA Pumpkin Carving Contest- 2013</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      1,195,025 views
  </span>

                <span class="content-item-time-created" title="2 days ago">
      2 days ago
    </span>

          </div>
        </div>
    </div>
  </div>

  </div>

          <div class="vve-check" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBUQyx4oAQ">
          <div class="lohp-shelf-cell-container lohp-category-shelf vve-check " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBYQzR4oAA">
    

    <div class="lohp-category-shelf-item-list lohp-shelf-size-1">
              <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/channel/HCxAJ-ON2kZuw" title="Entertainment" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBcQzh4">
        Entertainment
      </a>
  </h2>



        <div class="lohp-category-shelf-item context-data-item first-shelf-item last-shelf-item " data-context-item-user="Slacktory" data-context-item-time="1:14" data-context-item-views="14,525 views" data-context-item-id="Pem3hmn_dPo" data-context-item-type="video" data-context-item-title="Star Wars trailer: Derp edition">
          
          <a href="/watch?v=Pem3hmn_dPo" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBgQzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-165"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/Pem3hmn_dPo/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="165" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">1:14</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="Pem3hmn_dPo" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBgQzx4oAA"
     href="/watch?v=Pem3hmn_dPo"
     title="Star Wars trailer: Derp edition">Star Wars trailer: Derp edition</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      14,525 views
  </span>

                <span class="content-item-time-created" title="2 days ago">
      2 days ago
    </span>

          </div>
        </div>
    </div>
  </div>

          <div class="lohp-shelf-cell-container lohp-category-shelf vve-check " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBoQzR4oAQ">
    

    <div class="lohp-category-shelf-item-list lohp-shelf-size-1">
              <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/user/DeltaAirLines" title="Delta" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBsQzh4">
        Delta
      </a>
  </h2>



        <div class="lohp-category-shelf-item context-data-item first-shelf-item last-shelf-item " data-context-item-user="Delta" data-context-item-time="1:09" data-context-item-views="325,276 views" data-context-item-id="omRRpEywZzs" data-context-item-type="video" data-context-item-title="Lily&#39;s Delta Surprise">
          
          <a href="/watch?v=omRRpEywZzs" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBwQzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-165"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/omRRpEywZzs/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="165" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">1:09</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="omRRpEywZzs" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CBwQzx4oAA"
     href="/watch?v=omRRpEywZzs"
     title="Lily&#39;s Delta Surprise">Lily&#39;s Delta Surprise</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      325,276 views
  </span>

                <span class="content-item-time-created" title="1 day ago">
      1 day ago
    </span>

          </div>
        </div>
    </div>
  </div>

          <div class="lohp-shelf-cell-container lohp-category-shelf vve-check last-shelf-in-line" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CB4QzR4oAg">
    

    <div class="lohp-category-shelf-item-list lohp-shelf-size-1">
              <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/channel/HCOvlZkU39tdk" title="Movies" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CB8Qzh4">
        Movies
      </a>
        <a href="/watch_videos?feature=c4-overview&amp;type=0&amp;title=Movies&amp;more_url=&amp;video_ids=pK2zYHWDZKo%2C-Z7UnO66q9w%2CGh-BEKM-jRc" class="yt-uix-button  shelves-play yt-uix-sessionlink yt-uix-button-default yt-uix-button-size-small" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw"><span class="yt-uix-button-icon-wrapper"><img class="yt-uix-button-icon yt-uix-button-icon-play-all" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></span><span class="yt-uix-button-content">Play </span></a>

  </h2>



        <div class="lohp-category-shelf-item context-data-item first-shelf-item last-shelf-item " data-context-item-user="X-Men Movies" data-context-item-time="2:18" data-context-item-views="16,460,135 views" data-context-item-id="pK2zYHWDZKo" data-context-item-type="video" data-context-item-title="X-MEN: DAYS OF FUTURE PAST - Official Trailer (2014)">
          
          <a href="/watch?v=pK2zYHWDZKo" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCAQzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-165"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/pK2zYHWDZKo/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="165" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">2:18</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="pK2zYHWDZKo" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCAQzx4oAA"
     href="/watch?v=pK2zYHWDZKo"
     title="X-MEN: DAYS OF FUTURE PAST - Official Trailer (2014)">X-MEN: DAYS OF FUTURE PAST - Official Trailer (2014)</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      16,460,135 views
  </span>

                <span class="content-item-time-created" title="5 days ago">
      5 days ago
    </span>

          </div>
        </div>
    </div>
  </div>

  </div>

          <div class="vve-check" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCIQyx4oAg">
          <div class="lohp-shelf-cell-container lohp-category-shelf vve-check last-shelf-in-line" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCMQzR4oAA">
    

    <div class="lohp-category-shelf-item-list lohp-shelf-size-3">
              <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/channel/HCp-Rdqh3z4Uc" title="Music" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCQQzh4">
        Music
      </a>
        <a href="/watch_videos?feature=c4-overview&amp;type=0&amp;title=Music&amp;more_url=&amp;video_ids=VBmCJEehYtU%2CFyXtoTLLcDk%2CNtlt2tKi4do" class="yt-uix-button  shelves-play yt-uix-sessionlink yt-uix-button-default yt-uix-button-size-small" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw"><span class="yt-uix-button-icon-wrapper"><img class="yt-uix-button-icon yt-uix-button-icon-play-all" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></span><span class="yt-uix-button-content">Play </span></a>

  </h2>



        <div class="lohp-category-shelf-item context-data-item first-shelf-item " data-context-item-user="ScottBradleeLovesYa" data-context-item-time="3:51" data-context-item-views="1,925,739 views" data-context-item-id="VBmCJEehYtU" data-context-item-type="video" data-context-item-title="Royals - (&quot;Sad Clown With The Golden Voice&quot; Version) - Lorde Cover">
          
          <a href="/watch?v=VBmCJEehYtU" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCUQzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-189"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/VBmCJEehYtU/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="189" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">3:51</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="VBmCJEehYtU" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCUQzx4oAA"
     href="/watch?v=VBmCJEehYtU"
     title="Royals - (&quot;Sad Clown With The Golden Voice&quot; Version) - Lorde Cover">Royals - (&quot;Sad Clown With The Golden Voice&quot; Version) - Lorde Cover</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      1,925,739 views
  </span>

                <span class="content-item-time-created" title="3 days ago">
      3 days ago
    </span>

          </div>
        </div>

        <div class="lohp-category-shelf-item context-data-item  " data-context-item-user="justintimberlakeVEVO" data-context-item-time="7:10" data-context-item-views="8,219,263 views" data-context-item-id="FyXtoTLLcDk" data-context-item-type="video" data-context-item-title="Justin Timberlake - TKO">
          
          <a href="/watch?v=FyXtoTLLcDk" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCcQzx4oAQ">    <span class="video-thumb  yt-thumb yt-thumb-189"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/FyXtoTLLcDk/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="189" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">7:10</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="FyXtoTLLcDk" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCcQzx4oAQ"
     href="/watch?v=FyXtoTLLcDk"
     title="Justin Timberlake - TKO">Justin Timberlake - TKO</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      8,219,263 views
  </span>

                <span class="content-item-time-created" title="5 days ago">
      5 days ago
    </span>

          </div>
        </div>

        <div class="lohp-category-shelf-item context-data-item  last-shelf-item " data-context-item-user="30SecondsToMarsVEVO" data-context-item-time="11:33" data-context-item-views="1,362,374 views" data-context-item-id="Ntlt2tKi4do" data-context-item-type="video" data-context-item-title="THIRTY SECONDS TO MARS - City Of Angels">
          
          <a href="/watch?v=Ntlt2tKi4do" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCkQzx4oAg">    <span class="video-thumb  yt-thumb yt-thumb-189"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/Ntlt2tKi4do/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="189" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">11:33</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="Ntlt2tKi4do" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCkQzx4oAg"
     href="/watch?v=Ntlt2tKi4do"
     title="THIRTY SECONDS TO MARS - City Of Angels">THIRTY SECONDS TO MARS - City Of Angels</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      1,362,374 views
  </span>

                <span class="content-item-time-created" title="5 days ago">
      5 days ago
    </span>

          </div>
        </div>
    </div>
  </div>

  </div>

          <div class="vve-check" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCsQyx4oAw">
          <div class="lohp-shelf-cell-container lohp-category-shelf vve-check last-shelf-in-line" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CCwQzR4oAA">
    

    <div class="lohp-category-shelf-item-list lohp-shelf-size-3">
              <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/channel/HC7Dr1BKwqctY" title="Sports" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CC0Qzh4">
        Sports
      </a>
        <a href="/watch_videos?feature=c4-overview&amp;type=0&amp;title=Sports&amp;more_url=&amp;video_ids=SJv0A5Pu32o%2C7Xhcau1shoc%2CulZKqw_HKHg" class="yt-uix-button  shelves-play yt-uix-sessionlink yt-uix-button-default yt-uix-button-size-small" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw"><span class="yt-uix-button-icon-wrapper"><img class="yt-uix-button-icon yt-uix-button-icon-play-all" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></span><span class="yt-uix-button-content">Play </span></a>

  </h2>



        <div class="lohp-category-shelf-item context-data-item first-shelf-item " data-context-item-user="Tottenham Hotspur" data-context-item-time="6:06" data-context-item-views="1,898,308 views" data-context-item-id="SJv0A5Pu32o" data-context-item-type="video" data-context-item-title="Halloween Prank!!! | feat. Walker, Townsend, Defoe, Sandro...">
          
          <a href="/watch?v=SJv0A5Pu32o" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CC4Qzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-189"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/SJv0A5Pu32o/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="189" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">6:06</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="SJv0A5Pu32o" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CC4Qzx4oAA"
     href="/watch?v=SJv0A5Pu32o"
     title="Halloween Prank!!! | feat. Walker, Townsend, Defoe, Sandro...">Halloween Prank!!! | feat. Walker, Townsend, Defoe, Sandro...</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      1,898,308 views
  </span>

                <span class="content-item-time-created" title="3 days ago">
      3 days ago
    </span>

          </div>
        </div>

        <div class="lohp-category-shelf-item context-data-item  " data-context-item-user="NHL" data-context-item-time="0:27" data-context-item-views="346,317 views" data-context-item-id="7Xhcau1shoc" data-context-item-type="video" data-context-item-title="Pascal Dupuis pulls out two teeth">
          
          <a href="/watch?v=7Xhcau1shoc" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDAQzx4oAQ">    <span class="video-thumb  yt-thumb yt-thumb-189"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/7Xhcau1shoc/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="189" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">0:27</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="7Xhcau1shoc" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDAQzx4oAQ"
     href="/watch?v=7Xhcau1shoc"
     title="Pascal Dupuis pulls out two teeth">Pascal Dupuis pulls out two teeth</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      346,317 views
  </span>

                <span class="content-item-time-created" title="3 days ago">
      3 days ago
    </span>

          </div>
        </div>

        <div class="lohp-category-shelf-item context-data-item  last-shelf-item " data-context-item-user="FOX Sports" data-context-item-time="2:02" data-context-item-views="50,185 views" data-context-item-id="ulZKqw_HKHg" data-context-item-type="video" data-context-item-title="McCarver signs off after calling final World Series">
          
          <a href="/watch?v=ulZKqw_HKHg" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDIQzx4oAg">    <span class="video-thumb  yt-thumb yt-thumb-189"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/ulZKqw_HKHg/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="189" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">2:02</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="ulZKqw_HKHg" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDIQzx4oAg"
     href="/watch?v=ulZKqw_HKHg"
     title="McCarver signs off after calling final World Series">McCarver signs off after calling final World Series</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      50,185 views
  </span>

                <span class="content-item-time-created" title="3 days ago">
      3 days ago
    </span>

          </div>
        </div>
    </div>
  </div>

  </div>

          <div class="vve-check" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDQQyx4oBA">
          <div class="lohp-shelf-cell-container lohp-category-shelf vve-check " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDUQzR4oAA">
    

    <div class="lohp-category-shelf-item-list lohp-shelf-size-1">
              <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/user/collegehumor" title="CollegeHumor" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDYQzh4">
        CollegeHumor
      </a>
  </h2>



        <div class="lohp-category-shelf-item context-data-item first-shelf-item last-shelf-item " data-context-item-user="CollegeHumor" data-context-item-time="2:14" data-context-item-views="710,751 views" data-context-item-id="kOUBHYBOCK0" data-context-item-type="video" data-context-item-title="If No One Came To The Monster Mash">
          
          <a href="/watch?v=kOUBHYBOCK0" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDcQzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-165"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/kOUBHYBOCK0/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="165" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">2:14</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="kOUBHYBOCK0" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDcQzx4oAA"
     href="/watch?v=kOUBHYBOCK0"
     title="If No One Came To The Monster Mash">If No One Came To The Monster Mash</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      710,751 views
  </span>

                <span class="content-item-time-created" title="3 days ago">
      3 days ago
    </span>

          </div>
        </div>
    </div>
  </div>

          <div class="lohp-shelf-cell-container lohp-category-shelf vve-check " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDkQzR4oAQ">
    

    <div class="lohp-category-shelf-item-list lohp-shelf-size-1">
              <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/user/esbnyc" title="Empire State Building" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDoQzh4">
        Empire State Building
      </a>
  </h2>



        <div class="lohp-category-shelf-item context-data-item first-shelf-item last-shelf-item " data-context-item-user="Empire State Building" data-context-item-time="9:50" data-context-item-views="510,490 views" data-context-item-id="I7UvDozofMo" data-context-item-type="video" data-context-item-title="Empire State Building Halloween Light Show">
          
          <a href="/watch?v=I7UvDozofMo" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDsQzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-165"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/I7UvDozofMo/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="165" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">9:50</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="I7UvDozofMo" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CDsQzx4oAA"
     href="/watch?v=I7UvDozofMo"
     title="Empire State Building Halloween Light Show">Empire State Building Halloween Light Show</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      510,490 views
  </span>

                <span class="content-item-time-created" title="2 days ago">
      2 days ago
    </span>

          </div>
        </div>
    </div>
  </div>

          <div class="lohp-shelf-cell-container lohp-category-shelf vve-check last-shelf-in-line" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CD0QzR4oAg">
    

    <div class="lohp-category-shelf-item-list lohp-shelf-size-1">
              <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/user/southparkstudios" title="South Park Studios" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CD4Qzh4">
        South Park Studios
      </a>
  </h2>



        <div class="lohp-category-shelf-item context-data-item first-shelf-item last-shelf-item " data-context-item-user="South Park Studios" data-context-item-time="7:25" data-context-item-views="1,613,006 views" data-context-item-id="iE9XEIY4aRk" data-context-item-type="video" data-context-item-title="South Park: The Stick of Truth - Gameplay &quot;Giggling Donkey&quot;">
          
          <a href="/watch?v=iE9XEIY4aRk" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CD8Qzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-165"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/iE9XEIY4aRk/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="165" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">7:25</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="iE9XEIY4aRk" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CD8Qzx4oAA"
     href="/watch?v=iE9XEIY4aRk"
     title="South Park: The Stick of Truth - Gameplay &quot;Giggling Donkey&quot;">South Park: The Stick of Truth - Gameplay &quot;Giggling Donkey&quot;</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      1,613,006 views
  </span>

                <span class="content-item-time-created" title="3 days ago">
      3 days ago
    </span>

          </div>
        </div>
    </div>
  </div>

  </div>

          <div class="vve-check" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEEQyx4oBQ">
          <div class="lohp-shelf-cell-container lohp-category-shelf vve-check " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEIQzR4oAA">
    

    <div class="lohp-category-shelf-item-list lohp-shelf-size-1">
              <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/user/zefrank1" title="zefrank1" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEMQzh4">
        zefrank1
      </a>
  </h2>



        <div class="lohp-category-shelf-item context-data-item first-shelf-item last-shelf-item " data-context-item-user="zefrank1" data-context-item-time="4:50" data-context-item-views="2,630,638 views" data-context-item-id="GDwOi7HpHtQ" data-context-item-type="video" data-context-item-title="True Facts About The CuttleFish">
          
          <a href="/watch?v=GDwOi7HpHtQ" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEQQzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-165"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/GDwOi7HpHtQ/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="165" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">4:50</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="GDwOi7HpHtQ" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEQQzx4oAA"
     href="/watch?v=GDwOi7HpHtQ"
     title="True Facts About The CuttleFish">True Facts About The CuttleFish</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      2,630,638 views
  </span>

                <span class="content-item-time-created" title="3 days ago">
      3 days ago
    </span>

          </div>
        </div>
    </div>
  </div>

          <div class="lohp-shelf-cell-container lohp-category-shelf vve-check " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEYQzR4oAQ">
    

    <div class="lohp-category-shelf-item-list lohp-shelf-size-1">
              <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/user/JPararajasingham" title="J Pararajasingham" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEcQzh4">
        J Pararajasingham
      </a>
  </h2>



        <div class="lohp-category-shelf-item context-data-item first-shelf-item last-shelf-item " data-context-item-user="J Pararajasingham" data-context-item-time="37:49" data-context-item-views="22,351 views" data-context-item-id="HHv__O8wvZI" data-context-item-type="video" data-context-item-title="A Further 50 Renowned Academics Speaking About God (Part 3)">
          
          <a href="/watch?v=HHv__O8wvZI" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEgQzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-165"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/HHv__O8wvZI/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="165" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">37:49</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="HHv__O8wvZI" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEgQzx4oAA"
     href="/watch?v=HHv__O8wvZI"
     title="A Further 50 Renowned Academics Speaking About God (Part 3)">A Further 50 Renowned Academics Speaking About God (Part 3)</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      22,351 views
  </span>

                <span class="content-item-time-created" title="1 day ago">
      1 day ago
    </span>

          </div>
        </div>
    </div>
  </div>

          <div class="lohp-shelf-cell-container lohp-category-shelf vve-check last-shelf-in-line" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEoQzR4oAg">
    

    <div class="lohp-category-shelf-item-list lohp-shelf-size-1">
              <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/user/ANIMATIONonFOX" title="Animation Domination" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEsQzh4">
        Animation Domination
      </a>
  </h2>



        <div class="lohp-category-shelf-item context-data-item first-shelf-item last-shelf-item " data-context-item-user="Animation Domination" data-context-item-time="1:39" data-context-item-views="5,283,212 views" data-context-item-id="PSAOXkf0-oU" data-context-item-type="video" data-context-item-title="&quot;The Hobbit&quot; Couch Gag from &quot;4 Regrettings and A Funeral&quot; | THE SIMPSONS | ANIMATION on FOX">
          
          <a href="/watch?v=PSAOXkf0-oU" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEwQzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-165"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/PSAOXkf0-oU/mqdefault.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="165" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">1:39</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="PSAOXkf0-oU" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
            <a class="lohp-video-link max-line-2 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CEwQzx4oAA"
     href="/watch?v=PSAOXkf0-oU"
     title="&quot;The Hobbit&quot; Couch Gag from &quot;4 Regrettings and A Funeral&quot; | THE SIMPSONS | ANIMATION on FOX">&quot;The Hobbit&quot; Couch Gag from &quot;4 Regrettings and A Funeral&quot; | THE SIMPSONS | ANIMATION on FOX</a>

          <div class="lohp-video-metadata">
              <span class="view-count">
      5,283,212 views
  </span>

                <span class="content-item-time-created" title="4 days ago">
      4 days ago
    </span>

          </div>
        </div>
    </div>
  </div>

  </div>

  </div>



    
        <div class="lohp-vbox-list vve-check lohp-right-vbox-list"
    data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CE4Q1R4oAg">
          <div class="lohp-vertical-shelf vve-check" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CE8QzR4oAA">
    
            <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/channel/HCPvDBPPFfuaM" title="News - Worldwide" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFAQzh4">
        News - Worldwide
      </a>
        <a href="/watch_videos?feature=c4-overview&amp;type=0&amp;title=News+-+Worldwide&amp;more_url=&amp;video_ids=opC39ppcgyg%2CTFi2W0IIcg4%2CsJPhI6QcxPo%2CDEb9VzMHWvk" class="yt-uix-button  shelves-play yt-uix-sessionlink yt-uix-button-default yt-uix-button-size-small" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw"><span class="yt-uix-button-icon-wrapper"><img class="yt-uix-button-icon yt-uix-button-icon-play-all" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></span><span class="yt-uix-button-content">Play </span></a>

  </h2>


      <div class="lohp-vertical-shelf-item context-data-item" data-context-item-user="ITN" data-context-item-time="1:49" data-context-item-views="24,330 views" data-context-item-id="opC39ppcgyg" data-context-item-type="video" data-context-item-title="LAX shooting: LA airport suspect sent suicide text">
        <div class="lohp-media-object ">
          <a href="/watch?v=opC39ppcgyg" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFEQzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-64"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/opC39ppcgyg/default.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="64" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">1:49</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="opC39ppcgyg" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
        </div>
        <div class="lohp-vertical-shelf-item-content lohp-media-object-content">
            <a class="lohp-video-link max-line-3 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFEQzx4oAA"
     href="/watch?v=opC39ppcgyg"
     title="LAX shooting: LA airport suspect sent suicide text">LAX shooting: LA airport suspect sent suicide text</a>

          <div class="lohp-video-metadata attached">
              <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/itnnews" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCME81PohuzT1JMCsEtvsD2w" data-name="">ITN</a>  <span class="yt-user-name-icon-verified">
    <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" class="yt-uix-tooltip yt-channel-title-icon-verified" alt="" title="Verified name">
  </span>

  </span>

          </div>
        </div>
      </div>
      <div class="lohp-vertical-shelf-item context-data-item" data-context-item-user="AFP" data-context-item-time="1:34" data-context-item-views="784 views" data-context-item-id="TFi2W0IIcg4" data-context-item-type="video" data-context-item-title="Kerry vows US backing for Egypt interim rulers">
        <div class="lohp-media-object ">
          <a href="/watch?v=TFi2W0IIcg4" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFMQzx4oAQ">    <span class="video-thumb  yt-thumb yt-thumb-64"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/TFi2W0IIcg4/default.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="64" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">1:34</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="TFi2W0IIcg4" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
        </div>
        <div class="lohp-vertical-shelf-item-content lohp-media-object-content">
            <a class="lohp-video-link max-line-3 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFMQzx4oAQ"
     href="/watch?v=TFi2W0IIcg4"
     title="Kerry vows US backing for Egypt interim rulers">Kerry vows US backing for Egypt interim rulers</a>

          <div class="lohp-video-metadata attached">
              <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/AFP" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UC86dbj-lbDks_hZ5gRKL49Q" data-name="">AFP</a>
  </span>

          </div>
        </div>
      </div>
      <div class="lohp-vertical-shelf-item context-data-item" data-context-item-user="Slooh" data-context-item-time="3:25:41" data-context-item-views="346,248 views" data-context-item-id="sJPhI6QcxPo" data-context-item-type="video" data-context-item-title="Total Solar Eclipse - 11/3/2013">
        <div class="lohp-media-object ">
          <a href="/watch?v=sJPhI6QcxPo" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFUQzx4oAg">    <span class="video-thumb  yt-thumb yt-thumb-64"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/sJPhI6QcxPo/default.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="64" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">3:25:41</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="sJPhI6QcxPo" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
        </div>
        <div class="lohp-vertical-shelf-item-content lohp-media-object-content">
            <a class="lohp-video-link max-line-3 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFUQzx4oAg"
     href="/watch?v=sJPhI6QcxPo"
     title="Total Solar Eclipse - 11/3/2013">Total Solar Eclipse - 11/3/2013</a>

          <div class="lohp-video-metadata attached">
              <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/SloohOnAirVideos" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCZIt_aqvoRCrWifA1Fe9roQ" data-name="">Slooh</a>
  </span>

          </div>
        </div>
      </div>
      <div class="lohp-vertical-shelf-item context-data-item" data-context-item-user="CBSSports" data-context-item-time="2:36" data-context-item-views="234 views" data-context-item-id="DEb9VzMHWvk" data-context-item-type="video" data-context-item-title="Bart Scott: Cowboys&#39; Jason Garrett is not a stern enough leader">
        <div class="lohp-media-object ">
          <a href="/watch?v=DEb9VzMHWvk" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFcQzx4oAw">    <span class="video-thumb  yt-thumb yt-thumb-64"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/DEb9VzMHWvk/default.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="64" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">2:36</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="DEb9VzMHWvk" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
        </div>
        <div class="lohp-vertical-shelf-item-content lohp-media-object-content">
            <a class="lohp-video-link max-line-3 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFcQzx4oAw"
     href="/watch?v=DEb9VzMHWvk"
     title="Bart Scott: Cowboys&#39; Jason Garrett is not a stern enough leader">Bart Scott: Cowboys&#39; Jason Garrett is not a stern enough leader</a>

          <div class="lohp-video-metadata attached">
              <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/CBSSports" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCja8sZ2T4ylIqjggA1Zuukg" data-name="">CBSSports</a>
  </span>

          </div>
        </div>
      </div>
  </div>

          <div class="lohp-vertical-shelf vve-check" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFkQzR4oAQ">
    
            <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/channel/HCp-Rdqh3z4Uc" title="Music" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFoQzh4">
        Music
      </a>
        <a href="/watch_videos?feature=c4-overview&amp;type=0&amp;title=Music&amp;more_url=&amp;video_ids=My2FRPA3Gf8%2CCevxZvSJLk8%2CIcrbM1l_BoI%2CnIsCs9_-LP8" class="yt-uix-button  shelves-play yt-uix-sessionlink yt-uix-button-default yt-uix-button-size-small" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw"><span class="yt-uix-button-icon-wrapper"><img class="yt-uix-button-icon yt-uix-button-icon-play-all" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></span><span class="yt-uix-button-content">Play </span></a>

  </h2>


      <div class="lohp-vertical-shelf-item context-data-item" data-context-item-user="MileyCyrusVEVO" data-context-item-time="3:42" data-context-item-views="287,413,592 views" data-context-item-id="My2FRPA3Gf8" data-context-item-type="video" data-context-item-title="Miley Cyrus - Wrecking Ball">
        <div class="lohp-media-object ">
          <a href="/watch?v=My2FRPA3Gf8" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFsQzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-64"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/My2FRPA3Gf8/default.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="64" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">3:42</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="My2FRPA3Gf8" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
        </div>
        <div class="lohp-vertical-shelf-item-content lohp-media-object-content">
            <a class="lohp-video-link max-line-3 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CFsQzx4oAA"
     href="/watch?v=My2FRPA3Gf8"
     title="Miley Cyrus - Wrecking Ball">Miley Cyrus - Wrecking Ball</a>

          <div class="lohp-video-metadata attached">
              <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/MileyCyrusVEVO" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCdI8evszfZvyAl2UVCypkTA" data-name="">MileyCyrusVEVO</a>  <span class="yt-user-name-icon-verified">
    <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" class="yt-uix-tooltip yt-channel-title-icon-verified" alt="" title="Verified name">
  </span>

  </span>

          </div>
        </div>
      </div>
      <div class="lohp-vertical-shelf-item context-data-item" data-context-item-user="KatyPerryVEVO" data-context-item-time="4:30" data-context-item-views="173,157,769 views" data-context-item-id="CevxZvSJLk8" data-context-item-type="video" data-context-item-title="Katy Perry - Roar (Official)">
        <div class="lohp-media-object ">
          <a href="/watch?v=CevxZvSJLk8" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CF0Qzx4oAQ">    <span class="video-thumb  yt-thumb yt-thumb-64"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/CevxZvSJLk8/default.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="64" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">4:30</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="CevxZvSJLk8" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
        </div>
        <div class="lohp-vertical-shelf-item-content lohp-media-object-content">
            <a class="lohp-video-link max-line-3 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CF0Qzx4oAQ"
     href="/watch?v=CevxZvSJLk8"
     title="Katy Perry - Roar (Official)">Katy Perry - Roar (Official)</a>

          <div class="lohp-video-metadata attached">
              <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/KatyPerryVEVO" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UC-8Q-hLdECwQmaWNwXitYDw" data-name="">KatyPerryVEVO</a>  <span class="yt-user-name-icon-verified">
    <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" class="yt-uix-tooltip yt-channel-title-icon-verified" alt="" title="Verified name">
  </span>

  </span>

          </div>
        </div>
      </div>
      <div class="lohp-vertical-shelf-item context-data-item" data-context-item-user="AviciiOfficialVEVO" data-context-item-time="4:33" data-context-item-views="135,270,116 views" data-context-item-id="IcrbM1l_BoI" data-context-item-type="video" data-context-item-title="Avicii - Wake Me Up (Official Video)">
        <div class="lohp-media-object ">
          <a href="/watch?v=IcrbM1l_BoI" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CF8Qzx4oAg">    <span class="video-thumb  yt-thumb yt-thumb-64"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/IcrbM1l_BoI/default.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="64" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">4:33</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="IcrbM1l_BoI" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
        </div>
        <div class="lohp-vertical-shelf-item-content lohp-media-object-content">
            <a class="lohp-video-link max-line-3 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CF8Qzx4oAg"
     href="/watch?v=IcrbM1l_BoI"
     title="Avicii - Wake Me Up (Official Video)">Avicii - Wake Me Up (Official Video)</a>

          <div class="lohp-video-metadata attached">
              <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/AviciiOfficialVEVO" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UC1SqP7_RfOC9Jf9L_GRHANg" data-name="">AviciiOfficialVEVO</a>  <span class="yt-user-name-icon-verified">
    <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" class="yt-uix-tooltip yt-channel-title-icon-verified" alt="" title="Verified name">
  </span>

  </span>

          </div>
        </div>
      </div>
      <div class="lohp-vertical-shelf-item context-data-item" data-context-item-user="Alain Leroux" data-context-item-time="2:13" data-context-item-views="20,588,479 views" data-context-item-id="nIsCs9_-LP8" data-context-item-type="video" data-context-item-title="Emotional baby! Too cute!">
        <div class="lohp-media-object ">
          <a href="/watch?v=nIsCs9_-LP8" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CGEQzx4oAw">    <span class="video-thumb  yt-thumb yt-thumb-64"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/nIsCs9_-LP8/default.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="64" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">2:13</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="nIsCs9_-LP8" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
        </div>
        <div class="lohp-vertical-shelf-item-content lohp-media-object-content">
            <a class="lohp-video-link max-line-3 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CGEQzx4oAw"
     href="/watch?v=nIsCs9_-LP8"
     title="Emotional baby! Too cute!">Emotional baby! Too cute!</a>

          <div class="lohp-video-metadata attached">
              <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/channel/UCshx7NPA7o8boQJuzOKilGQ" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCshx7NPA7o8boQJuzOKilGQ" data-name="">Alain Leroux</a>
  </span>

          </div>
        </div>
      </div>
  </div>

          <div class="lohp-vertical-shelf vve-check" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CGMQzR4oAg">
    
            <h2 class="branded-page-module-title">

      <a class="yt-uix-sessionlink branded-page-module-title-link spf-nolink" href="/channel/HC4qRk91tndwg" title="Most Popular" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CGQQzh4">
        Most Popular
      </a>
        <a href="/watch_videos?feature=c4-overview&amp;type=0&amp;title=Most+Popular&amp;more_url=&amp;video_ids=umWrUCy_pM4%2CmP2rvge-KmM%2Cp2-_uVy3r1Q%2CgPw8C1fID80" class="yt-uix-button  shelves-play yt-uix-sessionlink yt-uix-button-default yt-uix-button-size-small" data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw"><span class="yt-uix-button-icon-wrapper"><img class="yt-uix-button-icon yt-uix-button-icon-play-all" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></span><span class="yt-uix-button-content">Play </span></a>

  </h2>


      <div class="lohp-vertical-shelf-item context-data-item" data-context-item-user="Alltime10s" data-context-item-time="2:50" data-context-item-views="1,174,176 views" data-context-item-id="umWrUCy_pM4" data-context-item-type="video" data-context-item-title="10 Declassified Call Of Duty Facts">
        <div class="lohp-media-object ">
          <a href="/watch?v=umWrUCy_pM4" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CGUQzx4oAA">    <span class="video-thumb  yt-thumb yt-thumb-64"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/umWrUCy_pM4/default.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="64" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">2:50</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="umWrUCy_pM4" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
        </div>
        <div class="lohp-vertical-shelf-item-content lohp-media-object-content">
            <a class="lohp-video-link max-line-3 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CGUQzx4oAA"
     href="/watch?v=umWrUCy_pM4"
     title="10 Declassified Call Of Duty Facts">10 Declassified Call Of Duty Facts</a>

          <div class="lohp-video-metadata attached">
              <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/alltime10s" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCGi_crMdUZnrcsvkCa8pt-g" data-name="">Alltime10s</a>  <span class="yt-user-name-icon-verified">
    <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" class="yt-uix-tooltip yt-channel-title-icon-verified" alt="" title="Verified name">
  </span>

  </span>

          </div>
        </div>
      </div>
      <div class="lohp-vertical-shelf-item context-data-item" data-context-item-user="SA Wardega" data-context-item-time="2:42" data-context-item-views="3,177,655 views" data-context-item-id="mP2rvge-KmM" data-context-item-type="video" data-context-item-title="Mr. Pumpkin - Halloween (SA Wardega)">
        <div class="lohp-media-object ">
          <a href="/watch?v=mP2rvge-KmM" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CGcQzx4oAQ">    <span class="video-thumb  yt-thumb yt-thumb-64"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/mP2rvge-KmM/default.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="64" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">2:42</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="mP2rvge-KmM" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
        </div>
        <div class="lohp-vertical-shelf-item-content lohp-media-object-content">
            <a class="lohp-video-link max-line-3 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CGcQzx4oAQ"
     href="/watch?v=mP2rvge-KmM"
     title="Mr. Pumpkin - Halloween (SA Wardega)">Mr. Pumpkin - Halloween (SA Wardega)</a>

          <div class="lohp-video-metadata attached">
              <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/wardegasa" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCdZwMpK-iWqCos46xPscDeg" data-name="">SA Wardega</a>
  </span>

          </div>
        </div>
      </div>
      <div class="lohp-vertical-shelf-item context-data-item" data-context-item-user="Zooniversity1" data-context-item-time="1:45" data-context-item-views="418,507 views" data-context-item-id="p2-_uVy3r1Q" data-context-item-type="video" data-context-item-title="Teddy Bear, the Talking Porcupine, LOVES Pumpkin">
        <div class="lohp-media-object ">
          <a href="/watch?v=p2-_uVy3r1Q" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CGkQzx4oAg">    <span class="video-thumb  yt-thumb yt-thumb-64"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/p2-_uVy3r1Q/default.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="64" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">1:45</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="p2-_uVy3r1Q" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
        </div>
        <div class="lohp-vertical-shelf-item-content lohp-media-object-content">
            <a class="lohp-video-link max-line-3 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CGkQzx4oAg"
     href="/watch?v=p2-_uVy3r1Q"
     title="Teddy Bear, the Talking Porcupine, LOVES Pumpkin">Teddy Bear, the Talking Porcupine, LOVES Pumpkin</a>

          <div class="lohp-video-metadata attached">
              <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/user/Zooniversity1" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCG6_vtkcSBdcCHnSFb1zonQ" data-name="">Zooniversity1</a>
  </span>

          </div>
        </div>
      </div>
      <div class="lohp-vertical-shelf-item context-data-item" data-context-item-user="Chris Hadfield" data-context-item-time="2:22" data-context-item-views="942,522 views" data-context-item-id="gPw8C1fID80" data-context-item-type="video" data-context-item-title="An Astronaut&#39;s Guide to Life on Earth">
        <div class="lohp-media-object ">
          <a href="/watch?v=gPw8C1fID80" class="ux-thumb-wrap yt-uix-sessionlink yt-uix-contextlink contains-addto lohp-thumb-wrap"  data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CGsQzx4oAw">    <span class="video-thumb  yt-thumb yt-thumb-64"
      >
      <span class="yt-thumb-default">
        <span class="yt-thumb-clip">
          <span class="yt-thumb-clip-inner">
            <img data-thumb="//i1.ytimg.com/vi/gPw8C1fID80/default.jpg" src="http://s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Thumbnail" width="64" >
            <span class="vertical-align"></span>
          </span>
        </span>
      </span>
    </span>
    <span class="video-time">2:22</span>


  <button class="addto-button video-actions spf-nolink hide-until-delayloaded addto-watch-later-button-sign-in yt-uix-button yt-uix-button-default yt-uix-button-size-small yt-uix-tooltip" type="button" title="Watch Later" onclick=";return false;" data-video-ids="gPw8C1fID80" data-button-menu-id="shared-addto-watch-later-login" role="button"><span class="yt-uix-button-content">  <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Watch Later">
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>
</a>
        </div>
        <div class="lohp-vertical-shelf-item-content lohp-media-object-content">
            <a class="lohp-video-link max-line-3 yt-uix-sessionlink "
     data-sessionlink="feature=g-logo&amp;ei=GeR2UrTbMqjZ8AH1joCYBw&amp;ved=CGsQzx4oAw"
     href="/watch?v=gPw8C1fID80"
     title="An Astronaut&#39;s Guide to Life on Earth">An Astronaut&#39;s Guide to Life on Earth</a>

          <div class="lohp-video-metadata attached">
              <span class="content-uploader spf-nolink">
<span class="username-prepend">by</span> <a href="/channel/UCtGG8ucQgEJPeUPhJZ4M4jA" class="g-hovercard yt-uix-sessionlink yt-user-name " data-sessionlink="ei=GeR2UrTbMqjZ8AH1joCYBw" dir="ltr" data-ytid="UCtGG8ucQgEJPeUPhJZ4M4jA" data-name="">Chris Hadfield</a>  <span class="yt-user-name-icon-verified">
    <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" class="yt-uix-tooltip yt-channel-title-icon-verified" alt="" title="Verified name">
  </span>

  </span>

          </div>
        </div>
      </div>
  </div>

  </div>

  <div style="clear:both;"></div>



    </div>
  <div id="footer-ads">
            


  <div id="ad_creative_3" class="ad-div " style="z-index: 1">
      <iframe id="ad_creative_iframe_3" height="1" width="1" scrolling="no" frameborder="0" style="z-index: 1"></iframe>
        <script>
    (function() {
      function tagMpuIframe() {
            var adIframe = document.getElementById("ad_creative_iframe_3");
            if (!adIframe) {
              return;
            }
            var ord = Math.floor(Math.random() * 10000000000000000);
            adIframe.src = "http://ad.doubleclick.net/N6762/adi/mkt.ythome_1x1/;sz=1x1;tile=3;dc_yt=1;kbsg=HPUS131103;kga=-1;kgg=-1;klg=en;kmyd=ad_creative_3;ytdevice=1;ord=" + ord + "?";
      }

       tagMpuIframe();
    })();
  </script>

  </div>


  </div>

  </div>

      </div>
    </div>
  </div>
</div></div></div></div><div id="footer-container" class="yt-base-gutter"><div id="footer"><div id="footer-main"><div id="footer-logo"><a href="/" title="YouTube home"><img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="YouTube home"></a></div>  <ul class="pickers yt-uix-button-group" data-button-toggle-group="optional">
      <li>
          
  <button class=" yt-uix-button yt-uix-button-default yt-uix-button-size-default yt-uix-button-has-icon" type="button" onclick=";return false;" id="yt-picker-language-button" data-picker-position="footer" data-button-toggle="true" data-picker-key="language" data-button-action="yt.www.picker.load" data-button-menu-id="arrow-display" role="button"><span class="yt-uix-button-icon-wrapper"><img class="yt-uix-button-icon yt-uix-button-icon-footer-language" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></span><span class="yt-uix-button-content">  <span class="yt-picker-button-label">
Language:
  </span>
  English
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>


      </li>
      <li>
          
  <button class=" yt-uix-button yt-uix-button-default yt-uix-button-size-default" type="button" onclick=";return false;" id="yt-picker-country-button" data-picker-position="footer" data-button-toggle="true" data-picker-key="country" data-button-action="yt.www.picker.load" data-button-menu-id="arrow-display" role="button"><span class="yt-uix-button-content">  <span class="yt-picker-button-label">
Country:
  </span>
  Worldwide
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>


      </li>
      <li>
          
  <button class=" yt-uix-button yt-uix-button-default yt-uix-button-size-default" type="button" onclick=";return false;" id="yt-picker-safetymode-button" data-picker-position="footer" data-button-toggle="true" data-picker-key="safetymode" data-button-action="yt.www.picker.load" data-button-menu-id="arrow-display" role="button"><span class="yt-uix-button-content">  <span class="yt-picker-button-label">
Safety:
  </span>
Off
 </span><img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""></button>


      </li>
  </ul>
  <button class="yt-uix-button-reverse yt-google-help-link yt-uix-button yt-uix-button-default yt-uix-button-size-default" type="button" data-ghelp-anchor="google-help" onclick=";return false;" id="google-help"  role="button"><span class="yt-uix-button-content">  <img class="questionmark" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif">
  <span>Help</span>
    <img class="yt-uix-button-arrow" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif">
 </span></button>
      <div id="yt-picker-language-footer"
      class="yt-picker"
      style="display: none"
>
      <p class="yt-spinner">
      <img class="yt-spinner-img" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Loading icon
" title="">

    <span class="yt-spinner-message">
Loading...
    </span>
  </p>

  </div>

      <div id="yt-picker-country-footer"
      class="yt-picker"
      style="display: none"
>
      <p class="yt-spinner">
      <img class="yt-spinner-img" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Loading icon
" title="">

    <span class="yt-spinner-message">
Loading...
    </span>
  </p>

  </div>

      <div id="yt-picker-safetymode-footer"
      class="yt-picker"
      style="display: none"
>
      <p class="yt-spinner">
      <img class="yt-spinner-img" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Loading icon
" title="">

    <span class="yt-spinner-message">
Loading...
    </span>
  </p>

  </div>

</div><div id="footer-links"><ul id="footer-links-primary">  <li><a href="//www.youtube.com/yt/about/">About</a></li>
  <li><a href="//www.youtube.com/yt/press/">Press &amp; Blogs</a></li>
  <li><a href="//www.youtube.com/yt/copyright/">Copyright</a></li>
  <li><a href="//www.youtube.com/yt/creators/">Creators &amp; Partners</a></li>
  <li><a href="//www.youtube.com/yt/advertise/">Advertising</a></li>
  <li><a href="//www.youtube.com/yt/dev/">Developers</a></li>
</ul><ul id="footer-links-secondary">  <li><a href="/t/terms">Terms</a></li>
  <li><a href="http://www.google.com/intl/en/policies/privacy/">Privacy</a></li>
  <li><a href="//www.youtube.com/yt/policyandsafety/">
Policy &amp; Safety
  </a></li>
  <li><a href="//www.google.com/tools/feedback/intl/en/error.html" onclick="return yt.www.feedback.start(59);" class="reportbug">Send feedback</a></li>
  <li><a href="/testtube">Try something new!</a></li>
  <li>  <span class="copyright" dir="ltr">&copy; 2013 YouTube, LLC</span>
</li>
</ul></div></div></div>

      <div class="yt-dialog hid" id="feed-privacy-lb">
    <div class="yt-dialog-base">
      <span class="yt-dialog-align"></span>
      <div class="yt-dialog-fg">
        <div class="yt-dialog-fg-content">
          <div class="yt-dialog-loading">
              <div class="yt-dialog-waiting-content">
    <div class="yt-spinner-img"></div><div class="yt-dialog-waiting-text">Loading...</div>
  </div>

          </div>
          <div class="yt-dialog-content">
              <div id="feed-privacy-dialog">
  </div>

          </div>
          <div class="yt-dialog-working">
              <div id="yt-dialog-working-overlay">
  </div>
  <div id="yt-dialog-working-bubble">
    <div class="yt-dialog-waiting-content">
      <div class="yt-spinner-img"></div><div class="yt-dialog-waiting-text">Working...</div>
    </div>
  </div>

          </div>
        </div>
      </div>
    </div>
  </div>



    <div id="shared-addto-watch-later-login" class="hid">
      <a href="https://accounts.google.com/ServiceLogin?passive=true&continue=http%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26app%3Ddesktop%26feature%3Dplaylist%26hl%3Den%26next%3D%252F&hl=en&uilel=3&service=youtube" class="sign-in-link">Sign in</a> to add this to Watch Later

    </div>

  <div id="shared-addto-menu" style="display: none;" class="hid sign-in">
      <div class="addto-menu">
        <div id="addto-list-panel" class="menu-panel active-panel">
          <span class="addto-playlist-item yt-uix-button-menu-item yt-uix-tooltip sign-in"
        data-possible-tooltip=""
        data-tooltip-show-delay="750"



>
<img class="playlist-status" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="" title=""><a href="https://accounts.google.com/ServiceLogin?passive=true&continue=http%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26app%3Ddesktop%26feature%3Dplaylist%26hl%3Den%26next%3D%252F&hl=en&uilel=3&service=youtube" class="sign-in-link">Sign in</a> to add this to Watch Later
  </span>


  </div>
  <div id="addto-list-saving-panel" class="menu-panel">
    <div class="addto-loading loading-content">
        <p class="yt-spinner">
      <img class="yt-spinner-img" src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif" alt="Loading icon
" title="">

    <span class="yt-spinner-message">
        Loading playlists...
    </span>
  </p>

    </div>
  </div>
  <div id="addto-list-error-panel" class="menu-panel">
    <div class="panel-content">
      <img src="//s.ytimg.com/yts/img/pixel-vfl3z5WfW.gif">
      <span class="error-details"></span>
      <a class="show-menu-link">Back</a>
    </div>
  </div>

  </div>

  </div>
<script>if (window.ytcsi) {window.ytcsi.tick("hr", null, '');}</script><script>var ytspf = ytspf || {};ytspf.enabled = false;</script>  <script id="js-4278791972" class="spf" src="//s.ytimg.com/yts/jsbin/spf-vflDzGPd7.js" data-loaded="true"></script>
  <script id="js-3886384853" class="www_base_mod" src="//s.ytimg.com/yts/jsbin/www-vflUs0WxM/www_base_mod.js" data-loaded="true"></script>
<script>if (window.ytcsi) {window.ytcsi.tick("je", null, '');}</script>    <script>
  </script>




  <script>
      yt.setAjaxToken('feed_change_ajax', "8hOGMjO5WwU-jEFB9gl3jpF5DJJ8MTM4MzYwOTc1NEAxMzgzNTIzMzU0");

      yt.setConfig({
        'MASTHEAD_ENCRYPTED_ID': "_XPiRO5ECA4",
        'MASTHEAD_IS_BRANDED': true
      });







    yt.setConfig('JS_PAGE_MODULES', {
      "\/\/s.ytimg.com\/yts\/jsbin\/www-vflUs0WxM\/www_feed_mod.js": []
    });
  </script>


  <script>
      yt.setConfig({
        'GUIDE_SELECTED_ITEM': "HCtnHdj3df7iM"
      });
  </script>
<script>yt.setConfig({'EVENT_ID': "GeR2UrTbMqjZ8AH1joCYBw",'PAGE_NAME': "index",'LOGGED_IN': false,'SESSION_INDEX': null,'DELEGATED_SESSION_ID': null,'GAPI_HOST': "https:\/\/apis.google.com",'GAPI_HINT_PARAMS': "m;\/_\/scs\/abc-static\/_\/js\/k=gapi.gapi.en.m6tSbhdDLmw.O\/m=__features__\/rt=j\/d=1\/rs=AItRSTME_Ha2FhX9c0yBsElqKy-XzbRdqw",'GAPI_LOCALE': "en_US",'GOOGLEPLUS_HOST': "https:\/\/plus.google.com",'PAGEFRAME_JS': "\/\/s.ytimg.com\/yts\/jsbin\/www-pageframe-vfl82-_Lq.js",'JS_COMMON_MODULE': "\/\/s.ytimg.com\/yts\/jsbin\/www-vflUs0WxM\/www_common_mod.js",'PAGE_FRAME_DELAYLOADED_CSS': "http:\/\/s.ytimg.com\/yts\/cssbin\/www-pageframedelayloaded-vflMpNKEi.css",'SAFETY_MODE_PENDING': false,'LOCAL_DATE_TIME_CONFIG': {"shortMonths": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"], "months": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], "weekdays": ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"], "formatLongDateOnly": "MMMM d, yyyy", "formatLongDate": "MMMM d, yyyy h:mm a", "formatShortDate": "MMM d, yyyy", "formatWeekdayShortTime": "EE h:mm a", "amPms": ["AM", "PM"], "shortWeekdays": ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]},'PAGE_CL': 55893258,'PAGE_BUILD_TIMESTAMP': "Wed Oct 30 17:38:08 2013 (1383179888)",'UNIVERSAL_HOVERCARDS': true,'FEEDBACK_BUCKET_ID': "Home",'FEEDBACK_LOCALE_LANGUAGE': "en",'FEEDBACK_LOCALE_EXTRAS': {"logged_in": false, "accept_language": null, "guide_subs": "NA", "is_partner": "", "is_branded": "", "experiments": "900356,936100,924616,929147,929148,925724,936401,906945,929935,929939,939602,939604,936317,938804,912715,919811,935704,931943,911504,920607,913563,901812,934003,934004,938608,940501,934803,936308,924414,924416,939201,900816,916304,902560,934507,907231,907240,936312,906001"}});yt.setMsg({'ADDTO_WATCH_LATER': "Watch Later",'ADDTO_WATCH_LATER_ADDED': "Added",'ADDTO_WATCH_LATER_ERROR': "Error"});yt.setAjaxToken('addto_ajax_logged_out', "RCR-_v0HCRL2uYle1sh4Q8z7IoN8MTM4MzYwOTc1NEAxMzgzNTIzMzU0");  yt.setConfig('FEED_PRIVACY_CSS_URL', "http:\/\/s.ytimg.com\/yts\/cssbin\/www-feedprivacydialog-vflr76iRw.css");
  yt.setAjaxToken('feed_privacy_ajax', "O7i31jAgMA5nbJ9qNFwNjs9nBe18MTM4MzYwOTc1NEAxMzgzNTIzMzU0");
    yt.setConfig('FEED_PRIVACY_LIGHTBOX_ENABLED', true);
yt.setConfig({'SBOX_JS_URL': "\/\/s.ytimg.com\/yts\/jsbin\/www-searchbox-vflf_DO-I.js",'SBOX_SETTINGS': {"PSUGGEST_TOKEN": null, "REQUEST_LANGUAGE": "en", "HAS_ON_SCREEN_KEYBOARD": false, "REQUEST_DOMAIN": "us", "USE_HTTPS": false, "SESSION_INDEX": null, "EXPERIMENT_ID": -1},'SBOX_LABELS': {"VIEW_CHANNEL_LABEL": "View channel", "WATCH_NOW_LABEL": "Watch now", "SUGGESTION_DISMISS_LABEL": "Dismiss", "SUGGESTION_DISMISSED_LABEL": "Suggestion dismissed"}});  yt.setConfig({
    'YPC_LOADER_ENABLED': true,
    'YPC_LOADER_CONFIGS': "\/ypc_config_ajax",
    'YPC_LOADER_JS': "\/\/s.ytimg.com\/yts\/jsbin\/www-ypc-vflm_afBa.js",
    'YPC_LOADER_CSS': "http:\/\/s.ytimg.com\/yts\/cssbin\/www-ypc-vfl7OlCUa.css",
    'YPC_LOADER_CALLBACKS': ['yt.www.ypc.checkout.init', 'yt.www.ypc.subscription.init']
  });
  yt.setConfig('GOOGLE_HELP_CONTEXT', "homepage");
</script>    <script>
ytcsi.span('st', 177);yt.setConfig({'TIMING_ACTION': "glo",'TIMING_INFO': {"yt_spf": 0, "yt_li": 0, "ei": "GeR2UrTbMqjZ8AH1joCYBw", "yt_lt": "cold", "e": "900356,936100"}});    </script>
<script>yt.setConfig({'XSRF_TOKEN': "J0BQoZIbWDjAPRsGHsqg7Eoy34h8MTM4MzYwOTc1M0AxMzgzNTIzMzUz",'XSRF_REDIRECT_TOKEN': "z59simZhzstG-kqrIOGDiTRraT18MTM4MzYwOTc1NEAxMzgzNTIzMzU0",'XSRF_FIELD_NAME': "session_token"});</script><script>yt.setConfig('THUMB_DELAY_LOAD_BUFFER', 300);</script><script>if (window.ytcsi) {window.ytcsi.tick("jl", null, '');}</script>  <div id="debug"></div>
</body></html>
