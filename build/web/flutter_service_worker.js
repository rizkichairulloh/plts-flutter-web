'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "b6aabc0667fb31bf4b961ed91fa55393",
"/": "b6aabc0667fb31bf4b961ed91fa55393",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"version.json": "8ed2d7a6a50cefaf0bb6f2e8df10b03f",
"favicon.ico": "8d5f8b686485574eac65190cf3552025",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "7ac5e3f474538148fc926457fe70556a",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"assets/AssetManifest.json": "16e2eaa75dac9e9377e0470782e695ed",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/NOTICES": "7f922e5851c98c203f0bce63d254f37d",
"assets/assets/pdf/R3.pdf": "6f578924dca923357f7f84ec69d3506e",
"assets/assets/pdf/P15.pdf": "3371169103a68aec9795f1de54f52986",
"assets/assets/pdf/R6.pdf": "8b4c13116fdd842de04fbb1cc18fe745",
"assets/assets/pdf/R1.pdf": "90db515f0ffe4cd9c19ef98e81533d30",
"assets/assets/pdf/P14.pdf": "4dbb87036cb24b8a50cd9b11ecc86324",
"assets/assets/pdf/P16.pdf": "3048d19e832ee79709e13b061557c6f7",
"assets/assets/pdf/P10.pdf": "abeb8c1533e0deccb76f2a907bb69cc2",
"assets/assets/pdf/B2.pdf": "02b6b8e78a44f4677cce82bdcd5dac8b",
"assets/assets/pdf/P7.pdf": "a28a2274ab4172b3039310886f342007",
"assets/assets/pdf/B6.pdf": "4350e89a7c3f28de0ae115660664d326",
"assets/assets/pdf/P5.pdf": "bb4f07bf9f57af87cee21a8abe738802",
"assets/assets/pdf/B9.pdf": "493a623a077ea9746f59223fc8d6c885",
"assets/assets/pdf/B4.pdf": "a0e0159b8665f9240aa8b4c78a5a25e2",
"assets/assets/pdf/P19.pdf": "2f1a2ba584d48628997f614e1a2361d8",
"assets/assets/pdf/P13.pdf": "803f668e7578e4aeefc3f8fb2b13fd37",
"assets/assets/pdf/R4.pdf": "0b998d41c26b1c632d2c36e787ec37e9",
"assets/assets/pdf/B1.pdf": "5e266cc5d8d63e400b2b1befb24914e0",
"assets/assets/pdf/P4.pdf": "253619f9b03be551a99150134c4be47f",
"assets/assets/pdf/B13.pdf": "52b0f694919c5d69b372787bd77dfb3b",
"assets/assets/pdf/B5.pdf": "fd3cb51ff3e56ccf0de657bbea13a195",
"assets/assets/pdf/P6.pdf": "0d2e77ad457ffc1af9d69e645fb0e98c",
"assets/assets/pdf/P12.pdf": "6342b61411ae2822f858b80eec9dbaeb",
"assets/assets/pdf/R2.pdf": "767b9614f998a5384cbddf26c3b9edb3",
"assets/assets/pdf/P17.pdf": "e003718108a846c69bd857bcbe63cc28",
"assets/assets/pdf/B8.pdf": "d5d25615acdcae4b1453839d15fba65e",
"assets/assets/pdf/P18.pdf": "d582d25e5295c39562342503f0758e78",
"assets/assets/pdf/B12.pdf": "191924cd5f7b6e421e5659b3a584e681",
"assets/assets/pdf/B14.pdf": "23af273433d53cd693b56f15e977b6d6",
"assets/assets/pdf/I1.pdf": "c57331eca64d5b3d98c653d61cc8c3bf",
"assets/assets/pdf/R10.pdf": "bea0b59ae25aeddd56f58b1aaf5dab3f",
"assets/assets/pdf/I3.pdf": "62435bf8ab9f22841db079efb13aa8d7",
"assets/assets/pdf/P11.pdf": "ebb640226040f45e12799363738ad04c",
"assets/assets/pdf/P9.pdf": "eb3c48be01b2fb9e21f3e9cddf8618d4",
"assets/assets/pdf/P8.pdf": "bc343d78bbf8f5b7ac15da9be2397392",
"assets/assets/pdf/R7.pdf": "572103c8f4a834f2cba2e57015657016",
"assets/assets/pdf/I2.pdf": "125d982c957add561a75579dead4d18b",
"assets/assets/pdf/I5.pdf": "315737c566f8107e12dda9ef8f0e5dca",
"assets/assets/pdf/B11.pdf": "174a501c23dd51cf0f5d2f265d879e2b",
"assets/assets/pdf/R8.pdf": "e45dc46c29a3257e839704a7cff515d4",
"assets/assets/pdf/I7.pdf": "249276e506f919d055faa90dc9520bd6",
"assets/assets/pdf/R5.pdf": "090c567f8b95f5015b4cb22784fd8c53",
"assets/assets/pdf/I4.pdf": "d10b3002b9e1af89e636e90c42fff179",
"assets/assets/pdf/I6.pdf": "313e034c9f17413611226283f573c165",
"assets/assets/pdf/B10.pdf": "3279a31d2ae79c62caae0502c9c4c4d2",
"assets/assets/pdf/P2.pdf": "fbaff52c9a498c797782376440661c8f",
"assets/assets/pdf/B3.pdf": "88e176b7c1e043f006303337d67823db",
"assets/assets/pdf/P3.pdf": "75ebf5c25fbefb972922d84b100719a3",
"assets/assets/pdf/P1.pdf": "afddb97f1cb5cb8178004f81d756ffd8",
"assets/assets/pdf/R9.pdf": "bcffefccdb01938d18f79e59caff3166",
"assets/assets/pdf/B7.pdf": "5d0ff34b34e796d79a2ca0fbf8788231",
"assets/assets/fonts/WorkSans-Medium.ttf": "38263ba46663a666f7730f69e804b028",
"assets/assets/fonts/WorkSans-Regular.ttf": "6f916ce8ada5d5facf5ad4e1266a486d",
"assets/assets/fonts/WorkSans-Bold.ttf": "a0bf66dd6fc75494a0a51f7662a99c41",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/shaders/ink_sparkle.frag": "1a048047908373f20ee798f20a5d4fbc",
"assets/FontManifest.json": "a26a3aa7e407a02409679d3cef09b6f7",
"main.dart.js": "c8c07b60935f1e82f9cb38500cda8fdf"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
