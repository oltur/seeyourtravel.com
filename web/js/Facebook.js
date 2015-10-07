  window.fbAsyncInit = function() {
      FB.init({
          appId: '1475574289425791',
          xfbml      : true,
          version    : 'v2.4'
      });
  };

(function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

function fblogout() {
    if (typeof FB === "undefined") {
        setTimeout(function () { fblogout(); }, 300); // Retry after timeout
        return false;
    } else {
        FB.getLoginStatus(function (response) {
            try {
                FB.logout(function (response) {
                    window.location = "login.aspx";
                });
            }
            catch (err) { }
            window.location = "login.aspx";
        });
    }
}