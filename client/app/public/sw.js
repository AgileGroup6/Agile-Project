self.addEventListener('install', event => {
    event.waitUntil(
      caches.open('v1').then(cache => {
        return cache.addAll([
          '/',
          '/index.html',
          '../src/assets/TLGL.png',
          // Add other assets you want to cache here
        ]);
      })
    );
  });
  
  self.addEventListener('fetch', event => {
    console.log("called fetch");
    event.respondWith(
      caches.match(event.request).then(response => {
        return response || fetch(event.request);
      })
    );
  });