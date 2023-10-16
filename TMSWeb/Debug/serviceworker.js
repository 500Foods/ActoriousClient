var CACHE_NAME = "ActoriousClient";
var CACHED_URLS = [
  "ActoriousClient.html",
  "ActoriousClient.css",
  "ActoriousClient.js",
  "favicon-64x64.png",
  "iconx/android-144x144.png",
  "iconx/android-192x192.png",
  "iconx/android-36x36.png",
  "iconx/android-48x48.png",
  "iconx/android-72x72.png",
  "iconx/android-96x96.png",
  "iconx/android-chrome-192x192.png",
  "iconx/android-chrome-512x512.png",
  "iconx/android-chrome-maskable-192x192.png",
  "iconx/android-chrome-maskable-512x512.png",
  "iconx/apple-touch-icon.png",
  "iconx/apple-touch-icon-120x120.png",
  "iconx/apple-touch-icon-152x152.png",
  "iconx/apple-touch-icon-167x167.png",
  "iconx/apple-touch-icon-60x60.png",
  "iconx/apple-touch-icon-76x76.png",
  "iconx/coast-228x228.png",
  "iconx/favicon.ico",
  "iconx/favicon-128x128.png",
  "iconx/favicon-16x16.png",
  "iconx/favicon-256x256.png",
  "iconx/favicon-32x32.png",
  "iconx/favicon-48x48.png",
  "iconx/favicon-64x64.png",
  "iconx/favicon-96x96.png",
  "iconx/icon.png",
  "iconx/icon-background.png",
  "iconx/icon-foreground.png",
  "iconx/msapplication-icon-144x144.png",
  "iconx/mstile-144x144.png",
  "iconx/mstile-150x150.png",
  "iconx/splash.png",
  "iconx/tile150x150.png",
  "iconx/tile310x150.png",
  "iconx/tile310x310.png",
  "iconx/tile70x70.png",
  "img/actorious.png",
  "img/actorious_logo.png",
  "img/blank.png",
  "img/coffee_promo.png",
  "img/dark_space.png",
  "img/facebook_icon.png",
  "img/google_icon.png",
  "img/hourglass.png",
  "img/imdb_icon.png",
  "img/instagram_icon.png",
  "img/metacritic_icon.png",
  "img/models_icon.png",
  "img/movie-placeholder.png",
  "img/person-placeholder.png",
  "img/pizza_promo.png",
  "img/pizza_promo_icon.png",
  "img/rottentomatoes_icon.png",
  "img/tmdb.svg",
  "img/tmdb_icon.svg",
  "img/tv-placeholder.png",
  "img/twitter_icon.png",
  "img/web_icon.png",
  "img/wikidata.png",
  "img/wikidata_icon.png",
  "img/wikidata_logo.png",
  "img/wikipedia_icon.png",
  "Manifest.json",
  "splashscreens/10.2__iPad_landscape.png",
  "splashscreens/10.2__iPad_portrait.png",
  "splashscreens/10.5__iPad_Air_landscape.png",
  "splashscreens/10.5__iPad_Air_portrait.png",
  "splashscreens/11__iPad_Pro__10.5__iPad_Pro_landscape.png",
  "splashscreens/11__iPad_Pro__10.5__iPad_Pro_portrait.png",
  "splashscreens/12.9__iPad_Pro_landscape.png",
  "splashscreens/12.9__iPad_Pro_portrait.png",
  "splashscreens/4__iPhone_SE__iPod_touch_5th_generation_and_later_landscape.png",
  "splashscreens/4__iPhone_SE__iPod_touch_5th_generation_and_later_portrait.png",
  "splashscreens/9.7__iPad_Pro__7.9__iPad_mini__9.7__iPad_Air__9.7__iPad_landscape.png",
  "splashscreens/9.7__iPad_Pro__7.9__iPad_mini__9.7__iPad_Air__9.7__iPad_portrait.png",
  "splashscreens/icon.png",
  "splashscreens/ipad_splash.png",
  "splashscreens/ipadpro1_splash.png",
  "splashscreens/ipadpro2_splash.png",
  "splashscreens/ipadpro3_splash.png",
  "splashscreens/iPhone_11__iPhone_XR_landscape.png",
  "splashscreens/iPhone_11__iPhone_XR_portrait.png",
  "splashscreens/iPhone_11_Pro_Max__iPhone_XS_Max_landscape.png",
  "splashscreens/iPhone_11_Pro_Max__iPhone_XS_Max_portrait.png",
  "splashscreens/iPhone_13_mini__iPhone_12_mini__iPhone_11_Pro__iPhone_XS__iPhone_X_landscape.png",
  "splashscreens/iPhone_13_mini__iPhone_12_mini__iPhone_11_Pro__iPhone_XS__iPhone_X_portrait.png",
  "splashscreens/iPhone_13_Pro__iPhone_13__iPhone_12_Pro__iPhone_12_landscape.png",
  "splashscreens/iPhone_13_Pro__iPhone_13__iPhone_12_Pro__iPhone_12_portrait.png",
  "splashscreens/iPhone_13_Pro_Max__iPhone_12_Pro_Max_landscape.png",
  "splashscreens/iPhone_13_Pro_Max__iPhone_12_Pro_Max_portrait.png",
  "splashscreens/iPhone_8__iPhone_7__iPhone_6s__iPhone_6__4.7__iPhone_SE_landscape.png",
  "splashscreens/iPhone_8__iPhone_7__iPhone_6s__iPhone_6__4.7__iPhone_SE_portrait.png",
  "splashscreens/iPhone_8_Plus__iPhone_7_Plus__iPhone_6s_Plus__iPhone_6_Plus_landscape.png",
  "splashscreens/iPhone_8_Plus__iPhone_7_Plus__iPhone_6s_Plus__iPhone_6_Plus_portrait.png",
  "splashscreens/iphone5_splash.png",
  "splashscreens/iphone6_splash.png",
  "splashscreens/iphoneplus_splash.png",
  "splashscreens/iphonex_splash.png",
  "splashscreens/iphonexr_splash.png",
  "splashscreens/iphonexsmax_splash.png"
  ];

self.addEventListener('install', function(event) {
                event.waitUntil(
                                caches.open(CACHE_NAME).then(function(cache) {
                                return cache.addAll(CACHED_URLS);
                })
                                );
});


self.addEventListener('fetch',function(event) {
   event.respondWith(
     fetch(event.request).catch(function() {
                   return caches.match(event.request).then(function(response) {
       if (response) {
                                   return response;
       } else if (event.request.headers.get("accept").includes("text/html")) {
                                   return caches.match("ActoriousClient.html");
                   }
                   });
   })
                   );
});