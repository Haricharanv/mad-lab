var mycache = "mycache";
var assests = ["/", "/myfirst.html", "/js/start.js", "/sw.js", "/manifest.json"];
self.addEventListener('install', event => {
    event.waitUntil(caches.open(mycache).then(cache => cache.addAll(assests)));
});
self.addEventListener('fetch', event => {
    event.respondWith(caches.match(event.request).then(res => res || fetch(event.request)));
});
