export function domainToLongName(domain: string): string {
  switch (domain) {
    case "atc":
      return "ATC";
    case "cabin":
      return "Cabin";
    case "pilot":
      return "Pilot";
    default:
      return domain;
  }
}
