module.exports = {
  reactStrictMode: true,
  experimental: {
    transpilePackages: ["ui"],
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
