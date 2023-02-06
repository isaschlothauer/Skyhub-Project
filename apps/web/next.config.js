const securityHeaders = [];

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
