const JobDetails:
  | (
      | {
          id: number;
          container: string;
          title: string;
          image: StaticImageData;
          timeago?: undefined;
        }
      | {
          id: number;
          container: string;
          title: string;
          timeago: string;
          image: StaticImageData;
        }
    )[]
  | undefined;
