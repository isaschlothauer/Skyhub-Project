// const temp = (
//   <>
//     <div
//       className={
//         "flex flex-wrap"
//       } /* style="position: relative; z-index: 5; display: none;" */
//     >
//       <div className={"md:w-full pr-4 pl-4"}>
//         <div id={styles["offers-filter"]}>
//           <div className={"flex flex-wrap"}>
//             <div className={"md:w-3/4 pr-4 pl-4"}>
//               <div className={styles["sky-select"]}>
//                 <div className={styles["sky-select-content"]}>
//                   <label className={styles["sky-select-label"]}>
//                     Fow what position are you looking for?
//                   </label>
//                   <select>
//                     <option value="1">Hejo</option>
//                     <option value="2">Hejo 2</option>
//                     <option value="3">Hejo 3</option>
//                     <option value="4">Hejo 4</option>
//                     <option value="5">Hejo 5</option>
//                   </select>
//                   <div className={styles["sky-select-help"]}></div>
//                 </div>
//               </div>
//             </div>
//             <div className={"md:w-1/4 pr-4 pl-4"}>
//               <button
//                 type="submit"
//                 className={`${"btn"} ${"btn-lg"} ${"btn-pink"} ${"btn-full-width"} ${"btn-rounded"}`}
//               >
//                 Search
//               </button>
//             </div>
//           </div>
//         </div>
//       </div>
//     </div>
//   </>

// );
export default function File() {
  return <div></div>;
}

/* 


  const [imagesrc, setImagesrc] = useState(); //WTF

  /*  const imageSources = axios
  .all(
    airlineNames.map((airline) =>
      axios.get(`http://localhost:5000/images?airline=${airline}`)
    )
  )
  .then((result) =>
    result.map((res) => {
      imageSourcesArray.push(res.data);
      console.log("image source as supposed to", res.data);
    })
  );

const imageSourcesArray: Array<[]> = [];
// console.log("image source array crap", imageSourcesArray);

const apiUrlImages = "http://localhost:5080/static";

const mainImage =
  imageSources[0] != null
    ? apiUrlImages.concat(imageSources[0].source)
    : undefined;
// console.log("The images string path/source:", mainImage);

*/

/*

FILTER OPTION FOR JOB OFFERS:

     <div
          className={
            "flex flex-row space-x-4 justify-around items-center px-10 mx-auto h-32 rounded-[33px] bg-white mb-[60px] mt-[20px] shadow-main"
          }
        >
          <select
            className={styles.Select}
            value={selectJobType}
            onChange={handleSelectedJobType}
          >
            <option value="">job type</option>
            {jobType.toString().split(", ").map((job) => (
              <option
                value={job}
                // key={jobType ? jobType.get(job.id) : undefined}
              >
                {job}
              </option>
            ))}
          </select>
        </div>
*/

{/* 


  const [selectJobType, setSelectJobType] = useState<string>("");
  const handleSelectedJobType = (
    e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>
  ) => {
    const regex = /^[a-z A-Z0-9_.-]*$/g;
    const input = e.target;
    if (input.value.match(regex)) {
      setSelectJobType(e.target.value);
    }
  };

*/}
