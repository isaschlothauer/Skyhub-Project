const ContentSecurityPolicy = `
  font-src *; 
`;

const securityHeaders = [
  {
    key: "X-DNS-Prefetch-Control", //This header controls DNS prefetching, allowing browsers to proactively perform domain name resolution on external links, images, CSS, JavaScript, and more. This prefetching is performed in the background, so the DNS is more likely to be resolved by the time the referenced items are needed. This reduces latency when the user clicks a link.
    value: "on",
  },
  {
    key: "Strict-Transport-Security", //This header informs browsers it should only be accessed using HTTPS, instead of using HTTP. Using the configuration below, all present and future subdomains will use HTTPS for a max-age of 2 years. This blocks access to pages or subdomains that can only be served over HTTP.
    value: "max-age=63072000; includeSubDomains; preload",
  },
  {
    key: "X-XSS-Protection", //This header stops pages from loading when they detect reflected cross-site scripting (XSS) attacks.
    value: "1; mode=block",
  },
  {
    key: "X-Frame-Options", //This header indicates whether the site should be allowed to be displayed within an iframe.
    value: "SAMEORIGIN",
  },
  {
    key: "Permissions-Policy", //This header allows you to control which features and APIs can be used in the browser.
    value: "camera=(), microphone=(), geolocation=(), browsing-topics=()",
  },
  {
    key: "X-Content-Type-Options", //This header prevents the browser from attempting to guess the type of content if the Content-Type header is not explicitly set. This can prevent XSS exploits for websites that allow users to upload and share files.
    value: "nosniff",
  },
  {
    key: "Referrer-Policy", //This header controls how much information the browser includes when navigating from the current website (origin) to another.
    value: "origin-when-cross-origin",
  },
  {
    key: "Content-Security-Policy",
    value: ContentSecurityPolicy.replace(/\s{2,}/g, " ").trim(),
  },
];

module.exports = {
  reactStrictMode: true,
  experimental: {
    transpilePackages: ["ui"],
  },

  async headers() {
    return [
      {
        source: "/:path*",
        headers: securityHeaders,
      },
    ];
  },
  images: {
    remotePatterns: [
      {
        protocol: "https",
        hostname: "pilot.skyhub.staging.d-a-pfeiffer.info",
      },
      {
        protocol: "http",
        hostname: "localhost",
      },
    ],
  },
};
